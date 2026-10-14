# Shared drawing canvas

## Storage: SVG data URLs, not files

Doodles are stored as SVG data URLs directly in `drawings.image_url`
(the column is plain text). A typical doodle serializes to a few KB.

Why not the storage bucket:

- No bucket sprawl for tiny assets, no signed-URL lifecycle to manage.
- Every drawing is realtime-friendly: the full artwork arrives in the
  postgres_changes payload, so the partner sees it instantly.
- Resolution-independent: renders crisp at any size, including the
  future home-screen widget.

Trade-off: Android home-screen widgets cannot render SVG in RemoteViews.
When the widget PR lands, it will rasterize the latest drawing (server-side
or at sync time) rather than embedding the SVG directly.

## Realtime prerequisite

`drawings` must be in the realtime publication, otherwise new doodles
only appear on refresh. Run once per Supabase project:

```sql
alter publication supabase_realtime add table public.drawings;
```

## Canvas implementation

`src/components/drawing-canvas.tsx` renders on `react-native-svg`:

- Touch handling uses the Svg's `onTouchStart` / `onTouchMove` /
  `onTouchEnd` with `locationX` / `locationY`. Strokes are SVG path data
  built from M/L segments with round caps and joins, which keeps curves
  smooth without a smoothing library.
- The in-progress stroke lives in state so it renders live; each
  committed stroke keeps the color and brush size it was drawn with,
  so changing tools mid-drawing does not repaint old strokes.
- The ref API (`getDataUrl`, `clear`, `undo`, `isEmpty`) is exposed via
  `forwardRef` + `useImperativeHandle`, keeping the screen component
  free of canvas internals.
- `getDataUrl` serializes the strokes plus a white background rect into
  `data:image/svg+xml;utf8,<encoded>`. The partner's app renders it
  with `SvgUri`.

Palette: 5 colors, 3 brush sizes. Undo pops the last stroke; clear wipes
the canvas. Both are local-only until Send is tapped.

## Native module note

`react-native-svg` is a native module: the app needs a dev build
(`npx expo run:android` / `run:ios`), it will not work in Expo Go.
The canvas degrades gracefully without a backend (all lib functions
return clear errors), but the component itself requires the native
module to be linked.

## Test plan

1. Two signed-in, paired accounts on dev builds.
2. A draws and taps Send; B sees the doodle appear in Latest without
   refreshing (realtime), labeled with A's name and time.
3. Undo removes only the last stroke; Clear empties the canvas;
   Send with an empty canvas shows an error, not a blank drawing.
4. Kill the app on B mid-draw on A: on relaunch B still sees the
   latest drawing (persisted row, not just the realtime event).
