-- Pair Buddy date planner schema: idea bank + user plans.
-- Apply order: ...000003 -> 000004.
-- Depends on 20261014000001_core.sql (couples, profiles, is_couple_member).
--
-- Ordering: tables first, then RLS + policies. No functions in this file.

-- Curated date idea bank. Read-only for clients; seeded via service role / SQL
-- (see supabase/seed/0002_date_ideas.sql). No insert/update/delete policies
-- by design: the bank is maintained by the project, not by users.
create table date_ideas (
  id uuid primary key default gen_random_uuid(),
  title text not null,
  description text not null,
  category text not null,
  created_at timestamptz not null default now()
);

alter table date_ideas enable row level security;

create policy "authenticated users read idea bank"
  on date_ideas for select
  to authenticated
  using (true);

-- A couple's saved date plans (from the idea bank or their own creations).
create table date_plans (
  id uuid primary key default gen_random_uuid(),
  couple_id uuid not null references couples (id) on delete cascade,
  title text not null,
  description text,
  category text,
  planned_for date,
  created_by uuid not null references profiles (id),
  created_at timestamptz not null default now()
);

alter table date_plans enable row level security;

create policy "members read date plans"
  on date_plans for select
  using (is_couple_member(couple_id));

create policy "members create date plans"
  on date_plans for insert
  with check (is_couple_member(couple_id) and created_by = auth.uid());

create policy "authors update own date plans"
  on date_plans for update
  using (created_by = auth.uid());

create policy "authors delete own date plans"
  on date_plans for delete
  using (created_by = auth.uid());
