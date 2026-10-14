import type { SupabaseClient } from '@supabase/supabase-js';
import { isValidInviteCode } from './deeplinks';

// Metro/Babel resolve this at runtime; declared here for TypeScript.
declare function require(name: string): any;

/** 6 chars, unambiguous: no 0/O, 1/I. */
const CODE_ALPHABET = 'ABCDEFGHJKLMNPQRSTUVWXYZ23456789';
const CODE_LENGTH = 6;
const INVITE_TTL_DAYS = 7;

export const NOT_CONFIGURED =
  'Supabase is not configured yet. Add EXPO_PUBLIC_SUPABASE_URL and ' +
  'EXPO_PUBLIC_SUPABASE_ANON_KEY to app/.env — see supabase/README.md.';

export type PairResult<T> = { data: T | null; error: string | null };

export type Invite = {
  code: string;
  deepLink: string;
};

export type InvitePreview = {
  code: string;
  inviterName: string;
  expiresAt: string | null;
  status: string;
};

let cachedClient: SupabaseClient | null | undefined;

/**
 * Lazy Supabase access — never throws at import time when unconfigured.
 * Every public function degrades to a clear error instead.
 */
function getClient(): SupabaseClient | null {
  if (cachedClient !== undefined) return cachedClient;
  try {
    cachedClient = require('./supabase').supabase ?? null;
  } catch {
    cachedClient = null;
  }
  return cachedClient ?? null;
}

function toMessage(e: unknown, fallback: string): string {
  if (e instanceof Error && e.message) return e.message;
  if (typeof e === 'string' && e.length > 0) return e;
  return fallback;
}

async function getUserId(client: SupabaseClient): Promise<string | null> {
  const { data } = await client.auth.getUser();
  return data.user?.id ?? null;
}

/** Random 6-char invite code from the unambiguous alphabet. */
export function generateCode(): string {
  let code = '';
  for (let i = 0; i < CODE_LENGTH; i++) {
    code += CODE_ALPHABET[Math.floor(Math.random() * CODE_ALPHABET.length)];
  }
  return code;
}

export function inviteDeepLink(code: string): string {
  return `pairbuddy://invite/${code}`;
}

export function inviteShareText(code: string): string {
  return `Join me on Pair Buddy! ${inviteDeepLink(code)}`;
}

/** The caller's couple id, via their membership row. */
export async function getMyCoupleId(): Promise<PairResult<string>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const uid = await getUserId(client);
    if (!uid) return { data: null, error: 'You are not signed in.' };
    const { data, error } = await client
      .from('couple_members')
      .select('couple_id')
      .eq('user_id', uid)
      .limit(1)
      .maybeSingle();
    if (error) throw error;
    if (!data) return { data: null, error: 'No couple found for this account yet.' };
    return { data: (data as { couple_id: string }).couple_id, error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not load your couple.') };
  }
}

/**
 * Create a new open invite for a couple. Callers can only create invites
 * for themselves (RLS: created_by = auth.uid(), status must be 'open').
 */
export async function createInvite(coupleId: string): Promise<PairResult<Invite>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const uid = await getUserId(client);
    if (!uid) return { data: null, error: 'You are not signed in.' };
    const code = generateCode();
    const expiresAt = new Date(Date.now() + INVITE_TTL_DAYS * 24 * 60 * 60 * 1000).toISOString();
    const { error } = await client.from('pairing_invites').insert({
      code,
      couple_id: coupleId,
      created_by: uid,
      expires_at: expiresAt,
      status: 'open',
    });
    if (error) throw error;
    return { data: { code, deepLink: inviteDeepLink(code) }, error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not create an invite.') };
  }
}

/** The caller's most recent still-open invite for this couple, if any. */
export async function getOpenInvite(coupleId: string): Promise<PairResult<Invite>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const uid = await getUserId(client);
    if (!uid) return { data: null, error: 'You are not signed in.' };
    const { data, error } = await client
      .from('pairing_invites')
      .select('code')
      .eq('couple_id', coupleId)
      .eq('created_by', uid)
      .eq('status', 'open')
      .gt('expires_at', new Date().toISOString())
      .order('created_at', { ascending: false })
      .limit(1)
      .maybeSingle();
    if (error) throw error;
    if (!data) return { data: null, error: null };
    const code = (data as { code: string }).code;
    return { data: { code, deepLink: inviteDeepLink(code) }, error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not load your invite.') };
  }
}

/** Reuse the open invite if one exists, otherwise create a fresh one. */
export async function ensureInvite(coupleId: string): Promise<PairResult<Invite>> {
  const existing = await getOpenInvite(coupleId);
  if (existing.error || existing.data) return existing;
  return createInvite(coupleId);
}

/**
 * Retire an invite (e.g. when regenerating). Creators may update their own
 * invites (RLS: created_by = auth.uid()).
 */
export async function retireInvite(code: string): Promise<PairResult<null>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const uid = await getUserId(client);
    if (!uid) return { data: null, error: 'You are not signed in.' };
    const { error } = await client
      .from('pairing_invites')
      .update({ status: 'expired' })
      .eq('code', code)
      .eq('created_by', uid);
    if (error) throw error;
    return { data: null, error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not retire the invite.') };
  }
}

/**
 * Preview an invite by code. Goes through the SECURITY DEFINER
 * get_invite_preview() RPC — invites are never queried directly, so codes
 * cannot be enumerated.
 */
export async function previewInvite(rawCode: string): Promise<PairResult<InvitePreview>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  const code = rawCode.trim().toUpperCase();
  if (!isValidInviteCode(code)) {
    return { data: null, error: 'That code does not look valid.' };
  }
  try {
    const { data, error } = await client.rpc('get_invite_preview', { invite_code: code });
    if (error) throw error;
    const row = (data as Array<{
      code: string;
      inviter_name: string;
      expires_at: string | null;
      status: string;
    }> | null)?.[0];
    if (!row) return { data: null, error: 'No invite found for that code.' };
    if (row.status !== 'open') {
      return { data: null, error: 'This invite is no longer open.' };
    }
    if (row.expires_at && new Date(row.expires_at).getTime() < Date.now()) {
      return { data: null, error: 'This invite has expired.' };
    }
    return {
      data: {
        code: row.code,
        inviterName: row.inviter_name,
        expiresAt: row.expires_at,
        status: row.status,
      },
      error: null,
    };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not look up that invite.') };
  }
}

/**
 * Join a couple via invite code. The SECURITY DEFINER redeem_invite()
 * function validates the invite, adds the caller as invitee, and marks the
 * invite accepted — all in one call.
 */
export async function redeemInvite(rawCode: string): Promise<PairResult<{ coupleId: string }>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  const code = rawCode.trim().toUpperCase();
  if (!isValidInviteCode(code)) {
    return { data: null, error: 'That code does not look valid.' };
  }
  try {
    const { data, error } = await client.rpc('redeem_invite', { invite_code: code });
    if (error) throw error;
    const coupleId = data as string | null;
    if (!coupleId) return { data: null, error: 'Could not join with that code.' };
    return { data: { coupleId }, error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not join with that code.') };
  }
}
