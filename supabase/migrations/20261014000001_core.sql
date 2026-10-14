-- Pair Buddy core schema: profiles, couples, membership, invites.
-- Apply order: 000001 -> 000002 -> 000003.

-- Helper: is the caller a member of this couple?
create or replace function is_couple_member(c uuid)
returns boolean
language sql
stable
as $$
  select exists (
    select 1 from couple_members
    where couple_id = c and user_id = auth.uid()
  );
$$;

-- Profiles: one row per auth user.
create table profiles (
  id uuid primary key references auth.users (id) on delete cascade,
  name text not null,
  avatar_url text,
  birthdate date,
  gender text,
  locale text not null default 'en',
  created_at timestamptz not null default now()
);

alter table profiles enable row level security;

create policy "users read own profile"
  on profiles for select
  using (auth.uid() = id);

create policy "users read partner profiles"
  on profiles for select
  using (
    exists (
      select 1
      from couple_members m1
      join couple_members m2 on m1.couple_id = m2.couple_id
      where m1.user_id = auth.uid()
        and m2.user_id = profiles.id
    )
  );

create policy "users insert own profile"
  on profiles for insert
  with check (auth.uid() = id);

create policy "users update own profile"
  on profiles for update
  using (auth.uid() = id);

-- Couples: the pair.
create table couples (
  id uuid primary key default gen_random_uuid(),
  anniversary_date date,
  relationship_type text,
  relationship_goal text,
  created_at timestamptz not null default now()
);

alter table couples enable row level security;

create policy "members read own couple"
  on couples for select
  using (is_couple_member(id));

create policy "authenticated users create couples"
  on couples for insert
  with check (auth.role() = 'authenticated');

create policy "members update own couple"
  on couples for update
  using (is_couple_member(id));

-- Membership.
create table couple_members (
  couple_id uuid not null references couples (id) on delete cascade,
  user_id uuid not null references profiles (id) on delete cascade,
  role text not null default 'member',
  joined_at timestamptz not null default now(),
  primary key (couple_id, user_id)
);

alter table couple_members enable row level security;

create policy "members read memberships"
  on couple_members for select
  using (is_couple_member(couple_id));

create policy "users join as themselves"
  on couple_members for insert
  with check (user_id = auth.uid());

-- Invites.
create table pairing_invites (
  code text primary key,
  couple_id uuid not null references couples (id) on delete cascade,
  created_by uuid not null references profiles (id) on delete cascade,
  expires_at timestamptz,
  status text not null default 'open',
  created_at timestamptz not null default now(),
  constraint pairing_invites_status_check
    check (status in ('open', 'accepted', 'expired'))
);

alter table pairing_invites enable row level security;

create policy "creators read own invites"
  on pairing_invites for select
  using (created_by = auth.uid());

create policy "creators create invites"
  on pairing_invites for insert
  with check (created_by = auth.uid() and status = 'open');

create policy "creators update own invites"
  on pairing_invites for update
  using (created_by = auth.uid());

-- Invite preview: lets a joiner see who invited them without
-- being able to list invites. Called with the code they received.
create or replace function get_invite_preview(invite_code text)
returns table (
  code text,
  inviter_name text,
  expires_at timestamptz,
  status text
)
language sql
stable
security definer
as $$
  select pi.code, p.name, pi.expires_at, pi.status
  from pairing_invites pi
  join profiles p on p.id = pi.created_by
  where pi.code = invite_code;
$$;

grant execute on function get_invite_preview(text) to anon, authenticated;

-- Redeem an invite: validates it, adds the caller as invitee,
-- and marks the invite accepted. One call joins the couple.
create or replace function redeem_invite(invite_code text)
returns uuid
language plpgsql
security definer
as $$
declare
  inv pairing_invites%rowtype;
begin
  select * into inv from pairing_invites where code = invite_code;

  if not found then
    raise exception 'Invite not found';
  end if;

  if inv.status <> 'open' then
    raise exception 'Invite is no longer open';
  end if;

  if inv.expires_at is not null and inv.expires_at < now() then
    update pairing_invites set status = 'expired' where code = invite_code;
    raise exception 'Invite has expired';
  end if;

  insert into couple_members (couple_id, user_id, role)
  values (inv.couple_id, auth.uid(), 'invitee')
  on conflict do nothing;

  update pairing_invites set status = 'accepted' where code = invite_code;

  return inv.couple_id;
end;
$$;

grant execute on function redeem_invite(text) to authenticated;
