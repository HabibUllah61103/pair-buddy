# Date planner (local)

## What this PR adds

A local-first date planner, reachable from the More tab:

- **Date ideas** (`/date-ideas`): browse the curated bank of 30 original ideas,
  filter by category (food, outdoors, culture, home, adventure), open any idea
  and save it as a plan with an optional date.
- **My date plans** (`/date-plans`): the couple's saved plans split into
  Upcoming, Unscheduled and Past. Set or change the date, delete plans.

There is no paywall anywhere: the full idea bank and unlimited plans are free
for every couple.

## Data model

New migration `supabase/migrations/20261014000004_date_plans.sql`
(apply after 000001-000003):

- `date_ideas` — curated bank (`title`, `description`, `category`).
  RLS: authenticated users can read; no client write policies. The bank is
  seeded with SQL, never from the app.
- `date_plans` — one row per saved plan (`couple_id`, `title`, `description`,
  `category`, `planned_for`, `created_by`). RLS: couple members read and
  create; only the author updates or deletes.

Seed: `supabase/seed/0002_date_ideas.sql` (30 original ideas, 6 per category).
Idempotent — inserts only when the bank is empty. Apply with:

```bash
bin/supabase_sql.py <project-ref> < supabase/migrations/20261014000004_date_plans.sql
bin/supabase_sql.py <project-ref> < supabase/seed/0002_date_ideas.sql
```

or paste both into the Supabase dashboard SQL editor (migration first).

## App code

- `app/src/lib/dates.ts` — data access: `getIdeas`, `getPlans`, `createPlan`,
  `updatePlan`, `deletePlan`, `saveIdeaAsPlan`, plus date helpers
  (`todayIso`, `formatPlanDate`). All functions return `{ data, error }` and
  degrade gracefully when Supabase is unconfigured.
- `app/app/date-ideas.tsx` — category chips, idea cards, detail modal with
  optional date picker and "Save as plan".
- `app/app/date-plans.tsx` — Upcoming / Unscheduled / Past sections, set-date
  and delete actions (authors only, enforced by RLS).
- `app/app/(tabs)/more.tsx` — adds "Date ideas" and "My date plans" entries.

## Relationship to the AI planner (PR #20)

The AI date planner is a later upgrade, not a replacement: the
`generate-date-plan` edge function will produce richer itineraries and write
them into the same `date_plans` table, so everything built here keeps working.
The local bank guarantees the feature is useful from day one with no API key.
