-- Pair Buddy date idea bank seed: 30 original local date ideas.
-- All copy is original to Pair Buddy. Run after the migrations, e.g.:
--   bin/supabase_sql.py <project-ref> < supabase/seed/0002_date_ideas.sql
-- or paste into the Supabase dashboard SQL editor.
-- The date_ideas table is client read-only; seeding happens via service role / SQL.
-- Idempotent: inserts only when the bank is empty.

insert into date_ideas (title, description, category)
select v.title, v.description, v.category
from (values
  -- food
  ('Street food crawl', 'Pick a busy food street and try one dish from five different stalls. No skipping the weird-looking one.', 'food'),
  ('Cook a cuisine neither of you has tried', 'Choose a country, find one authentic recipe, and cook it together from scratch. Burnt edges are part of the story.', 'food'),
  ('Dessert-only dinner', 'Skip dinner and go straight for dessert: visit two spots and compare notes like food critics.', 'food'),
  ('Farmers market challenge', 'Give each other a small budget and 20 minutes to buy ingredients, then cook lunch from whatever you both found.', 'food'),
  ('Recreate your first meal together', 'Cook or order the same meal you had on your first date, and tell each other what you remember about that day.', 'food'),
  ('Tea house afternoon', 'Find a quiet tea house or cafe, order something you cannot pronounce, and talk with phones face-down.', 'food'),
  -- outdoors
  ('Sunrise walk', 'Set an alarm, grab coffee to go, and watch the city wake up from your favorite viewpoint.', 'outdoors'),
  ('Picnic with a twist', 'Each person packs a surprise snack for the other. No peeking until you are both sitting on the blanket.', 'outdoors'),
  ('Stargazing night', 'Drive somewhere dark, bring a blanket, and try to spot three constellations. Wrong guesses count.', 'outdoors'),
  ('Neighborhood photo walk', 'Walk a part of town you have never explored and photograph five things that make you both laugh.', 'outdoors'),
  ('Botanical garden morning', 'Wander the gardens slowly, pick your favorite plant each, and explain why it reminds you of the other person.', 'outdoors'),
  ('Cycle a new route', 'Rent bikes and follow a path neither of you has taken. Stop for snacks whenever you feel like it.', 'outdoors'),
  -- culture
  ('Museum after hours', 'Check for late-opening museums or gallery nights and wander without a plan. Pick one artwork to take home as a postcard.', 'culture'),
  ('Bookstore date', 'Split up in a bookstore for 15 minutes, each buy a book for the other, then read the first pages over coffee.', 'culture'),
  ('Local history hunt', 'Look up three historical facts about your own neighborhood and visit the spots where they happened.', 'culture'),
  ('Open-air cinema', 'Find an outdoor screening or set one up with a projector and a white sheet. Popcorn is mandatory.', 'culture'),
  ('Live music, tiny venue', 'Skip the big concert and find a small gig: a cafe singer, a street band, an open mic. Clap loudly.', 'culture'),
  ('Craft workshop', 'Take a one-evening class together: pottery, calligraphy, candle-making. Keep whatever you make, however lopsided.', 'culture'),
  -- home
  ('Living room campout', 'Build a blanket fort, make hot chocolate, and watch a movie from inside it. No leaving the fort for snacks twice.', 'home'),
  ('Memory lane night', 'Go through old photos together and tell the story behind five of them the other person has never heard.', 'home'),
  ('Two-player game tournament', 'Pick three games — board, card, or video — and play a best-of-three tournament. Loser makes breakfast.', 'home'),
  ('Playlist swap', 'Each make a 10-song playlist for the other, press play at the same time, and explain your picks track by track.', 'home'),
  ('Home spa evening', 'Face masks, foot soaks, and terrible reality TV. Phones on silent, candles on.', 'home'),
  ('Future letters', 'Write each other a letter to open one year from today. Seal them and hide them somewhere you will both forget about.', 'home'),
  -- adventure
  ('Day trip roulette', 'Close your eyes and point at a map within two hours of home. Go there today, no planning allowed.', 'adventure'),
  ('Try a beginner class', 'Rock climbing, kayaking, archery, dance: pick something neither of you can do and be gloriously bad at it together.', 'adventure'),
  ('Sunset viewpoint hunt', 'Find the highest accessible spot near you and time your arrival for golden hour. Bring snacks.', 'adventure'),
  ('Night market wander', 'Visit a night market with no shopping list. Buy the strangest useful thing you can find under a small budget.', 'adventure'),
  ('Volunteer morning', 'Spend a morning volunteering together: beach cleanup, food bank, animal shelter. End with a big lunch.', 'adventure'),
  ('Roadside dhaba dinner', 'Drive out of the city, eat at the busiest roadside spot you can find, and drive back under the stars.', 'adventure')
) as v (title, description, category)
where not exists (select 1 from date_ideas);
