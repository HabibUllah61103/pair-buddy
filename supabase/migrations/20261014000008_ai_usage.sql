-- Pair Buddy AI planner usage log (rate limiting).
-- Apply order: ...000007 -> 000008.
-- Depends on 20261014000001_core.sql (profiles).
--
-- One row per successful generation. Only the generate-date-plan edge
-- function writes (service role); clients can read their own rows but never
-- write from the client.

create table ai_generations (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references profiles (id) on delete cascade,
  created_at timestamptz not null default now()
);

create index ai_generations_user_created_idx
  on ai_generations (user_id, created_at desc);

alter table ai_generations enable row level security;

-- Users can see their own usage. There are intentionally no insert, update,
-- or delete policies: rows are written only by the edge function using the
-- service role, so a client can never forge or erase usage.
create policy "users read own ai usage"
  on ai_generations for select
  to authenticated
  using (auth.uid() = user_id);
