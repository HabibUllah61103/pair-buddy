# Push notifications

Pair Buddy uses Expo push notifications for partner alerts (new drawing,
new chat message, date plan saved, and so on). All features stay free; the
only external service is Expo's push API, which is free at this scale.

## How it works

1. **Registration** — `initPush()` runs once per signed-in session from the
   root `AuthGuard` (`app/app/_layout.tsx`). It sets the foreground handler,
   asks for notification permission, fetches the device's Expo push token,
   and upserts it into `push_tokens` (`src/lib/push.ts`).
2. **Sending** — `notifyPartner({ title, body, data })` invokes the
   `send-push` edge function with the caller's JWT. The function verifies
   the caller, confirms they belong to the couple, reads the *partner's*
   token from `push_tokens` (service role), and delivers one push through
   `https://exp.host/--/api/v2/push/send`. The client never sees the
   partner's token.
3. **Opening** — tapping a notification routes `data.url` (when present)
   through the Expo Router, e.g. `{ url: '/discussion' }`.
4. **Sign-out** — `resetPushInit()` clears the init guard; wire
   `unregisterPushToken()` into the sign-out flow during release setup so
   stale tokens are removed.

## Database

`supabase/migrations/20261014000006_push.sql` creates `push_tokens`
(`user_id` PK, `expo_push_token`, `updated_at`) with RLS: each user manages
only their own row. Apply with the usual migration flow.

## Edge function

`supabase/functions/send-push/index.ts` (Deno). Deploy:

```
supabase functions deploy send-push
```

Required secrets (never commit these):

```
supabase secrets set SUPABASE_URL=... SUPABASE_ANON_KEY=... SUPABASE_SERVICE_ROLE_KEY=...
```

The function returns `{ sent: true }`, or `{ sent: false, reason }` when the
partner has no token yet, plus 4xx codes for bad input / auth failures.

## App config

- `app.json` adds the `expo-notifications` plugin with the brand color. The
  notification icon ships with the rebrand assets (PR #19); until then the
  default icon is used.
- `expo-notifications ~0.31.6` is already a dependency (no package change).
- Push tokens require a physical device; simulators cannot receive them.

## Release setup (PR #21)

1. Add the EAS project id to `app.json` under `expo.extra.eas.projectId`
   — `getExpoPushTokenAsync()` needs it outside Expo Go.
2. On Android, `expo-notifications` creates a default channel; customize
   channel name/importance in the plugin config if desired.
3. Wire `unregisterPushToken()` into sign-out.
4. Test end to end with the
   [Expo push notification tool](https://expo.dev/notifications) using a
   token from the `push_tokens` table.
