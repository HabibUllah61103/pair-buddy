# Quiz Packs

## Concept

There is no separate packs table. The five `quizzes.category` values act as
packs: fun, deep, memories, dreams, daily-life. Each pack is a playlist of
questions the couple plays through and compares.

## Flow

1. The Quizzes tab lists the five packs with live question counts and a
   progress bar (questions both partners answered).
2. Opening a pack starts a play session: 10 random questions from the pack,
   one at a time.
3. Each partner answers independently. Answers upsert into `quiz_answers`
   keyed on (couple_id, quiz_id, user_id), so replaying a question updates it.
4. After answering, the play screen shows whether the partner answered that
   question yet ("Waiting for your partner's answer" until they do).
5. Finishing opens the results screen: every question with both answers
   side by side. Answers matching case-insensitively (ignoring punctuation)
   get a "You matched!" chip.

## Progress semantics

Progress counts questions where both members of the couple have answers, out
of the pack's total questions. Skipped questions simply stay unanswered and
can be played again later.

## Adding questions

Insert rows into `quizzes` with a title and one of the five categories, via
the Supabase dashboard SQL editor:

```sql
insert into quizzes (title, category)
values ('Your original question here', 'fun');
```

The seed pattern lives in `supabase/seed/0001_quiz_bank.sql`. Question text
is original Pair Buddy copy; never copy banks from other apps.
