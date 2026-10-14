-- Pair Buddy storage: avatars (public) and memories (private, couple-scoped).
-- Objects in "memories" must be stored under "<couple_id>/..." so the
-- RLS policies below can scope access to couple members.
-- Depends on 20261014000001_core.sql (is_couple_member).

insert into storage.buckets (id, name, public)
values ('avatars', 'avatars', true)
on conflict (id) do nothing;

insert into storage.buckets (id, name, public)
values ('memories', 'memories', false)
on conflict (id) do nothing;

-- Extracts the couple id from the first path segment of an object name.
-- Returns null for anything that is not a "<uuid>/..." path.
create or replace function object_couple_id(object_name text)
returns uuid
language plpgsql
stable
as $$
declare
  seg text := (storage.foldername(object_name))[1];
begin
  if seg ~ '^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$' then
    return seg::uuid;
  end if;
  return null;
end;
$$;

-- Avatars: public read; users manage objects under their own user-id folder.
create policy "public read avatars"
  on storage.objects for select
  using (bucket_id = 'avatars');

create policy "users upload own avatar"
  on storage.objects for insert
  with check (
    bucket_id = 'avatars'
    and (storage.foldername(name))[1] = auth.uid()::text
  );

create policy "users update own avatar"
  on storage.objects for update
  using (
    bucket_id = 'avatars'
    and (storage.foldername(name))[1] = auth.uid()::text
  );

create policy "users delete own avatar"
  on storage.objects for delete
  using (
    bucket_id = 'avatars'
    and (storage.foldername(name))[1] = auth.uid()::text
  );

-- Memories: private; couple members manage objects under "<couple_id>/...".
create policy "couple members read memory objects"
  on storage.objects for select
  using (
    bucket_id = 'memories'
    and is_couple_member(object_couple_id(name))
  );

create policy "couple members upload memory objects"
  on storage.objects for insert
  with check (
    bucket_id = 'memories'
    and is_couple_member(object_couple_id(name))
  );

create policy "couple members update memory objects"
  on storage.objects for update
  using (
    bucket_id = 'memories'
    and is_couple_member(object_couple_id(name))
  );

create policy "couple members delete memory objects"
  on storage.objects for delete
  using (
    bucket_id = 'memories'
    and is_couple_member(object_couple_id(name))
  );
