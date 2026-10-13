# Lovio (`lovio-src`)

Consolidated master repository for the **Lovio** Android application (`com.fourplex.lovio` / `com.datemateai.app`), including reverse-engineered source code, disassembled bytecode, modified APK packages, build tools, emulator setups, and complete architectural documentation.

---

## Quick Navigation

- 📖 **[Master Knowledge Base (KNOWLEDGE.md)](./KNOWLEDGE.md)**: Full encyclopedia covering architecture, credentials, paywall bypass, OAuth patches, and widget specs.
- 🏗️ **[System Architecture (knowledge/ARCHITECTURE.md)](./knowledge/ARCHITECTURE.md)**: React Native New Architecture, Expo SDK 55, WatermelonDB, and Supabase.
- 🔓 **[Reverse Engineering & Modifications (knowledge/REVERSE_ENGINEERING_AND_MODS.md)](./knowledge/REVERSE_ENGINEERING_AND_MODS.md)**: How paywalls were bypassed and how Google Sign-In was patched with `OAuthDialogHelper`.
- 🔑 **[Authentication & Cloud Credentials (knowledge/AUTHENTICATION_AND_SUPABASE.md)](./knowledge/AUTHENTICATION_AND_SUPABASE.md)**: Supabase URLs, keys, Superwall keys, and SQLite schema.
- 📱 **[Widgets & Native Modules (knowledge/WIDGETS_AND_NATIVE_MODULES.md)](./knowledge/WIDGETS_AND_NATIVE_MODULES.md)**: Native Kotlin/Java AppWidgets (`DaysTogether*`, `DistanceWidget*`, `DrawingWidget`, etc.).
- 🛠️ **[Build & Emulator Operations Guide (knowledge/BUILD_SIGNING_AND_EMULATOR.md)](./knowledge/BUILD_SIGNING_AND_EMULATOR.md)**: Rebuilding with `apktool.jar`, signing with `debug.keystore`, and running on `lovio_emulator`.
- 📂 **[Directory Asset Inventory (knowledge/DIRECTORY_INVENTORY.md)](./knowledge/DIRECTORY_INVENTORY.md)**: Full file map.

---

## Directory Layout

```
lovio-src/
├── apks/               # Original XAPK, splits, and custom builds (gitignored)
│   ├── original/       # APKPure XAPK and base/config splits
│   └── builds/         # Premium unlocked, OAuth dialog, and standalone APKs
├── apktool-workspace/  # Disassembled Smali classes, manifest, and resources
├── build-tools/        # apktool.jar (signing keystores generated locally)
├── emulator/           # run_emulator.sh and AVD configurations
├── reconnaissance/     # Wappalyzer scan of getlovio.app
├── web_authenticator/  # Web OAuth token extractor (index.html)
├── sources/            # Decompiled Java/Kotlin source code
├── resources/          # app.config, Hermes bytecode bundle, and drawables
├── knowledge/          # Technical documentation library
├── KNOWLEDGE.md        # Comprehensive technical knowledge base
└── README.md           # This file
```

---

## Quickstart Commands

### 1. Rebuild & Sign APK
```bash
# Build from apktool workspace
java -jar build-tools/apktool.jar b apktool-workspace -o apks/builds/custom.apk

# Align
zipalign -p -f -v 4 apks/builds/custom.apk apks/builds/custom-aligned.apk

# Sign with debug keystore
apksigner sign \
  --ks build-tools/debug.keystore \
  --ks-pass pass:android \
  --ks-key-alias androiddebugkey \
  --key-pass pass:android \
  --out apks/builds/custom-signed.apk \
  apks/builds/custom-aligned.apk
```

### 2. Run Emulator & Install
```bash
# Launch emulator with camera passthrough
./emulator/run_emulator.sh lovio_emulator

# Install the pre-built OAuth Dialog package
adb install -r apks/builds/oauth-dialog/lovio-dialog-signed.apk

# Launch
adb shell monkey -p com.fourplex.lovio -c android.intent.category.LAUNCHER 1
```
