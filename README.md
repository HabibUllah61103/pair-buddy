# Pair Buddy

Pair Buddy is a free couples app. Two partners pair their phones and share small daily rituals: a question a day, quizzes, photo memories, doodles, live distance, countdowns, and home-screen widgets.

Every feature is free. There is no paywall, no subscription tier, and no premium upsell — the billing code simply does not exist in this codebase.

## Features

- **Onboarding** — guided setup: profile, relationship type, anniversary date
- **Pairing** — connect two accounts with an invite code or deep link
- **Daily Spark** — one shared question per day; answer, guess your partner's answer, build a streak
- **Quizzes** — themed question decks to play together
- **Memories** — shared photo moments with captions
- **Drawing** — a shared doodle canvas, synced in real time
- **Live distance** — how far apart you are right now, km or miles
- **Countdowns** — days together, anniversaries, milestones
- **Date ideas** — browse and plan dates; AI-generated itineraries (server-side)
- **Discussion chat** — lightweight partner messaging
- **Widgets** — home-screen widgets: days together, distance, memories, drawing, combined

## Tech stack

- **Client:** Expo SDK 53, React Native (New Architecture), TypeScript, Expo Router
- **Backend:** Supabase — Auth, Postgres, Realtime, Storage, Edge Functions
- **Local data:** offline-first store (planned: WatermelonDB or expo-sqlite with sync)
- **Widgets (planned):** Android AppWidgets, iOS WidgetKit
- **Push:** Expo Push + FCM/APNs

## Repository layout

```
.
├── app.json / package.json / tsconfig.json   # Expo app config
├── app/                                      # Expo Router screens
├── src/lib/                                  # Supabase client, helpers
├── supabase/
│   ├── migrations/                           # SQL schema migrations
│   └── functions/                            # Edge Functions (planned)
├── assets/                                   # Brand assets (planned)
├── docs/                                     # Architecture, branding, schema, workflow
└── README.md
```

## Roadmap

- **Phase 0** — docs, brand direction, repo setup
- **Phase 1** — Supabase schema, Expo scaffold, auth, onboarding, pairing
- **Phase 2** — Daily Spark, quizzes, memories, drawing, distance, countdowns, chat, date ideas
- **Phase 3** — offline sync, push notifications, AI date planner (edge function)
- **Phase 4** — Android widgets, iOS widgets, release builds

## Contributing

See [docs/WORKFLOW.md](docs/WORKFLOW.md). In short: every change ships as a small, reviewable pull request; branch names look like `docs/...`, `feat/...`, `db/...`; nothing is pushed directly to `main`.

## Docs

- [docs/ARCHITECTURE.md](docs/ARCHITECTURE.md) — system design
- [docs/BRANDING.md](docs/BRANDING.md) — name, package IDs, links, visual identity
- [docs/SUPABASE_SCHEMA.md](docs/SUPABASE_SCHEMA.md) — data model and access rules
- [docs/WORKFLOW.md](docs/WORKFLOW.md) — how we work (and how we earn badges honestly)
