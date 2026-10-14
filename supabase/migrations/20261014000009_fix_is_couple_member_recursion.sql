-- Fix infinite RLS recursion causing 500s on profiles upsert (and any query
-- touching the partner-profiles policy):
--   profiles SELECT policy "users read partner profiles"
--     -> queries couple_members
--     -> couple_members SELECT policy "members read memberships"
--        calls is_couple_member(couple_id)
--     -> is_couple_member queries couple_members -> recursion
--     -> ERROR 54001 stack depth limit exceeded
-- Making is_couple_member SECURITY DEFINER lets its internal query bypass
-- RLS, breaking the cycle. This is the standard Supabase pattern for RLS
-- helper functions. auth.uid() still reads the request JWT correctly.
create or replace function public.is_couple_member(c uuid)
returns boolean
language sql
stable
security definer
set search_path = public
as $function$
  select exists (
    select 1 from couple_members
    where couple_id = c and user_id = auth.uid()
  );
$function$;
