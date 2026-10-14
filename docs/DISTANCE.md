# Live distance

How the Distance tab works, what it needs, and what it never does.

## What it does

- Shows the live distance between you and your partner, computed on-device
  with the haversine formula from both GPS positions.
- Partner position arrives over Supabase Realtime on the `locations` table.
- Your own position is read on-device when the screen loads; it is only
  written to the server when sharing is on.

## Permission model

- The sharing toggle asks for foreground permission first, then background.
  iOS requires foreground to be granted before background can be requested.
- If background is denied, foreground sharing still works while the app
  is open.
- **Background location needs a dev build or production build.** Expo Go
  cannot run background tasks, so background sharing silently stays
  foreground-only there.
- Android shows a persistent notification while background sharing runs
  ("Sharing live distance with your partner.").

## Sharing toggle semantics

- On: writes your position to the `locations` table (one row per user,
  upserted) on every significant move (50 m or 60 s) plus a background
  task every 5 minutes / 100 m.
- Off: stops all watchers and **deletes your row**, so you disappear for
  your partner immediately. The choice persists across restarts.

## Staleness

- Live: updated less than 2 minutes ago (green).
- Recent: less than 15 minutes ago (amber).
- Stale: older (red). A stale reading means the partner's app has not
  reported recently, not that the distance is wrong.

## Realtime prerequisite

Run once per Supabase project (already done on the Pair Buddy project):

```sql
alter publication supabase_realtime add table public.locations;
```

## Battery

Balanced accuracy with distance-gated updates keeps drain modest. Turning
sharing off stops everything, including the background task.

## Privacy

- Only your partner can read your row: RLS allows users to write their own
  row and read the row of someone they share a couple with. Nobody else,
  including anonymous users, can see it.
- No location history is kept: the table holds one latest row per user.
  Stopping sharing deletes it.
