-- When a user redeems an invite, they already have their own single-member
-- couple from onboarding. Without cleanup they'd belong to two couples and
-- getMyCoupleId() would pick one arbitrarily. Leave the orphaned
-- single-member couple(s) behind and delete couples left with no members.
create or replace function public.redeem_invite(invite_code text)
returns uuid
language plpgsql
security definer
set search_path = public
as $function$
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

  delete from couple_members
  where user_id = auth.uid()
    and couple_id <> inv.couple_id
    and couple_id in (
      select couple_id from couple_members
      group by couple_id having count(*) = 1
    );

  delete from couples where id not in (select couple_id from couple_members);

  update pairing_invites set status = 'accepted' where code = invite_code;

  return inv.couple_id;
end;
$function$;
