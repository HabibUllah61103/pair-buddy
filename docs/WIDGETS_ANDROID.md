# Android Home-Screen Widgets

Pair Buddy ships one Android AppWidget with three size layouts (small, medium,
large). The widget shows whichever of Countdown / Daily Spark / Distance the
user picked in More > Home widgets. Tapping the widget opens the app on the
screen behind the widget's type, and a WorkManager worker re-renders it about
every 30 minutes without opening the app.

## Architecture

The app is Expo managed workflow: there is no `android/` directory in the repo.
`app/plugins/withPairWidgets.js` is an Expo config plugin that materializes the
widget's native sources at prebuild time (`npx expo prebuild` or
`npx expo run:android`):

- `.../widgets/PairWidgetProvider.kt` — `AppWidgetProvider`. Pure RemoteViews;
  no WebView, no Compose. Chooses the layout by the widget's min width
  (small < 150dp, medium < 250dp, large otherwise) and binds three strings.
  Attaches a tap `PendingIntent` (deep-link, per widget instance) to the root
  view and starts the periodic worker in `onEnabled`.
- `.../widgets/PairWidgetModule.kt` — legacy `NativeModule` bridge exposing
  `setWidgetData(json)` to JS. Writes the payload to SharedPreferences
  (`pair_buddy_widget` / `widget_data_json`), ensures the periodic worker is
  scheduled, and re-renders every instance.
- `.../widgets/PairWidgetPackage.kt` — `ReactPackage` registering the module;
  wired into `MainApplication.getPackages()` by the plugin.
- `.../widgets/PairWidgetRefreshWorker.kt` — WorkManager `Worker`. Re-reads the
  payload, recomputes the countdown days-left locally when the payload carries
  a `targetDate` (same noon-based rounding as the JS bridge), writes the
  refreshed payload back, and re-renders all instances.
- `.../widgets/PairWidgetScheduler.kt` — schedules the worker as unique
  periodic work (`pair_buddy_widget_refresh`, 30 minutes,
  `ExistingPeriodicWorkPolicy.KEEP`, so re-scheduling never duplicates it).
- `res/xml/pair_widget_info.xml` — the `AppWidgetProviderInfo`
  (resizable, 30-minute update period, home screen category).
- `res/layout/widget_small|medium|large.xml` — RemoteViews layouts. All three
  declare the same ids (`widget_root`, `widget_title`, `widget_line1`,
  `widget_line2`); the small layout hides `line2` so binding never touches a
  missing view.
- `res/drawable/widget_background.xml`, `res/values/pair_widgets.xml` —
  background shape and the provider description string.
- `AndroidManifest.xml` — the `.widgets.PairWidgetProvider` receiver with the
  `APPWIDGET_UPDATE` intent filter and `android.appwidget.provider` meta-data.
  (WorkManager needs no manifest entry: its initializer is auto-merged from
  the work-runtime library.)
- `app/build.gradle` — the plugin adds
  `implementation("androidx.work:work-runtime-ktx:2.9.0")`, idempotently.

A legacy `NativeModule` (not a TurboModule spec) is deliberate: one method,
no codegen, works under the New Architecture's legacy-module interop.

## Data flow

```
widget-settings screen            JS bridge               native
saveWidgetConfig(type) --> refreshWidgets() --> setWidgetData(payload)
                                                    | NativeModules.PairWidgetModule
                                                    v
                                          SharedPreferences JSON
                          { type, title, line1, line2, updatedAt, targetDate? }
                                                    | requestUpdate()
                                                    v
                                          PairWidgetProvider -> RemoteViews
```

The provider is deliberately dumb: JS pre-renders every string (days-left math,
distance formatting, staleness labels). The widget never queries Supabase.
`targetDate` is set only on countdown payloads with a real upcoming plan; the
worker uses it to recompute the label, and iOS ignores the unknown field.

Widget choice is stored per user in the `widget_configs` table
(`supabase/migrations/20261014000007_widgets.sql`): one row per user
(`unique(user_id)`), couple members can read, owners manage their own.

## Tap behavior

Tapping anywhere on the widget fires an `ACTION_VIEW` `PendingIntent`
(`FLAG_IMMUTABLE`, per-instance request code) that deep-links into the app:

- countdown -> `pairbuddy://date-plans`
- spark -> `pairbuddy://(tabs)/spark`
- distance -> `pairbuddy://(tabs)/distance`
- unknown payload -> `pairbuddy://` (app root)

## Update triggers

`refreshWidgets()` reads the saved choice and rebuilds the payload:

- **countdown** — nearest upcoming `date_plans` row (`planned_for >= today`);
  falls back to "No upcoming dates" with a hint to save a plan.
- **spark** — today's Daily Spark question via `getTodaySpark()`.
- **distance** — partner distance via `getPartnerLocation()` + `getMyPosition()`,
  formatted with the user's km/mi preference and a staleness label.

Call `refreshWidgets()` after anything the widget shows changes (new plan date,
new spark day, location update). Beyond that, two background mechanisms keep
the widget alive without opening the app:

1. **WorkManager worker** (`PairWidgetRefreshWorker`, ~30 min): re-reads the
   payload, recomputes the countdown label locally when `targetDate` is
   present, writes the refreshed payload back, and re-renders. Spark/distance
   payloads need network data to rebuild, so they re-render as-is; their fresh
   values arrive the next time the app runs `refreshWidgets()`.
2. **Provider update tick** (`updatePeriodMillis`, 30 min in
   `pair_widget_info.xml`): re-binds the last payload on resize/tick as a
   fallback. Android may batch these aggressively, which is why the worker
   exists.

### Battery note

WorkManager periodic work is inexact by design: the system batches it with
other background work and may defer it under Doze. ~30 minutes is a request,
not a promise. That is fine for a glanceable widget and costs effectively no
measurable battery: each run only reads SharedPreferences and rebinds three
`TextView`s. No network calls happen in the worker.

## Follow-ups (not in this PR)

- iOS WidgetKit equivalent — done in PR #18.
- Richer countdown worker: nothing further planned; the worker intentionally
  cannot fetch network data (no Supabase credentials in native code).

## Testing

1. `npx expo prebuild` and confirm the files above exist under `android/`,
   including `PairWidgetRefreshWorker.kt` and `PairWidgetScheduler.kt`, and
   that `app/build.gradle` contains `androidx.work:work-runtime-ktx`.
2. `npx expo run:android`, open the app, go to More > Home widgets, pick a type,
   save. (Expo Go cannot render widgets: the native module is absent and the
   settings screen says so.)
3. Long-press the home screen > Widgets > Pair Buddy > place it. Resize to see
   the three layouts.
4. Tap the widget: the app should open on the screen matching the widget type
   (date plans / Spark tab / Distance tab).
5. Change the underlying data (save a nearer plan date, answer the spark) and
   confirm the widget re-renders after reopening the app.
6. Worker check (device connected via adb):
   `adb shell dumpsys jobscheduler | grep pair_buddy_widget_refresh` should
   show the scheduled periodic job. Force a run in the App inspection tool or
   wait; the countdown label must roll over correctly at midnight.
