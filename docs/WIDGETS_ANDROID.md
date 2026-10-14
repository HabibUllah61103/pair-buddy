# Android Home-Screen Widgets

Pair Buddy ships one Android AppWidget with three size layouts (small, medium,
large). The widget shows whichever of Countdown / Daily Spark / Distance the
user picked in More > Home widgets.

## Architecture

The app is Expo managed workflow: there is no `android/` directory in the repo.
`app/plugins/withPairWidgets.js` is an Expo config plugin that materializes the
widget's native sources at prebuild time (`npx expo prebuild` or
`npx expo run:android`):

- `.../widgets/PairWidgetProvider.kt` — `AppWidgetProvider`. Pure RemoteViews;
  no WebView, no Compose. Chooses the layout by the widget's min width
  (small < 150dp, medium < 250dp, large otherwise) and binds three strings.
- `.../widgets/PairWidgetModule.kt` — legacy `NativeModule` bridge exposing
  `setWidgetData(json)` to JS. Writes the payload to SharedPreferences
  (`pair_buddy_widget` / `widget_data_json`) and re-renders every instance.
- `.../widgets/PairWidgetPackage.kt` — `ReactPackage` registering the module;
  wired into `MainApplication.getPackages()` by the plugin.
- `res/xml/pair_widget_info.xml` — the `AppWidgetProviderInfo`
  (resizable, 30-minute update period, home screen category).
- `res/layout/widget_small|medium|large.xml` — RemoteViews layouts. All three
  declare the same ids (`widget_title`, `widget_line1`, `widget_line2`); the
  small layout hides `line2` so binding never touches a missing view.
- `res/drawable/widget_background.xml`, `res/values/pair_widgets.xml` —
  background shape and the provider description string.
- `AndroidManifest.xml` — the `.widgets.PairWidgetProvider` receiver with the
  `APPWIDGET_UPDATE` intent filter and `android.appwidget.provider` meta-data.

A legacy `NativeModule` (not a TurboModule spec) is deliberate: one method,
no codegen, works under the New Architecture's legacy-module interop.

## Data flow

```
widget-settings screen            JS bridge               native
saveWidgetConfig(type) --> refreshWidgets() --> setWidgetData(payload)
                                                    | NativeModules.PairWidgetModule
                                                    v
                                          SharedPreferences JSON
                                          { type, title, line1, line2, updatedAt }
                                                    | requestUpdate()
                                                    v
                                          PairWidgetProvider -> RemoteViews
```

The provider is deliberately dumb: JS pre-renders every string (days-left math,
distance formatting, staleness labels). The widget never queries Supabase.

Widget choice is stored per user in the `widget_configs` table
(`supabase/migrations/20261014000007_widgets.sql`): one row per user
(`unique(user_id)`), couple members can read, owners manage their own.

## Update triggers

`refreshWidgets()` reads the saved choice and rebuilds the payload:

- **countdown** — nearest upcoming `date_plans` row (`planned_for >= today`);
  falls back to "No upcoming dates" with a hint to save a plan.
- **spark** — today's Daily Spark question via `getTodaySpark()`.
- **distance** — partner distance via `getPartnerLocation()` + `getMyPosition()`,
  formatted with the user's km/mi preference and a staleness label.

Call `refreshWidgets()` after anything the widget shows changes (new plan date,
new spark day, location update). The provider also re-renders on resize and on
the 30-minute `updatePeriodMillis` tick (Android may batch these).

## Follow-ups (not in this PR)

- Periodic background refresh via WorkManager so the widget stays fresh without
  opening the app (needs the Supabase anon key in native code — prefer a
  lightweight edge function or accept app-open refreshes).
- Widget tap deep-link (`pairbuddy://`) via a `PendingIntent` on the RemoteViews
  root view.
- iOS WidgetKit equivalent — PR #18.

## Testing

1. `npx expo prebuild` and confirm the files above exist under `android/`.
2. `npx expo run:android`, open the app, go to More > Home widgets, pick a type,
   save. (Expo Go cannot render widgets: the native module is absent and the
   settings screen says so.)
3. Long-press the home screen > Widgets > Pair Buddy > place it. Resize to see
   the three layouts.
4. Change the underlying data (save a nearer plan date, answer the spark) and
   confirm the widget re-renders after reopening the app.
