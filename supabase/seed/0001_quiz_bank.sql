-- Pair Buddy question bank seed: 24 original Daily Spark questions.
-- All copy is original to Pair Buddy. Run after the migrations, e.g.:
--   bin/supabase_sql.py <project-ref> < supabase/seed/0001_quiz_bank.sql
-- or paste into the Supabase dashboard SQL editor.
-- The quizzes table is client read-only; seeding happens via service role / SQL.
-- Idempotent: inserts only when the bank is empty.

insert into quizzes (title, category)
select v.title, v.category
from (values
  -- fun
  ('If we had a theme song as a couple, what would it be and why?', 'fun'),
  ('What is the silliest argument we have ever had?', 'fun'),
  ('If we swapped lives for a day, what is the first thing you would do as me?', 'fun'),
  ('What food could you happily eat every single day for a month?', 'fun'),
  ('Which movie scene describes our relationship best?', 'fun'),
  -- deep
  ('When did you first realize you trusted me completely?', 'deep'),
  ('What is something you believed as a child that you still wish were true?', 'deep'),
  ('What does a perfect quiet evening together look like to you?', 'deep'),
  ('What is one small fear you have never told anyone about?', 'deep'),
  ('What is one thing you want us to get better at as a couple?', 'deep'),
  -- memories
  ('What is your favorite memory of us from this past year?', 'memories'),
  ('What small moment with me do you think about more than I realize?', 'memories'),
  ('Which trip or outing together would you relive if you could?', 'memories'),
  ('What is the funniest thing that has happened to us in public?', 'memories'),
  ('What gift from me meant the most to you, and why?', 'memories'),
  -- dreams
  ('Where in the world should we go together next, and what would we do there?', 'dreams'),
  ('If money were no object, how would our ideal weekend together look?', 'dreams'),
  ('What is one dream you have not chased yet that I could help with?', 'dreams'),
  ('How do you picture our life ten years from now?', 'dreams'),
  ('What is something new you want us to learn together?', 'dreams'),
  -- daily life
  ('What is the best part of your usual day?', 'daily-life'),
  ('What small thing can I do this week to make your days easier?', 'daily-life'),
  ('How do you like to unwind after a long day?', 'daily-life'),
  ('What is one habit of mine that you secretly love?', 'daily-life')
) as v(title, category)
where not exists (select 1 from quizzes);
