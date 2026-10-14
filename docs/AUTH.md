# Authentication (PR: auth)

Pair Buddy signs users in with Supabase Auth. Supported methods:

- **Google** — OAuth via the in-app browser, deep-linked back to `pairbuddy://auth/callback`.
- **Apple** — native Sign in with Apple (iOS only), exchanged for a Supabase session.
- **Phone** — SMS one-time code (6 digits), with resend on a 30-second cooldown.

The app degrades gracefully without backend configuration: the Supabase client
is loaded lazily, so every auth function returns a clear "not configured" error
instead of crashing. Sign-in buttons stay visible; tapping one explains that
`app/.env` needs `EXPO_PUBLIC_SUPABASE_URL` and `EXPO_PUBLIC_SUPABASE_ANON_KEY`.

## Code map

- `app/src/lib/auth.tsx` — `AuthProvider` / `useAuth()`. Owns the session via
  `supabase.auth.getSession()` + `onAuthStateChange`, loads the `profiles` row,
  and handles OAuth callback deep links.
- `app/src/lib/oauth.ts` — `buildRedirectUrl()` and `parseAuthCallback(url)`.
- `app/(auth)/login.tsx` — Google / Apple / phone entry points.
- `app/(auth)/otp.tsx` — code entry, verify, resend with cooldown.
- `app/app/_layout.tsx` — wraps the tree in `AuthProvider`; the guard sends
  signed-out users to `/(auth)/login` and signed-in users away from it.

## Setup — Supabase dashboard

> Steps marked OWNER ACTION need Habib's accounts. Never commit secrets;
> everything below goes through the Supabase dashboard, not the repo.

### 1. Google provider — OWNER ACTION

1. In the Google Cloud Console, create an **OAuth client ID** (type: Web
   application) for the Pair Buddy project.
2. Add the authorized redirect URI:
   `https://<project-ref>.supabase.co/auth/v1/callback`
   (replace `<project-ref>` with the new Supabase project's reference).
3. In Supabase Dashboard → Authentication → Providers → Google, enable it and
   paste the client ID and client secret.

### 2. Apple provider — OWNER ACTION

1. In the Apple Developer portal, create a **Services ID** (e.g.
   `app.pairbuddy.signin`) and a **Sign in with Apple key**; note the Key ID.
2. In Supabase Dashboard → Authentication → Providers → Apple, enable it and
   enter the Services ID, Team ID, Key ID, and private key.

### 3. Redirect allow-list — OWNER ACTION

In Supabase Dashboard → Authentication → URL Configuration, add
`pairbuddy://auth/callback` to the Redirect URLs. (Matches
`buildRedirectUrl()` in `app/src/lib/oauth.ts`.)

### 4. Phone OTP — OWNER ACTION

In Supabase Dashboard → Authentication → Providers → Phone, enable it.
For development, Supabase's built-in test mode is enough; for production,
attach an SMS provider (Twilio or MessageBird) in the same screen.

## Notes

- `skipBrowserRedirect: true` is intentional: supabase-js cannot redirect a
  real browser inside React Native, so the app opens the OAuth URL with
  `expo-web-browser` and consumes the callback itself.
- Apple sign-in is iOS-only; the button renders only when
  `Platform.OS === 'ios'` and the flow double-checks availability.
- Cancelling a sign-in (closing the browser, dismissing the Apple sheet) is
  not treated as an error.
