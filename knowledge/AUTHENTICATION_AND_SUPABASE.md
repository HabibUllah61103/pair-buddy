# Lovio Authentication, Supabase & Cloud Credentials

## 1. Cloud & API Credentials Reference

The following credentials and identifiers are embedded in Lovio's production configuration (`assets/app.config`):

### Supabase Backend
- **Project URL**: `https://eradptaqkournvgkepnz.supabase.co`
- **Functions Base URL**: `https://eradptaqkournvgkepnz.supabase.co/functions/v1`
- **Project Reference ID**: `eradptaqkournvgkepnz`
- **Anonymous Public API Key**:
  ```text
  <REDACTED_SUPABASE_ANON_KEY>
  ```

### Superwall Paywall SDK
- **iOS API Key**: `<REDACTED_SUPERWALL_IOS_KEY>`
- **Android API Key**: `<REDACTED_SUPERWALL_ANDROID_KEY>`

### Google OAuth Credentials
- **Web Client ID**: `991844407748-4shbovgk8jvveus7khaqt6pf4d0ag0k9.apps.googleusercontent.com`
- **iOS Client ID**: `991844407748-j26t8otq7st637squrbjs3kk6japto0g.apps.googleusercontent.com`
- **iOS URL Scheme**: `com.googleusercontent.apps.991844407748-j26t8otq7st637squrbjs3kk6japto0g`

### Apple / iOS Identifiers
- **Apple Team ID**: `3GZ7B6M75G`
- **iOS Bundle ID**: `com.datemateai.app`
- **App Group**: `group.datemateai.app`
- **Apple Winback Product IDs**: `com.datemateai.app.monthlyV3,com.datemateai.app.monthlyV2`
- **Apple Winback Offer IDs**: `com.datemateai.app.winback.monthly.v3,com.datemateai.app.winback.monthly`

### Expo Application Services (EAS)
- **EAS Project ID**: `154a4f97-722e-4a6e-a01b-5f3c463e5171`

---

## 2. Authentication Flow & Token Anatomy

### Supabase Session Format
When authenticated, the Supabase client stores the session in SQLite under the key `sb-eradptaqkournvgkepnz-auth-token`:

```json
{
  "access_token": "<JWT_STRING>",
  "refresh_token": "<REFRESH_TOKEN_STRING>",
  "token_type": "bearer",
  "expires_in": 3600,
  "expires_at": 1790036058,
  "user": {
    "id": "00000000-0000-0000-0000-000000000000",
    "aud": "authenticated",
    "role": "authenticated",
    "email": "user@example.com",
    "email_confirmed_at": "2026-09-24T19:00:00.000Z",
    "phone": "",
    "app_metadata": {
      "provider": "google",
      "providers": ["google"]
    },
    "user_metadata": {
      "avatar_url": "https://ui-avatars.com/api/?name=Example+User",
      "email": "user@example.com",
      "email_verified": true,
      "full_name": "Example User",
      "name": "Example User",
      "picture": "https://ui-avatars.com/api/?name=Example+User",
      "provider_id": "100000000000000000000",
      "sub": "100000000000000000000"
    }
  }
}
```

---

## 3. Storage Hierarchy: SQLite `RKStorage`

React Native's AsyncStorage on Android stores key-value pairs in an SQLite database:
- **Location**: `/data/data/com.fourplex.lovio/databases/RKStorage`
- **Table**: `catalystLocalStorage`
- **Schema**:
  ```sql
  CREATE TABLE catalystLocalStorage (
    key TEXT UNIQUE,
    value TEXT
  );
  ```

### Key Entries in `catalystLocalStorage`:
| Key | Content |
|---|---|
| `sb-eradptaqkournvgkepnz-auth-token` | Serialized Supabase session (access token, refresh token, user object) |
| `@lovesworking/watermelondb` / Watermelon state | Offline state, relationships, couples pairing status |
| Widget cached preferences | SharedPreferences synchronization copies |

---

## 4. Deep Linking & URL Schemes

Lovio registers the following URL schemes and deep links:
1. **Custom URL Scheme**:
   - `datemate-ai-v2://`
   - Example: `datemate-ai-v2://login#access_token=...`
2. **App Links (Universal Links)**:
   - Host: `getlovio.app`
   - Path Prefix: `/invite`
   - Intent Filter: `autoVerify: true`
   - Handles partner invitation codes and pairing links.
