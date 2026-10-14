# Daily Spark

One shared question per couple per day. Each partner answers, guesses what
the other will say, and the results unlock when both have answered.

## How it works

1. The first partner to open the Spark tab triggers `getTodaySpark()`, which
   looks up `daily_sparks` for `(couple_id, today)`. If none exists, it picks
   a random row from the `quizzes` bank and inserts the day's spark. A unique
   constraint plus a re-read on conflict keeps two devices from creating
   duplicates.
2. Each partner submits an answer and an optional guess of the other's answer
   via `answerSpark()` (upsert on `(spark_id, user_id)`, so answers are
   editable until the partner replies).
3. The screen subscribes to realtime changes on `spark_answers` for the spark,
   so the waiting partner sees results the moment both answers land.
4. Results show both answers side by side, plus whether each guess matched
   (case-insensitive comparison).

## Streaks

`getStreak()` counts consecutive calendar days ending today (or yesterday when
today's spark is still incomplete) on which **both** partners answered. A day
with only one answer, or no spark at all, breaks the streak. The count is
shown on the Spark tab header and the More tab.

## Realtime prerequisite

The waiting state depends on Postgres realtime for `spark_answers`. Enable it
once on the project (service role / SQL editor):

```sql
alter publication supabase_realtime add table public.spark_answers;
```

Without this, the waiting partner must pull to refresh (reopening the tab
re-reads).

## Seeding the question bank

The `quizzes` table is read-only for clients; seed it once via service role:

```bash
bin/supabase_sql.py <project-ref> < supabase/seed/0001_quiz_bank.sql
```

or paste `supabase/seed/0001_quiz_bank.sql` into the dashboard SQL editor.
The seed is idempotent (inserts only when the bank is empty) and contains 24
original Pair Buddy questions across `fun`, `deep`, `memories`, `dreams`, and
`daily-life`.

## Files

- `app/src/lib/sparks.ts` — data layer: today/create, answer upsert,
  answers with names, member count, streak, realtime subscription.
- `app/(tabs)/spark.tsx` — question card, answer + guess form, waiting state,
  results with guess matching.
- `app/(tabs)/_layout.tsx` — bottom tabs (Spark, Memories, Draw, More).
- `app/(tabs)/memories.tsx`, `draw.tsx` — placeholders for upcoming PRs.
- `app/(tabs)/more.tsx` — streak display, invite-partner shortcut, sign out.
