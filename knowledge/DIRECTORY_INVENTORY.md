# Lovio Repository Directory & Asset Inventory

This document details all files, packages, and assets gathered into the `lovio-src` workspace.

```
lovio-src/
├── apks/                               # All APK distributions, originals, and modified builds
│   ├── original/
│   │   ├── Lovio+-+Couples+App+&+Widgets_2.2.0_APKPure.xapk   # Original untouched XAPK package (129 MB)
│   │   └── xapk-splits/                # Extracted split APK components
│   │       ├── com.fourplex.lovio.apk  # Base application APK
│   │       ├── config.arm64_v8a.apk    # Native ARM64 binary split
│   │       ├── config.mdpi.apk         # Medium-DPI graphical resource split
│   │       ├── manifest.json           # XAPK metadata manifest
│   │       └── icon.png                # Official app icon
│   └── builds/                         # Modified and reverse-engineered builds
│       ├── premium-unlocked/
│       │   ├── lovio-premium-unlocked.apk      # Fully unlocked paywall build (Signed)
│       │   ├── lovio-premium-unlocked.apk.idsig
│       │   ├── lovio-modified-aligned.apk
│       │   └── lovio-modified-unsigned.apk
│       ├── oauth-dialog/
│       │   ├── lovio-dialog-signed.apk         # Build with custom OAuthDialogHelper injection
│       │   ├── lovio-dialog-signed.apk.idsig
│       │   ├── lovio-dialog-aligned.apk
│       │   └── lovio-dialog-built.apk
│       ├── full-standalone/
│       │   ├── lovio-full-signed.apk           # Standalone merged release
│       │   ├── lovio-full-signed.apk.idsig
│       │   ├── lovio-full-aligned.apk
│       │   └── lovio-full-unsigned.apk
│       ├── base-app/
│       │   ├── lovio-app-signed.apk            # Base app recompiled & signed
│       │   ├── lovio-app-signed.apk.idsig
│       │   ├── lovio-app-aligned.apk
│       │   └── lovio-app-unsigned.apk
│       └── splits-signed/                      # Individual signed split APKs
│           ├── config.arm64_v8a-aligned.apk
│           ├── config.arm64_v8a-signed.apk
│           ├── config.arm64_v8a-signed.apk.idsig
│           ├── config.mdpi-signed.apk
│           └── config.mdpi-signed.apk.idsig
│
├── apktool-workspace/                  # Disassembled Apktool workspace
│   ├── AndroidManifest.xml             # Decompiled manifest (patched with debuggable="true")
│   ├── apktool.yml                     # Apktool build configuration
│   ├── assets/                         # Runtime assets (app.config, index.android.bundle)
│   ├── lib/                            # Native .so libraries (arm64-v8a)
│   ├── res/                            # Android layouts, drawables, values, colors
│   ├── smali/ ... smali_classes8/      # Disassembled Smali bytecode
│   │   ├── smali_classes5/com/fourplex/lovio/      # Native widgets & helpers
│   │   ├── smali_classes5/com/reactnativegooglesignin/ # Patched Google Signin module
│   │   └── smali_classes8/com/fourplex/lovio/      # Injected OAuthDialogHelper
│   └── build/                          # Apktool intermediate build cache
│
├── build-tools/                        # Compilers and build utilities
│   ├── apktool.jar                     # Apktool v2.x standalone binary
│   └── debug.keystore                  # PKCS12 debug keystore (gitignored; generate locally)
│
├── emulator/                           # Android emulator scripts & virtual device configs
│   ├── run_emulator.sh                 # Emulator execution script with camera passthrough
│   ├── window_dump.xml                 # UI Automator dump captured during login inspection
│   └── avd-configs/
│       ├── lovio_emulator.ini          # AVD launcher definition
│       ├── lovio_emulator_config.ini   # AVD properties (API 34, mdpi 320x640)
│       ├── lovio_emulator_playstore.ini
│       └── lovio_emulator_playstore_config.ini # AVD properties (API 31, 1080x2400)
│
├── reconnaissance/                     # External intelligence & website scans
│   └── wappalyzer_getlovio-app.csv     # Wappalyzer technology detection of getlovio.app
│
├── web_authenticator/                  # Web-based authentication helper
│   └── index.html                      # OAuth redirect processor & SQLite session generator
│
├── sources/                            # JADX decompiled Java & Kotlin source code
│   └── com/fourplex/lovio/
│       ├── MainActivity.java           # Main React Native activity
│       ├── MainApplication.java        # Main Application entry point
│       ├── WidgetHelperModule.java     # React Native to AppWidget IPC bridge
│       ├── WidgetHelperPackage.java    # React Native package declaration
│       ├── BaseDaysTogetherWidget.java # Base days together widget provider
│       ├── DaysTogetherBlueWidget.java
│       ├── DaysTogetherCoralWidget.java
│       ├── DaysTogetherWhiteWidget.java
│       ├── DaysTogetherCountdownWidget.java
│       ├── DaysTogetherLockSmallWidget.java
│       ├── DistanceWidgetMedium.java   # Real-time distance tracking widget
│       ├── DistanceWidgetBitmapRenderer.java # Canvas renderer for distance & avatars
│       ├── DrawingWidget.java          # Shared doodle / drawing widget
│       ├── MemoriesWidget.java         # Shared memory photo carousel
│       └── CombinedWidget.java         # Multi-feature combined widget
│
├── resources/                          # Android resources & assets
│   ├── assets/
│   │   ├── app.config                  # Expo application configuration & public credentials
│   │   └── index.android.bundle        # Hermes JS Bytecode (v96)
│   └── res/                            # XML drawables, fonts, mipmaps, and layouts
│
├── knowledge/                          # Comprehensive technical documentation
│   ├── ARCHITECTURE.md                 # System overview, tech stack, and diagrams
│   ├── REVERSE_ENGINEERING_AND_MODS.md # In-depth paywall & OAuth patch documentation
│   ├── AUTHENTICATION_AND_SUPABASE.md  # Supabase credentials, DB schema, and tokens
│   ├── WIDGETS_AND_NATIVE_MODULES.md   # Widget specifications & native IPC methods
│   ├── BUILD_SIGNING_AND_EMULATOR.md   # Recompilation, signing, and emulator guide
│   └── DIRECTORY_INVENTORY.md          # This inventory document
│
├── KNOWLEDGE.md                        # Master comprehensive knowledge base
└── README.md                           # Repository overview
```
