# Onboarding (PR: onboarding)

Twelve-step setup flow shown once, right after sign-in. All copy below is
original, written for Pair Buddy.

## Code map

- `app/src/lib/onboarding.tsx` — `OnboardingProvider` / `useOnboarding()`.
  Owns the step state machine, the draft profile, and `finish()`.
- `app/src/components/onboarding/steps.tsx` — the 12 step screens plus shared
  `StepShell` / `Chip` UI helpers.
- `app/(onboarding)/_layout.tsx` — provides `OnboardingProvider` to the group.
- `app/(onboarding)/index.tsx` — renders the current step.
- `app/app/index.tsx` — redirects to `/(onboarding)` until
  `getOnboardingComplete()` is true.

## Steps, copy, and validation

| # | Step | Title / subtitle | Validation |
|---|------|------------------|------------|
| 1 | `welcome` | "Welcome to Pair Buddy" / "A small daily ritual for the two of you. Let's set things up — it takes about a minute." | none |
| 2 | `name` | "What should we call you?" / "This is the name your partner will see." | ≥ 2 characters |
| 3 | `birthdate` | "When's your birthday?" / "We'll keep it quiet — just for the little celebrations." | past date, age ≥ 13 |
| 4 | `gender` | "How do you identify?" / "Only used to personalize your experience." | one option selected |
| 5 | `photo` | "Add a photo" / "So your partner always sees your smiling face." | optional, skippable |
| 6 | `relationship-type` | "What best describes you two?" / "It helps us shape the experience around your story." | one of Dating / Engaged / Married / Long-term partners |
| 7 | `relationship-goal` | "What do you want more of?" / "Pick the one that matters most right now." | one selected |
| 8 | `anniversary` | "When did it all begin?" / "We'll count every day from here." | a date, not in the future |
| 9 | `daily-commitment` | "Pick your daily ritual" / "One small thing, every day. That's the whole secret." | one selected |
| 10 | `partner-invite` | "Bring your partner in" / "Pair Buddy is better together. You'll get your own invite code right after setup — share it and you're paired in seconds." | skippable (code generation ships in the pairing PR) |
| 11 | `reminders` | "Want a gentle nudge?" / "We'll remind you about your daily ritual. Nothing noisy, just a tap on the shoulder." | optional toggle + time |
| 12 | `success` | "You're all set" / "Your space is ready. Invite your partner and answer your first question together." | calls `finish()` |

## The write contract (`finish()`)

On success, `finish()` writes, in order:

1. **Avatar upload (best-effort)** — local photo → `avatars/{userId}/avatar.jpg`
   in Supabase Storage; failures keep the local URI and never fail onboarding.
2. **`profiles` upsert** — `{ id: auth.user.id, name, avatar_url, birthdate, gender }`.
3. **`couples` insert** — `{ anniversary_date, relationship_type, relationship_goal }`.
4. **`couple_members` insert** — `{ couple_id, user_id, role: 'inviter' }`.
5. Sets `pairbuddy.onboarding.complete = '1'` in AsyncStorage.

## Offline / unconfigured behavior

When Supabase is not configured (or the user has no session), `finish()` does
not crash: it persists the draft to AsyncStorage (`pairbuddy.onboarding.draft`),
leaves onboarding incomplete, and surfaces a clear message with
`pendingSync = true`. A previously saved draft is restored on the next launch.
TODO: auto-retry the sync once the backend is connected.
