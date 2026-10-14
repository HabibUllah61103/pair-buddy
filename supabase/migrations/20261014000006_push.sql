-- Pair Buddy push notification token storage.
-- Apply order: ...000005 -> 000006.
--
-- NOTE: push_tokens was already created by 20261014000002_social.sql (PR #3).
-- This migration is an idempotent guard so the numbered sequence stays
-- self-consistent if any piece is missing.

create table if not exists push_tokens (
  user_id uuid primary key references profiles (id) on delete cascade,
  expo_push_token text not null,
  updated_at timestamptz not null default now()
);

alter table push_tokens enable row level security;

-- Each user manages only their own token row.
do $$
begin
  if not exists (
    select 1 from pg_policies
    where schemaname = 'public'
      and tablename = 'push_tokens'
      and policyname = 'users manage own push token'
  ) then
    create policy "users manage own push token"
      on push_tokens for all
      using (auth.uid() = user_id)
      with check (auth.uid() = user_id);
  end if;
end
$$;
