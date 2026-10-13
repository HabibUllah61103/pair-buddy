# Supabase setup

## 1. Create the project (owner action)

Create a new Supabase project (this must be a fresh project — never reuse another app's credentials). Then copy the project URL and anon key.

## 2. Apply the migrations

In order, via the Supabase dashboard SQL editor:

1. `migrations/20261014000001_core.sql`
2. `migrations/20261014000002_social.sql`
3. `migrations/20261014000003_storage.sql`

Or with the Supabase CLI (from the repo root):

```sh
supabase link --project-ref <project-ref>
supabase db push
```

## 3. Wire up the app

Copy `.env.example` to `.env` and set:

```
EXPO_PUBLIC_SUPABASE_URL=https://<project-ref>.supabase.co
EXPO_PUBLIC_SUPABASE_ANON_KEY=<anon key>
```

The anon key is safe to ship in the client. The service-role key must never leave the Supabase dashboard.

## Conventions

- Memory/drawing uploads go to the `memories` bucket under `<couple_id>/...` so storage RLS policies can scope access to couple members.
- Avatars go to the `avatars` bucket under `<user_id>/...`.
- Pairing uses invite codes: create via `pairing_invites`, preview via `get_invite_preview(code)`, join via `redeem_invite(code)`.
