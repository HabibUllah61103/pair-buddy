-- Atomic couple creation: inserts the couple row and the creator's
-- membership in one SECURITY DEFINER call. Needed because the couples
-- SELECT policy requires is_couple_member(id), so a plain
-- insert-then-select-then-insert-member flow 403s on the read-back.
create or replace function public.create_couple(
  p_anniversary_date date,
  p_relationship_type text,
  p_relationship_goal text
)
returns uuid
language plpgsql
security definer
set search_path = public
as $function$
declare
  v_couple_id uuid;
begin
  insert into couples (anniversary_date, relationship_type, relationship_goal)
  values (p_anniversary_date, p_relationship_type, p_relationship_goal)
  returning id into v_couple_id;

  insert into couple_members (couple_id, user_id, role)
  values (v_couple_id, auth.uid(), 'inviter');

  return v_couple_id;
end;
$function$;

grant execute on function public.create_couple(date, text, text) to authenticated;
