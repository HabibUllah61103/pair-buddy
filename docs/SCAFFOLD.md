# App scaffold (PR: expo scaffold)

## Contents

- `app.json` — Expo config: name "Pair Buddy", scheme `pairbuddy`, Android package and iOS bundle ID `com.pairbuddy.app`, New Architecture, Expo Router. Icon/splash images are intentionally omitted until the rebrand PR adds real assets (referencing missing files would break the build).
- `package.json` — Expo SDK 53, React Native, Expo Router, Supabase client, push and linking modules.
- `app/_layout.tsx`, `app/index.tsx` — router root and a placeholder welcome screen.
- `src/lib/supabase.ts` — Supabase client from `EXPO_PUBLIC_` env vars (throws a helpful error when unset).
- `.env.example` — copy to `.env` after creating the Supabase project.

## Run

```sh
npm install
cp .env.example .env   # then fill in the Supabase URL + anon key
npx expo start
```

If dependency versions drift from the installed Expo SDK, run `npx expo install --fix`.
