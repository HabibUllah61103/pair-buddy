-- Pair Buddy rich chat: message types, media, replies, reactions.
-- Extends discussion_messages with WhatsApp-style features.
-- Depends on 20261014000005_discussion.sql (discussion_messages table)
-- and 20261014000003_storage.sql (object_couple_id function).
--
-- Apply order: after all 20261014 migrations.

-- Message type: text, image, voice, sticker.
alter table discussion_messages
  add column if not exists message_type text not null default 'text';

-- URL for image/voice media stored in the chat-media bucket.
alter table discussion_messages
  add column if not exists media_url text;

-- Quoted reply: references the original message. SET NULL on delete
-- so deleting the original doesn't cascade-delete the reply.
alter table discussion_messages
  add column if not exists reply_to_id uuid
  references discussion_messages (id) on delete set null;

-- Emoji reactions: { "❤️": ["uid1", "uid2"], "😂": ["uid3"] }.
alter table discussion_messages
  add column if not exists reactions jsonb not null default '{}';

-- Index for reply lookups.
create index if not exists discussion_messages_reply_idx
  on discussion_messages (reply_to_id);

-- Private bucket for chat voice notes and images.
-- Objects must be stored under "<couple_id>/..." so RLS can scope
-- access to couple members (same pattern as the memories bucket).
insert into storage.buckets (id, name, public)
values ('chat-media', 'chat-media', false)
on conflict (id) do nothing;

-- Chat media: private; couple members manage objects under "<couple_id>/...".
create policy "couple members read chat media"
  on storage.objects for select
  using (
    bucket_id = 'chat-media'
    and is_couple_member(object_couple_id(name))
  );

create policy "couple members upload chat media"
  on storage.objects for insert
  with check (
    bucket_id = 'chat-media'
    and is_couple_member(object_couple_id(name))
  );

create policy "couple members update chat media"
  on storage.objects for update
  using (
    bucket_id = 'chat-media'
    and is_couple_member(object_couple_id(name))
  );

create policy "couple members delete chat media"
  on storage.objects for delete
  using (
    bucket_id = 'chat-media'
    and is_couple_member(object_couple_id(name))
  );
