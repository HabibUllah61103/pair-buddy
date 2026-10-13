# Supabase schema

Applied via `supabase/migrations/` (see PR #3). Overview of entities and access rules.

## Entities

| Table | Purpose |
|---|---|
| `profiles` | One row per auth user: name, avatar, birthdate, gender, locale |
| `couples` | The pair: anniversary date, relationship type/goal |
| `couple_members` | Membership: couple_id, user_id, role (inviter/invitee) |
| `pairing_invites` | Invite codes: code, couple_id, created_by, expires_at, status |
| `quizzes` | Shared question bank (read-only to clients; seeded server-side) |
| `quiz_answers` | Per-couple quiz responses |
| `daily_sparks` | One question per couple per day |
| `spark_answers` | Answers + partner guesses for a spark |
| `memories` | Shared photos: image_url, caption, author |
| `drawings` | Shared doodles: image_url, author (latest shown) |
| `countdowns` | Custom countdowns: title, target date |
| `locations` | Latest location per user (for live distance) |
| `push_tokens` | Expo push token per user |

## Storage buckets

| Bucket | Access |
|---|---|
| `avatars` | Public read; users manage objects under their own user-id folder |
| `memories` | Private; objects stored under `<couple_id>/...`, readable/writable only by couple members |

## RLS approach

- RLS is enabled on every table, and storage access is controlled by policies on `storage.objects`.
- `is_couple_member(couple_id)` — returns true when `auth.uid()` belongs to the couple. All couple-scoped reads/writes go through it.
- `profiles` — users read/update their own row; can read a partner's row when they share a couple.
- `locations` — users write only their own row; can read a partner's row when they share a couple.
- `pairing_invites` — creators manage their own invites. Joining and invite preview go through `SECURITY DEFINER` functions (`redeem_invite`, `get_invite_preview`) so invite codes cannot be enumerated.
- `quizzes` — readable by any authenticated user; writable only via service role (seeded question bank).
