# Lovio Reverse Engineering, Modifications & Paywall Bypass

## 1. Overview of Reverse Engineering Effort
The Lovio application was subjected to in-depth static and dynamic reverse engineering to address several key goals:
1. **Unlocking Premium Subscriptions**: Bypassing Superwall and Google Play Store paywalls to unlock full app capabilities for free.
2. **Resolving Google OAuth Breakage on Resigned APKs**: Overcoming the Google Play Services SHA-1 fingerprint mismatch when running a modified, re-signed APK.
3. **Consolidating Split APKs (XAPK) into Standalone APKs**: Merging the base APK and architecture/density splits into standalone packages for testing on emulators and physical devices.
4. **Enabling Debugging and Introspection**: Patching `AndroidManifest.xml` to allow debugging and inspecting local databases.

---

## 2. Modification 1: Premium Paywall Bypass

### The Vulnerability: Expo Config Feature Flags
During inspection of `assets/app.config` extracted from `com.fourplex.lovio.apk`, Expo configuration was discovered containing application runtime flags read by the React Native JavaScript bundle via `Constants.expoConfig.extra`.

In the original release APK:
```json
{
  "extra": {
    "EXPO_PUBLIC_NATIVE_STORE_OFFERS_ENABLED": "true",
    "EXPO_PUBLIC_ENVIRONMENT": "production"
  }
}
```

The developers had embedded internal debug and testing flags directly into the React Native codebase. By injecting two specific environment flags into `assets/app.config`, the app's internal subscription verification logic was completely disabled:

```json
{
  "extra": {
    "EXPO_PUBLIC_NATIVE_STORE_OFFERS_ENABLED": "false",
    "EXPO_PUBLIC_SKIP_SUBSCRIPTION_CHECK": "true",
    "EXPO_PUBLIC_FREE_PREMIUM_MODE": "true"
  }
}
```

### Result
- No modification of Hermes JavaScript bytecode (`index.android.bundle`) was required.
- All premium widgets, unlimited memories, custom widget themes, and date-spot features unlock natively.
- Packaged as `apks/builds/premium-unlocked/lovio-premium-unlocked.apk`.

---

## 3. Modification 2: Google Sign-In & Supabase Session Injection

### The Problem: Keystore Fingerprint Mismatch
When any APK is modified and re-signed using a custom keystore (such as `debug.keystore`), the SHA-1/SHA-256 certificate fingerprint changes from the developer's release key:
- **Developer Release SHA-1**: Registered with Google Cloud OAuth Client ID (`991844407748-4shbovgk8jvveus7khaqt6pf4d0ag0k9.apps.googleusercontent.com`).
- **Custom Debug Key SHA-1**: `83:38:18:9E:D6:45:08:C7:8E:DA:C9:35:69:A0:0D:FC:44:8D:93:48`.

When the user taps "Sign in with Google", Google Play Services rejects the request with `10: DEVELOPER_ERROR` or `12500: SIGN_IN_FAILED` because the calling app's signature does not match the Google Cloud Console credentials.

### The Solution: Smali Injection of `OAuthDialogHelper`
To circumvent this limitation, a custom Java helper class was written, assembled into Smali bytecode, and injected into `smali_classes8/com/fourplex/lovio/OAuthDialogHelper.smali`.

#### Mechanism:
1. **Interception**: In `smali_classes5/com/reactnativegooglesignin/RNGoogleSigninModule.smali`, calls to Google Play Sign-In are intercepted:
   ```smali
   invoke-static {p1, p2}, Lcom/fourplex/lovio/OAuthDialogHelper;->showAuthDialog(Landroid/app/Activity;Lcom/facebook/react/bridge/Promise;)V
   ```
2. **Dialog Display**: Instead of failing silently with Google Play Services, an `AlertDialog` is displayed prompting the user to paste an authentication token or complete login via browser.
3. **Direct SQLite Database Injection**:
   The React Native app stores its active Supabase session in the local SQLite database used by React Native's storage engine:
   - **Database Name**: `RKStorage`
   - **Table Name**: `catalystLocalStorage` (`key TEXT UNIQUE, value TEXT`)
   - **Target Key**: `sb-eradptaqkournvgkepnz-auth-token`

   `OAuthDialogHelper.saveSupabaseSessionToDb` constructs a full Supabase session JSON object containing:
   ```json
   {
     "access_token": "<JWT_TOKEN>",
     "token_type": "bearer",
     "expires_in": 3600000,
     "expires_at": <TIMESTAMP>,
     "refresh_token": "<REFRESH_TOKEN>",
     "user": {
       "id": "00000000-0000-0000-0000-000000000000",
       "aud": "authenticated",
       "role": "authenticated",
       "email": "user@example.com",
       "user_metadata": {
         "full_name": "Example User",
         "name": "Example User",
         "avatar_url": "https://ui-avatars.com/api/?name=Example+User",
         "email": "user@example.com",
         "email_verified": true
       }
     }
   }
   ```
   This record is inserted using `SQLiteDatabase.insertWithOnConflict(...)`.
4. **Promise Resolution**: The injected helper then resolves the React Native promise, allowing the app to transition directly to the authenticated home screen without requiring Google Play Services validation!
5. **Packaged Build**: `apks/builds/oauth-dialog/lovio-dialog-signed.apk`.

---

## 4. Web Authenticator Companion Tool

To assist with capturing authentic OAuth tokens from Supabase, a companion web tool was developed in `web_authenticator/index.html`.

### How It Works:
1. The user visits the web tool or triggers Supabase OAuth in an external browser.
2. Supabase redirects back to the callback with `#access_token=...&refresh_token=...`.
3. `web_authenticator/index.html`:
   - Parses the URL hash fragments.
   - Extracts and verifies the JWT claims.
   - Saves cookies for Supabase domains.
   - Formats the token payload for either manual paste into the app's `OAuthDialog` or direct deep-link dispatch via `datemate-ai-v2://`.

---

## 5. PairIP & License Check Analysis

The application contains Google Play Licensing / anti-tampering libraries under `com.pairip.licensecheck` and `com.pairip.application.Application`:
- **`LicenseClient.smali`**: Communicates with `com.android.vending.licensing.IBackgroundLicensingService`.
- **Integrity Validation**: Enforces license checks and isolates UIDs (`0x182b8` to `0x1869f`).
- In modified builds, the licensing triggers are mitigated by either avoiding the trigger paths or bypassing the license activity responses.

---

## 6. Manifest & Packaging Modifications

In `apktool-workspace/AndroidManifest.xml`:
1. `android:debuggable="true"` was added to `<application>`, allowing:
   - Attaching Android Studio / LLDB debuggers.
   - Running `run-as com.fourplex.lovio` via `adb shell` to inspect `/data/data/com.fourplex.lovio/databases/RKStorage`.
   - Capturing Chrome Webview / React Native debugging sessions.
2. `android:extractNativeLibs="true"` was set to ensure all `.so` native libraries (including `libc++_shared.so`, Hermes engine, and JNI dispatchers) are extracted to the filesystem.
