# Memories

Shared photo memories for the couple: a 2-column grid, a detail view, and
an add flow (photo picker → caption → upload).

## Storage model

- Photos live in the **private** `memories` storage bucket, never as public
  URLs. The app mints 7-day signed URLs at read time (`getSignedUrl`).
- Every object is stored under `<couple_id>/...`. The RLS policies in
  `supabase/migrations/20261014000003_storage.sql` enforce this with the
  `object_couple_id()` helper: an object whose first path segment is not the
  caller's couple id is invisible and not writable. The client lib
  (`src/lib/memories.ts`) follows the convention; the database is the
  enforcement point.
- The `memories` table row stores the storage **path** in `image_url`
  (not a signed URL, which would expire). Columns: `id`, `couple_id`,
  `image_url`, `caption`, `created_by`, `created_at`.

## Upload flow

1. `expo-image-picker` returns a local `file://` URI (edited, quality 0.8).
2. The lib reads bytes with `fetch(uri).arrayBuffer()` — no extra native
   file-system dependency.
3. Upload to `memories` at `${coupleId}/${Date.now()}-${rand}.jpg` with
   `contentType: image/jpeg`.
4. Insert the `memories` row. If the insert fails, the uploaded object is
   removed again so no orphaned photos accumulate.

## Read flow

- `listMemories()` fetches the couple's rows newest-first (limit 50) with
  the creator's name, then resolves a fresh signed URL per row.
- Signed URLs last 7 days and are refreshed on every list call, so a
  cached URL is never trusted across sessions.

## Delete semantics

- Row delete first (RLS policy "authors delete own memories" — only the
  author can delete), then the storage object is removed.
- If the object removal fails after the row is gone, the delete still
  reports success for the row but surfaces a warning string so the UI can
  say the photo may linger in storage.

## Files

- `app/src/lib/memories.ts` — list, add, delete, signed URLs.
- `app/src/components/memory-card.tsx` — grid card (photo + caption + date).
- `app/app/(tabs)/memories.tsx` — grid screen, detail modal, add sheet.
