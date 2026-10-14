# Release checklist

How to take Pair Buddy from this repo to the Play Store and App Store.
Everything in the app is free: no paywalls, no subscriptions, nothing to
unlock.

## One-time setup

- [ ] `cd app && npx eas init` (or copy the project ID from expo.dev) and put
      the real ID in `app.json` under `expo.extra.eas.projectId`, replacing
      `YOUR_EAS_PROJECT_ID`. Push tokens do not work until this is set.
- [ ] Create `app/.env` from `.env.example` with the real
      `EXPO_PUBLIC_SUPABASE_URL` and `EXPO_PUBLIC_SUPABASE_ANON_KEY`.
      Never commit real keys.
- [ ] Upload the brand assets via the GitHub web UI (the API corrupts
      binaries): `app/assets/icon.png` (1024x1024),
      `app/assets/adaptive-icon.png` (1024x1024, art inside the central 66%
      safe zone), `app/assets/splash.png` (1284x2778, coral heart on #123B63).
      Then wire them into `app.json` per the `//` TODO comment there.
- [ ] Deploy the edge functions:
      `supabase functions deploy send-push` and
      `supabase functions deploy generate-date-plan`.
- [ ] Add the `MISTRAL_API_KEY` secret in the Supabase dashboard
      (Edge Functions -> Manage secrets -> New secret). The AI planner
      degrades gracefully without it; nothing else needs a secret.

## Prebuild verification (his machines)

Android (his dev machine):

- [ ] `npx expo prebuild --clean` generates the Pair Buddy widget provider,
      layouts, and manifest entries from `plugins/withPairWidgets.js`.
- [ ] `npx expo run:android` compiles and installs; the widget appears in the
      Android widget picker and renders the chosen type.
- [ ] Location permission prompts appear; background sharing shows the
      foreground-service notification.

iOS (his Mac + Xcode):

- [ ] `npx expo prebuild --clean` generates the PairWidgets extension target
      from `plugins/withPairWidgetsIOS.js`.
- [ ] In Xcode, assign the Apple Developer team to the PairWidgets target and
      confirm the `group.com.pairbuddy.app` App Group capability on both the
      app and the extension targets.
- [ ] `npx expo run:ios`; add the widget from the home screen
      (long-press, Edit, Add Widget, Pair Buddy).

## EAS builds

```sh
cd app
eas build --profile development --platform all   # dev client for daily testing
eas build --profile preview --platform android   # APK for internal testers
eas build --profile production --platform all     # store submissions
eas submit --platform all                        # after the production build
```

## Store submission

- [ ] Listing copy: `docs/STORE.md` (title, short description, full
      description, keywords, data-safety notes).
- [ ] Screenshots: capture the real app on both platforms (spark, memories,
      drawing, distance, date planner).
- [ ] Play: data-safety form (location only when sharing is on, photos
      (memories the user adds)). Everything stays between the two partners.
- [ ] App Store: privacy nutrition labels, same story: no tracking, no ads.
- [ ] Content rating questionnaires: the app is a private couples space with
      user-generated text and photos; answer honestly.

## Before every release

- [ ] `docs/TESTING.md` walkthrough on a physical device, both platforms.
- [ ] Migrations in `supabase/migrations/` are applied in order on the live
      project; seed data (`quizzes`, `date_ideas`) is present.
- [ ] Realtime publication includes: `spark_answers`, `drawings`, `locations`,
      `discussion_messages`.

## Known follow-ups (not blockers)

1. `runOrQueue` (offline outbox) is infrastructure only; write paths in the
   spark, quiz, discussion, and plan screens are not converted yet.
2. `src/theme.ts` brand tokens exist but screens still use hardcoded color
   literals; migrate screens to the tokens over time.
3. Android widget: tap deep-link into the app and WorkManager periodic
   refresh are not implemented yet.
4. iOS widget uses `StaticConfiguration`; configurable parameters are a
   later addition.
5. The AI planner has no per-user rate limiting yet.
6. Universal-link invite domain (`https://<domain>/invite/<code>`) is still
   undecided; `pairbuddy://` deep links work now.
