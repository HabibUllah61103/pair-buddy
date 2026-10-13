-- Pair Buddy social schema: quizzes, sparks, memories, drawings,
-- countdowns, locations, push tokens.
-- Depends on 20261014000001_core.sql (is_couple_member).

-- Shared question bank. Readable by clients; seeded via service role.
create table quizzes (
  id uuid primary key default gen_random_uuid(),
  title text not null,
  category text,
  created_at timestamptz not null default now()
);

alter table quizzes enable row level security;

create policy "authenticated users read quiz bank"
  on quizzes for select
  to authenticated
  using (true);

-- Per-couple quiz answers.
create table quiz_answers (
  id uuid primary key default gen_random_uuid(),
  couple_id uuid not null references couples (id) on delete cascade,
  quiz_id uuid not null references quizzes (id) on delete cascade,
  user_id uuid not null references profiles (id) on delete cascade,
  answer_text text not null,
  created_at timestamptz not null default now(),
  unique (couple_id, quiz_id, user_id)
);

alter table quiz_answers enable row level security;

create policy "members read quiz answers"
  on quiz_answers for select
  using (is_couple_member(couple_id));

create policy "members insert own quiz answers"
  on quiz_answers for insert
  with check (is_couple_member(couple_id) and user_id = auth.uid());

-- Daily Spark: one question per couple per day.
create table daily_sparks (
  id uuid primary key default gen_random_uuid(),
  couple_id uuid not null references couples (id) on delete cascade,
  quiz_id uuid references quizzes (id) on delete set null,
  question_text text not null,
  spark_date date not null,
  created_at timestamptz not null default now(),
  unique (couple_id, spark_date)
);

alter table daily_sparks enable row level security;

create policy "members read sparks"
  on daily_sparks for select
  using (is_couple_member(couple_id));

create policy "members create sparks"
  on daily_sparks for insert
  with check (is_couple_member(couple_id));

-- Spark answers + partner guesses.
create table spark_answers (
  id uuid primary key default gen_random_uuid(),
  spark_id uuid not null references daily_sparks (id) on delete cascade,
  user_id uuid not null references profiles (id) on delete cascade,
  answer_text text not null,
  guess_partner_answer text,
  created_at timestamptz not null default now(),
  unique (spark_id, user_id)
);

alter table spark_answers enable row level security;

create policy "members read spark answers"
  on spark_answers for select
  using (
    exists (
      select 1 from daily_sparks ds
      where ds.id = spark_answers.spark_id
        and is_couple_member(ds.couple_id)
    )
  );

create policy "members insert own spark answers"
  on spark_answers for insert
  with check (
    user_id = auth.uid()
    and exists (
      select 1 from daily_sparks ds
      where ds.id = spark_id
        and is_couple_member(ds.couple_id)
    )
  );

create policy "authors update own spark answers"
  on spark_answers for update
  using (user_id = auth.uid());

-- Shared photo memories.
create table memories (
  id uuid primary key default gen_random_uuid(),
  couple_id uuid not null references couples (id) on delete cascade,
  image_url text not null,
  caption text,
  created_by uuid not null references profiles (id),
  created_at timestamptz not null default now()
);

alter table memories enable row level security;

create policy "members read memories"
  on memories for select
  using (is_couple_member(couple_id));

create policy "members insert memories"
  on memories for insert
  with check (is_couple_member(couple_id) and created_by = auth.uid());

create policy "authors update own memories"
  on memories for update
  using (created_by = auth.uid());

create policy "authors delete own memories"
  on memories for delete
  using (created_by = auth.uid());

-- Shared doodles (latest per couple shown in app/widget).
create table drawings (
  id uuid primary key default gen_random_uuid(),
  couple_id uuid not null references couples (id) on delete cascade,
  image_url text not null,
  created_by uuid not null references profiles (id),
  created_at timestamptz not null default now()
);

alter table drawings enable row level security;

create policy "members read drawings"
  on drawings for select
  using (is_couple_member(couple_id));

create policy "members insert drawings"
  on drawings for insert
  with check (is_couple_member(couple_id) and created_by = auth.uid());

create policy "authors delete own drawings"
  on drawings for delete
  using (created_by = auth.uid());

-- Custom countdowns (anniversaries, milestones).
create table countdowns (
  id uuid primary key default gen_random_uuid(),
  couple_id uuid not null references couples (id) on delete cascade,
  title text not null,
  target_date date not null,
  created_by uuid not null references profiles (id),
  created_at timestamptz not null default now()
);

alter table countdowns enable row level security;

create policy "members read countdowns"
  on countdowns for select
  using (is_couple_member(couple_id));

create policy "members create countdowns"
  on countdowns for insert
  with check (is_couple_member(couple_id) and created_by = auth.uid());

create policy "members delete countdowns"
  on countdowns for delete
  using (is_couple_member(couple_id));

-- Latest location per user (live distance). One row per user, upserted.
create table locations (
  user_id uuid primary key references profiles (id) on delete cascade,
  lat double precision not null,
  lng double precision not null,
  updated_at timestamptz not null default now()
);

alter table locations enable row level security;

create policy "users write own location"
  on locations for all
  using (user_id = auth.uid())
  with check (user_id = auth.uid());

create policy "users read partner location"
  on locations for select
  using (
    exists (
      select 1
      from couple_members m1
      join couple_members m2 on m1.couple_id = m2.couple_id
      where m1.user_id = auth.uid()
        and m2.user_id = locations.user_id
    )
  );

-- Expo push tokens, one per user.
create table push_tokens (
  user_id uuid primary key references profiles (id) on delete cascade,
  expo_push_token text not null,
  updated_at timestamptz not null default now()
);

alter table push_tokens enable row level security;

create policy "users manage own push token"
  on push_tokens for all
  using (user_id = auth.uid())
  with check (user_id = auth.uid());
