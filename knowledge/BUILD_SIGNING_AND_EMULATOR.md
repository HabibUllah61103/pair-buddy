# Build, Signing, and Emulator Operations Guide

## 1. Prerequisites & Toolchain Locations

All necessary tools, keys, and configurations are gathered in this repository:
- **Apktool**: `build-tools/apktool.jar` (Apktool v2.x)
- **Signing Keystore**: `build-tools/debug.keystore`
- **Emulator Launcher**: `emulator/run_emulator.sh`
- **AVD Configurations**: `emulator/avd-configs/`
- **System Binaries Available**: `/usr/bin/java`, `/usr/bin/zipalign`, `/usr/bin/apksigner`, `/usr/bin/adb`, `/usr/bin/emulator`.

---

## 2. Signing Keystore Specifications

The included `debug.keystore` is configured as follows:
- **Location**: `build-tools/debug.keystore`
- **Keystore Type**: PKCS12
- **Keystore Password**: `android`
- **Key Password**: `android`
- **Key Alias**: `androiddebugkey`
- **Certificate Owner**: `CN=Android Debug, O=Android, C=US`
- **Valid Until**: Feb 05, 2054
- **Fingerprints**:
  - **SHA-1**: `83:38:18:9E:D6:45:08:C7:8E:DA:C9:35:69:A0:0D:FC:44:8D:93:48`
  - **SHA-256**: `58:3B:1F:19:B0:57:1C:41:CA:89:FD:9D:80:BC:83:39:66:89:2E:C8:22:F4:E7:21:01:C4:DA:45:2E:FC:D6:AC`

> **Note**: For security, `.keystore` files are excluded by `.gitignore`. To create a local `debug.keystore` if needed:
> ```bash
> keytool -genkey -v -keystore build-tools/debug.keystore -storepass android -alias androiddebugkey -keypass android -keyalg RSA -keysize 2048 -validity 10000 -dname "CN=Android Debug, O=Android, C=US"
> ```

---

## 3. End-to-End Build & Signing Workflow

### Step 1: Modify Files
Make edits in `apktool-workspace/`:
- Smali code in `apktool-workspace/smali*/`
- Assets & config in `apktool-workspace/assets/`
- Manifest in `apktool-workspace/AndroidManifest.xml`

### Step 2: Build the APK with Apktool
Run from the root of `lovio-src`:
```bash
java -jar build-tools/apktool.jar b apktool-workspace -o apks/builds/custom-built.apk
```

### Step 3: Align the APK with `zipalign`
4-byte boundary alignment is required for Android 11+ and optimal runtime memory mapping:
```bash
zipalign -p -f -v 4 apks/builds/custom-built.apk apks/builds/custom-aligned.apk
```

### Step 4: Sign the APK with `apksigner`
Sign with APK Signature Scheme v2/v3 using `debug.keystore`:
```bash
apksigner sign \
  --ks build-tools/debug.keystore \
  --ks-pass pass:android \
  --ks-key-alias androiddebugkey \
  --key-pass pass:android \
  --out apks/builds/custom-signed.apk \
  apks/builds/custom-aligned.apk
```

### Step 5: Verify the Signature
```bash
apksigner verify --verbose apks/builds/custom-signed.apk
```

---

## 4. Emulator Execution & Testing

Two tailored Android Virtual Devices (AVDs) are available:

| AVD Name | Android API | Features | Screen Resolution |
|---|---|---|---|
| `lovio_emulator` | API 34 (Android 14) | Google APIs, Laptop Webcam passthrough | 320x640 (160 dpi mdpi) |
| `lovio_emulator_playstore` | API 31 (Android 12) | Google Play Store enabled | 1080x2400 (420 dpi) |

### Launching the Emulator:
Using the bundled launcher script:
```bash
# Launch default emulator (lovio_emulator)
./emulator/run_emulator.sh lovio_emulator

# Launch Play Store variant
./emulator/run_emulator.sh lovio_emulator_playstore
```

### Installing and Running Lovio on Emulator / Device:
```bash
# Wait for device to boot
adb wait-for-device

# Install the desired build (e.g. premium unlocked or dialog signed)
adb install -r apks/builds/oauth-dialog/lovio-dialog-signed.apk

# Launch Lovio Activity
adb shell monkey -p com.fourplex.lovio -c android.intent.category.LAUNCHER 1
```

---

## 5. Inspection & Debugging Commands

### Inspecting Local SQLite Database (`RKStorage`):
```bash
# Check database tables
adb shell run-as com.fourplex.lovio sqlite3 databases/RKStorage "SELECT key FROM catalystLocalStorage;"

# Read Supabase session token
adb shell run-as com.fourplex.lovio sqlite3 databases/RKStorage "SELECT value FROM catalystLocalStorage WHERE key='sb-eradptaqkournvgkepnz-auth-token';"
```

### Reading SharedPreferences (Widget State):
```bash
adb shell run-as com.fourplex.lovio cat shared_prefs/WidgetHelper.xml
```

### Capturing UI Dump:
```bash
adb shell uiautomator dump /sdcard/window_dump.xml
adb pull /sdcard/window_dump.xml ./emulator/window_dump_new.xml
```

### Filtering App Logs:
```bash
adb logcat -s Lovio:* ReactNative:* OAuthDialogHelper:*
```
