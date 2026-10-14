# Pairing (PR #6)

How two devices become one couple: invite codes, deep links, and the join flow.

## Flow

1. **Create** — `app/(pairing)/invite.tsx` shows the inviter their code. On mount it
   calls `ensureInvite()`: reuse the still-open invite if one exists, otherwise
   `createInvite()` inserts a new `pairing_invites` row
   (`code`, `couple_id`, `created_by`, `expires_at` = now + 7 days, `status` = 'open').
   RLS only lets a user create invites for themselves with `status = 'open'`.
2. **Share** — copy to clipboard (`expo-clipboard`) or the OS share sheet, sending
   `Join me on Pair Buddy! pairbuddy://invite/ABC123`. "Get a new code" retires the
   old one (sets it `expired`) and creates a fresh one.
3. **Preview** — `app/(pairing)/join.tsx` takes a 6-char code (auto-uppercase,
   ambiguous chars filtered out), debounces 500ms, then calls
   `supabase.rpc('get_invite_preview', { invite_code })` and shows
   "Invite from {name}" — or why the code is unusable.
4. **Redeem** — Join calls `supabase.rpc('redeem_invite', { invite_code })`. The
   `SECURITY DEFINER` function validates the invite, inserts the caller into
   `couple_members` as `invitee`, and marks the invite `accepted`, all in one
   call. Success routes to `/`.

## Security

- The client **never queries `pairing_invites` directly** for preview/redeem —
  both go through `SECURITY DEFINER` RPCs, so invite codes cannot be enumerated.
- Direct reads/writes are limited by RLS to the creator's own rows.
- Codes are 6 chars from an unambiguous alphabet (no `0`/`O`, `1`/`I`).
- Invites expire after 7 days and are single-use (`accepted` on redeem).

## Deep links

| Link | Status |
|---|---|
| `pairbuddy://invite/ABC123` | Live — handled by the root layout listener (`src/lib/deeplinks.ts`) |
| `https://<domain>/invite/ABC123` | Stubbed — parsed if present, but no domain is registered yet (see `docs/BRANDING.md` open item) |

Opening an invite link while signed out stashes the code; after sign-in the auth
guard routes straight to the join screen. While signed in, the link opens the
join screen immediately.

## Test plan (two accounts)

1. Account A: finish onboarding, open the invite screen, copy the code.
2. Account B (fresh device): open `pairbuddy://invite/<code>` — lands on login,
   then the join screen after sign-in, showing "Invite from {A's name}".
3. Account B taps Join — lands on `/`; both accounts now share the couple.
4. Account A regenerates the code — the old code now shows "no longer open".
5. Invalid code (`ZZZZZZ`) shows "No invite found for that code."
