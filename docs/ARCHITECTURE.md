# Architecture

## Client (Expo / React Native)

- **Expo Router** — file-based navigation under `app/`. Route groups for onboarding, tabs, and feature screens.
- **TypeScript** throughout; New Architecture enabled.
- **Supabase client** (`src/lib/supabase.ts`) — created from `EXPO_PUBLIC_SUPABASE_URL` and `EXPO_PUBLIC_SUPABASE_ANON_KEY`. No secrets in the repo.
- **Offline-first local store (planned)** — WatermelonDB or expo-sqlite with a batch sync service: push local changes, pull server changes, resolve by `updated_at`. Realtime subscriptions keep the pair in sync while online.
- **State** — server state via the sync layer; local UI state via React hooks (Zustand if shared state grows).

## Backend (Supabase)

- **Postgres tables** — see [SUPABASE_SCHEMA.md](SUPABASE_SCHEMA.md): profiles, couples, couple_members, pairing_invites, quizzes, quiz_answers, daily_sparks, spark_answers, memories, drawings, countdowns, locations, push_tokens.
- **Row Level Security** — every table has RLS enabled. The rule of thumb: you can read and write only rows belonging to a couple you are a member of. Membership is checked by the `is_couple_member()` helper. Invite redemption goes through a `SECURITY DEFINER` function so invite codes cannot be enumerated by listing.
- **Realtime** — channels per couple for answers, memories, drawings, messages, locations, sparks.
- **Storage buckets** — `avatars` (public read), `memories` (private; objects stored under `<couple_id>/...` so RLS policies can scope access).
- **Edge Functions (planned)** — `generate-date-plan` (AI itinerary; the LLM key lives server-side only), `send-push` (fan-out of partner events via the Expo Push API).

## Native widgets (planned)

- **Android** — clean-room Kotlin AppWidget providers fed by a small native module that writes JSON/images to SharedPreferences.
- **iOS** — WidgetKit extension sharing data through an App Group.
- Widget kinds: days together, distance, drawing, memories, combined.

## Push notifications

- Expo Push for transport; a new Firebase project for FCM on Android, APNs on iOS.
- Push tokens stored in `push_tokens`; partner events (spark answered, drawing received, invite accepted) trigger `send-push`.
- Local scheduled reminders for the Daily Spark.
