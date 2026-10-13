# Workflow

## Principles

- Every change ships as a small, reviewable pull request. No direct pushes to `main`.
- Every PR is real work: it builds cleanly, and migrations apply cleanly to a fresh project.
- Activity on this repo is genuine. We never fake stars, co-authors, or contributions, and we never create empty or padding PRs to chase badges. Badge progress (e.g. Pull Shark tiers) is a side effect of real work, not a goal that shapes it.

## Branches

- `docs/<slug>` — documentation
- `feat/<slug>` — app features
- `db/<slug>` — database migrations
- `fix/<slug>` — fixes
- `chore/<slug>` — tooling, config

## Pull requests

- One scope per PR. Title describes the change, e.g. `feat: daily spark play screen`.
- Description includes what changed and how it was verified (build output, migration dry-run, manual test notes).
- Merge criteria: TypeScript compiles, `npx expo start` boots (app PRs) or migrations apply cleanly to a fresh project (db PRs), no secrets committed, no Lovio branding or copy.
- Squash-merge to `main`, then delete the branch.

## Secrets

- Never commit API keys, tokens, or service-role keys.
- Client config uses `EXPO_PUBLIC_` env vars from `.env` (gitignored; see `.env.example`).
- The Supabase anon key is public by design; the service-role key never leaves the Supabase dashboard.
