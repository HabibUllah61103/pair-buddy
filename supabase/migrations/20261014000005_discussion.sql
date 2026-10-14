-- Pair Buddy discussion chat: per-couple messages with read receipts.
-- Apply order: ...000004 -> 000005.
-- Depends on 20261014000001_core.sql (couples, profiles, is_couple_member).
--
-- Realtime prerequisite (run once per project):
--   alter publication supabase_realtime add table public.discussion_messages;
--
-- Ordering: tables first, then indexes, then RLS + policies. No functions.

-- One row per message. read_by accumulates the partner's uid once they
-- open the chat; senders never mark their own rows.
create table discussion_messages (
  id uuid primary key default gen_random_uuid(),
  couple_id uuid not null references couples (id) on delete cascade,
  sender_id uuid not null references profiles (id) on delete cascade,
  body text not null,
  read_by uuid[] not null default '{}',
  created_at timestamptz not null default now()
);

-- Paged reads filter by couple and order by recency.
create index discussion_messages_couple_idx
  on discussion_messages (couple_id, created_at desc);

alter table discussion_messages enable row level security;

create policy "members read discussion messages"
  on discussion_messages for select
  using (is_couple_member(couple_id));

create policy "members send discussion messages"
  on discussion_messages for insert
  with check (is_couple_member(couple_id) and sender_id = auth.uid());

-- Read receipts: either partner may append their uid to read_by.
-- Body text is never changed; the client only ever touches read_by.
create policy "members update read receipts"
  on discussion_messages for update
  using (is_couple_member(couple_id))
  with check (is_couple_member(couple_id));

create policy "senders delete own discussion messages"
  on discussion_messages for delete
  using (sender_id = auth.uid());
