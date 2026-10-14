# iOS widgets (WidgetKit)

Pair Buddy's iOS home-screen widget is a WidgetKit extension generated at
prebuild time by `app/plugins/withPairWidgetsIOS.js`. The repo stays on the
managed workflow: no `ios/` directory is committed.

## Architecture

```
JS (src/lib/widgets.ts)
  -> NativeModules.PairWidgetDataModule.setWidgetData(json)   (Obj-C, main app target)
    -> NSUserDefaults(suiteName: "group.com.pairbuddy.app")   (shared container)
    -> WidgetCenter.sharedCenter.reloadAllTimelines()
      -> PairWidgets extension: TimelineProvider reads the JSON, SwiftUI renders it
```

This mirrors the Android side (PR #17): the JS payload builder is shared,
only the native sink differs (SharedPreferences vs App Group container).

## What the plugin generates

At `npx expo prebuild` (or `npx expo run:ios`):

- `ios/PairWidgets/PairWidgets.swift` — `TimelineProvider` + SwiftUI views for
  the small and medium families. Reads `widget_data_json` from the App Group.
  Tapping the widget deep-links into the app (`pairbuddy://`).
- `ios/PairWidgets/PairWidgetsBundle.swift` — the `@main` WidgetBundle.
- `ios/PairWidgets/PairWidgets-Info.plist` — extension Info.plist.
- `ios/PairWidgets/PairWidgets.entitlements` — App Groups entitlement.
- `ios/<ProjectName>/PairWidgetDataModule.h` / `.m` — the bridge module,
  compiled into the main app target.
- `ios/<ProjectName>/<ProjectName>.entitlements` — App Groups entitlement for
  the main app, written only when the target has no entitlements file yet.

Xcode project surgery (via `withXcodeProject`, fully automated):

- A `PBXNativeTarget` named `PairWidgets` (`app_extension`,
  bundle id `com.pairbuddy.app.widgets`), embedded in the main app through an
  "Embed App Extensions" Copy Files phase.
- A Sources build phase containing both Swift files, shown in a real
  `PairWidgets` group in the navigator.
- Extension build settings: Swift 5, the main target's deployment target,
  `TARGETED_DEVICE_FAMILY = 1,2`, the entitlements file, `GENERATE_INFOPLIST_FILE = NO`.
- The data module added to the main target's Sources phase.
- The App Group merged into the main target's existing entitlements when one
  is already configured (never clobbered).

Re-running prebuild is idempotent: the plugin skips everything when the
`PairWidgets` target already exists.

## Apple Developer setup (manual, on your Mac)

WidgetKit extensions and App Groups need an Apple Developer account:

1. In Xcode, select the `PairWidgets` target -> Signing & Capabilities and
   assign your team (automatic signing handles the `com.pairbuddy.app.widgets`
   App ID).
2. Confirm the App Groups capability lists `group.com.pairbuddy.app` on both
   the app target and the extension target.
3. For EAS builds, the same App ID / provisioning is resolved from your
   Apple Developer account; nothing extra is committed to the repo.

## Test plan (Mac + Xcode required)

1. `npx expo prebuild` — confirm `ios/PairWidgets/` exists and the
   `PairWidgets` target appears in Xcode.
2. `npx expo run:ios` — build to a simulator or device.
3. In the app: More -> Home widgets -> pick Countdown -> Save.
4. Long-press the home screen -> Edit -> Add Widget -> Pair Buddy -> the widget
   shows your payload (e.g. days until your next planned date).
5. Change the payload (save a new plan date) and confirm the widget refreshes.

## Limitations and follow-ups

- Small and medium families only; large/extra-large are a follow-up.
- `StaticConfiguration` is used (no user-configurable widget parameters yet).
- The timeline refreshes at most every 30 minutes on its own; the app pushes
  fresh data on every relevant change, which is what keeps it live.
- Background refresh via BGAppRefreshTask is not wired yet.
