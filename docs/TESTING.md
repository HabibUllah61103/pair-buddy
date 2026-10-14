# QA checklist

Walk through this on a physical device before every release. Mark each item
pass or fail; a fail blocks the release. "Graceful" means the app explains
itself instead of crashing or hanging.

## Auth

- [ ] Google sign-in completes and lands on onboarding (fresh) or home
      (returning).
- [ ] Apple sign-in completes on iOS (button hidden or explained on Android).
- [ ] Phone OTP: code arrives, 6-digit entry verifies, wrong code shows an
      error.
- [ ] Sign-out clears the session and returns to login; no push token
      remains registered for the device.
- [ ] Graceful: with no `app/.env`, every auth screen shows the
      "not configured" message instead of crashing.

## Onboarding

- [ ] All 12 steps complete; profile and couple rows are created.
- [ ] Going back and editing answers keeps earlier input.
- [ ] Airplane mode mid-onboarding: the draft survives and can resume.

## Pairing

- [ ] Create invite shows a code; regenerate replaces it.
- [ ] `pairbuddy://invite/<code>` opens the join screen when signed in, and
      stashes the code until sign-in when signed out.
- [ ] Joining with a bad/expired code shows a clear error, no crash.
- [ ] After pairing, both partners see each other as a couple.

## Daily Spark

- [ ] Today's question loads; answer saves; guess-their-answer flow works.
- [ ] Results show both answers once both partners answered.
- [ ] Waiting state updates live when the partner answers (realtime).
- [ ] Streak increments on consecutive days and shows on the More tab.
- [ ] Graceful: with no backend, the screen explains instead of spinning.

## Quiz packs

- [ ] Library lists the 5 packs with progress bars.
- [ ] Play: answer or skip each question; progress advances.
- [ ] Results show both answers and loose-match chips once both answered.
- [ ] A new quiz category added server-side appears as a pack automatically.

## Memories

- [ ] Pick a photo, add a caption, upload with progress; it appears in the
      grid for both partners.
- [ ] Detail modal shows photo, caption, date, author; delete works for your
      own photos only.
- [ ] Upload failure mid-way leaves no orphaned storage object.
- [ ] Graceful: without storage access, the picker explains the permission.

## Drawing

- [ ] Finger drawing renders smoothly; colors and brush sizes switch.
- [ ] Undo removes the last stroke; clear empties the canvas.
- [ ] Send delivers the drawing to the partner's screen live.
- [ ] Graceful in Expo Go: explains that drawing needs a dev build
      (react-native-svg is a native module).

## Distance

- [ ] Share toggle on: permission prompts appear; partner sees your position.
- [ ] Distance readout updates; km/mi toggle persists.
- [ ] Staleness badge moves live -> recent -> stale as the fix ages.
- [ ] Share toggle off: your row is deleted; partner sees you as not sharing.
- [ ] Graceful: permission denied shows an explanation, not a blank screen.

## Dates

- [ ] Idea bank: category chips filter; 30 ideas across 5 categories.
- [ ] Save an idea as a plan with a date; it appears under Upcoming.
- [ ] Plans split into Upcoming / Unscheduled / Past; set-date and delete
      work.
- [ ] AI planner: fill mood/budget/location, generate, review the result
      card, save as a plan.
- [ ] Graceful: without `MISTRAL_API_KEY`, the AI screen says the planner is
      not set up yet; the curated bank keeps working.

## Discussion

- [ ] Messages send and appear live on the partner's device.
- [ ] "Seen" appears under your newest message once the partner reads it.
- [ ] Reopening the chat does not duplicate realtime messages.
- [ ] Airplane mode: the send queues via the offline outbox (once write
      paths adopt `runOrQueue`) or shows a clear error.

## Push notifications

- [ ] Foreground: receiving a notification shows the in-app banner.
- [ ] Tap a notification: the app opens to the right screen via `data.url`.
- [ ] Sign-out, then have the partner trigger a notification: nothing arrives
      on the signed-out device.
- [ ] Graceful: without an EAS project ID, token registration fails softly.

## Offline

- [ ] More tab shows the pending-sync count after failed writes.
- [ ] Reconnecting replays the outbox in order (NetInfo + foreground).
- [ ] Retry now / discard failed work from the More tab.
- [ ] Restarting the app preserves unplayed ops (backoff survives restarts).

## Widgets

Android (dev build):

- [ ] Widget picker offers Countdown / Daily Spark / Distance.
- [ ] Saving a choice updates the home-screen widget content.
- [ ] Refresh happens when the underlying data changes.

iOS (Mac build):

- [ ] PairWidgets extension builds; team and App Group are assigned.
- [ ] Adding the widget (long-press, Edit, Add Widget) renders small and
      medium sizes.
- [ ] Saving a choice in widget settings updates the widget timeline.

Graceful on both: Expo Go shows the explanatory notice instead of a broken
settings screen.

## General

- [ ] No screen shows a red error boundary on launch, offline, or signed out.
- [ ] No Lovio naming, copy, or assets anywhere in the app.
- [ ] No secrets in the repo (`git log -p` shows no keys).
- [ ] App launches cold in a reasonable time on a mid-range device.
