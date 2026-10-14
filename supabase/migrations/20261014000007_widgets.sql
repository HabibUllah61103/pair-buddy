-- Pair Buddy widget configuration: which home-screen widget each user picked.
-- Apply order: ...000006 -> 000007.
-- Depends on 20261014000001_core.sql (couples, profiles, is_couple_member).
--
-- One row per user (unique(user_id)): the widget on their own home screen.
-- The native widget reads its live content from SharedPreferences (written by
-- the JS bridge); this table only stores the user's choice + options.

create table widget_configs (
  id uuid primary key default gen_random_uuid(),
  couple_id uuid not null references couples (id) on delete cascade,
  user_id uuid not null references profiles (id) on delete cascade,
  widget_type text not null check (widget_type in ('countdown', 'spark', 'distance')),
  config jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now(),
  unique (user_id)
);

alter table widget_configs enable row level security;

-- Both partners can see each other's widget choice (useful for the settings UI).
create policy "couple members read widget configs"
  on widget_configs for select
  using (is_couple_member(couple_id));

-- Each user manages only their own widget choice.
create policy "users manage own widget config"
  on widget_configs for all
  using (auth.uid() = user_id)
  with check (auth.uid() = user_id);
