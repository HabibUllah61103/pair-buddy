# Lovio Widgets & Native Modules Reference

## 1. Overview of the Native Android Widget System
While Lovio's main interactive application is written in React Native, the home screen widgets are built using **native Android AppWidgets** (`AppWidgetProvider`) in Kotlin and Java. This ensures instant rendering, low battery consumption, and responsive updates directly managed by Android's `AppWidgetManager`.

Data synchronization between the React Native JavaScript environment and the native AppWidgets is orchestrated by `WidgetHelperModule`.

---

## 2. The React Native Native Module: `WidgetHelperModule`

`WidgetHelperModule` (`com.fourplex.lovio.WidgetHelperModule`) is registered in `WidgetHelperPackage` and exposes native bridge methods callable from JavaScript:

| React Native Method | Parameters | Description |
|---|---|---|
| `saveDataToAppGroupWithKinds` | `(String jsonString, String key, ReadableArray kinds, Promise promise)` | Saves JSON widget state to Android `SharedPreferences` and triggers a refresh for the specified widget kinds. |
| `reloadAllTimelines` | `()` | Forcefully refreshes all active Lovio widgets on the user's home screen. |
| `reloadTimelinesOfKinds` | `(ReadableArray kinds)` | Refreshes only specific widget types (e.g. `["days_together", "distance"]`). |
| `getAppGroupPath` | `(Promise promise)` | Returns internal storage directory path for shared widget media. |
| `saveImageToAppGroup` | `(String base64, String filename, Promise promise)` | Writes avatar images, drawing canvases, or memories to shared storage so widget RemoteViews can render them. |

---

## 3. Widget Catalog & Specifications

Lovio includes 9 native AppWidget providers:

### A. Days Together Widgets
These widgets display how many days the couple has been together, partner names, anniversary dates, and customizable theme colors:

1. **`DaysTogetherBlueWidget`**:
   - Layout: `R.layout.widget_days_together_blue`
   - Theme: Blue pastel palette with custom heart iconography.
2. **`DaysTogetherCoralWidget`**:
   - Layout: `R.layout.widget_days_together_coral`
   - Theme: Coral / warm romantic accent palette.
3. **`DaysTogetherWhiteWidget`**:
   - Layout: `R.layout.widget_days_together_white`
   - Theme: Clean minimal light/dark monochrome aesthetic.
4. **`DaysTogetherCountdownWidget`**:
   - Purpose: Counts down to the next upcoming anniversary, milestone, or special date.
5. **`DaysTogetherLockSmallWidget`**:
   - Purpose: Compact widget format suitable for small home screen cells or lock screens.

#### Core Data Model: `RelationshipWidgetData`
```java
public final class RelationshipWidgetData {
    private final int daysTogether;
    private final String partnerName;
    private final String userName;
    private final boolean hasAnniversaryDate;
}
```

---

### B. Live Distance Widget: `DistanceWidgetMedium`
- **Provider**: `DistanceWidgetMedium` (supported by `DistanceWidgetBitmapRenderer` and `DistanceWidgetKt`).
- **Features**:
  - Displays real-time physical distance between partners in kilometers or miles.
  - Dynamically renders a custom connecting line and avatars using `DistanceWidgetBitmapRenderer`.
  - Shows freshness timestamp (`computedAt`, `selfUpdatedAt`, `partnerUpdatedAt`) and flags stale locations (`isStale`).
  - Supports unit preference switching (`KILOMETERS` vs `MILES` via `DistanceUnitPreference`).

#### Core Data Model: `DistancePayload`
```java
final class DistancePayload {
    private final Double distanceMeters;
    private final String selfUpdatedAt;
    private final String partnerUpdatedAt;
    private final String computedAt;
    private final boolean isStale;
    private final String trackingState; // e.g. ACTIVE, PERMISSION_MISSING, STALE
}
```

---

### C. Shared Drawing Widget: `DrawingWidget`
- **Provider**: `DrawingWidget`
- **Features**:
  - Allows partners to draw doodles and love notes to each other.
  - The latest drawing is pushed from the canvas in React Native and saved as a bitmap via `saveImageToAppGroup`.
  - Displayed on the partner's home screen widget in real time.

---

### D. Memories Widget: `MemoriesWidget`
- **Provider**: `MemoriesWidget`
- **Features**:
  - Rotates through shared photos, polaroids, and special relationship memories.
  - Caches high-resolution photo thumbnails in local storage.

---

### E. Combined Widget: `CombinedWidget`
- **Provider**: `CombinedWidget` (supported by `CombinedAvatarPairRenderer`).
- **Features**:
  - High-density multi-feature widget displaying both partner avatars, combined days together count, and distance pill.

---

## 4. Widget State Management & SharedPreferences

All widget state is persisted in Android `SharedPreferences`:
- Managed by `WidgetState.INSTANCE.preferences(context)`.
- Updates are broadcast using `WidgetUpdateDispatcher.INSTANCE.reloadKinds(context, kinds, true)`.
- Keys defined in `WidgetStringKey`:
  - `KEY_RELATIONSHIP_DATA`: JSON serialized `RelationshipWidgetData`.
  - `KEY_DISTANCE_DATA`: JSON serialized `DistancePayload`.
  - `KEY_THEME_SELECTION`: Active theme configuration.
