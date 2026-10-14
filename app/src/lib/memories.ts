import type { SupabaseClient } from '@supabase/supabase-js';
import { getMyCoupleId, NOT_CONFIGURED, type PairResult } from './pairing';

// Metro/Babel resolve this at runtime; declared here for TypeScript.
declare function require(name: string): any;

/** Signed URLs stay valid for 7 days; refreshed on every list call. */
const SIGNED_URL_TTL_SECONDS = 60 * 60 * 24 * 7;
const BUCKET = 'memories';

export type Memory = {
  id: string;
  couple_id: string;
  /** Storage object path, e.g. "<couple_id>/1699999999999-ab12cd.jpg". */
  image_path: string;
  caption: string | null;
  created_by: string;
  created_at: string;
  creator_name: string;
  /** Resolved at read time; null when the signed URL could not be minted. */
  signed_url: string | null;
};

type MemoryRow = {
  id: string;
  couple_id: string;
  image_url: string;
  caption: string | null;
  created_by: string;
  created_at: string;
  profiles: { name: string } | { name: string }[] | null;
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

function creatorName(row: MemoryRow): string {
  const p = row.profiles;
  if (Array.isArray(p)) return p[0]?.name ?? 'Partner';
  return p?.name ?? 'Partner';
}

async function signedUrl(
  client: SupabaseClient,
  path: string,
): Promise<string | null> {
  const { data, error } = await client.storage
    .from(BUCKET)
    .createSignedUrl(path, SIGNED_URL_TTL_SECONDS);
  if (error || !data?.signedUrl) return null;
  return data.signedUrl;
}

function toMemory(row: MemoryRow, url: string | null): Memory {
  return {
    id: row.id,
    couple_id: row.couple_id,
    image_path: row.image_url,
    caption: row.caption,
    created_by: row.created_by,
    created_at: row.created_at,
    creator_name: creatorName(row),
    signed_url: url,
  };
}

/**
 * Newest-first memories for my couple, with creator names and fresh
 * 7-day signed URLs for the private bucket.
 */
export async function listMemories(
  limit = 50,
): Promise<PairResult<Memory[]>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const couple = await getMyCoupleId();
    if (couple.error || !couple.data) {
      return { data: null, error: couple.error ?? 'No couple found.' };
    }
    const { data, error } = await client
      .from('memories')
      .select('id,couple_id,image_url,caption,created_by,created_at,profiles(name)')
      .eq('couple_id', couple.data)
      .order('created_at', { ascending: false })
      .limit(limit);
    if (error) throw error;
    const rows = (data ?? []) as MemoryRow[];
    const urls = await Promise.all(rows.map((r) => signedUrl(client, r.image_url)));
    return {
      data: rows.map((r, i) => toMemory(r, urls[i])),
      error: null,
    };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not load memories.') };
  }
}

/** Mint a fresh 7-day signed URL for one storage path. */
export async function getSignedUrl(
  path: string,
): Promise<PairResult<string>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const url = await signedUrl(client, path);
    if (!url) return { data: null, error: 'Could not create a signed URL.' };
    return { data: url, error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not create a signed URL.') };
  }
}

function randomSuffix(): string {
  return Math.random().toString(36).slice(2, 8);
}

/**
 * Upload a photo and create its memory row. The object lives under
 * "<couple_id>/..." as required by the storage RLS policies; the row
 * stores the path, and signed URLs are resolved at read time.
 */
export async function addMemory(
  imageUri: string,
  caption?: string,
): Promise<PairResult<Memory>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const couple = await getMyCoupleId();
    if (couple.error || !couple.data) {
      return { data: null, error: couple.error ?? 'No couple found.' };
    }
    const uid = await getUserId(client);
    if (!uid) return { data: null, error: 'You are not signed in.' };
    const coupleId = couple.data;

    const bytes = await (await fetch(imageUri)).arrayBuffer();
    const path = `${coupleId}/${Date.now()}-${randomSuffix()}.jpg`;
    const { error: uploadError } = await client.storage
      .from(BUCKET)
      .upload(path, bytes, { contentType: 'image/jpeg', upsert: false });
    if (uploadError) throw uploadError;

    const { data, error } = await client
      .from('memories')
      .insert({
        couple_id: coupleId,
        image_url: path,
        caption: caption?.trim() ? caption.trim() : null,
        created_by: uid,
      })
      .select('id,couple_id,image_url,caption,created_by,created_at,profiles(name)')
      .single();
    if (error) {
      // Roll back the orphaned object; the row is what matters to the user.
      await client.storage.from(BUCKET).remove([path]);
      throw error;
    }
    const row = data as MemoryRow;
    const url = await signedUrl(client, row.image_url);
    return { data: toMemory(row, url), error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not save this memory.') };
  }
}

/**
 * Delete a memory: row first (RLS allows authors only), then the storage
 * object. A storage failure after a successful row delete is reported but
 * does not fail the delete — the photo is already gone from the app.
 */
export async function deleteMemory(
  id: string,
): Promise<PairResult<{ storageCleaned: boolean }>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const { data: row, error: fetchError } = await client
      .from('memories')
      .select('image_url')
      .eq('id', id)
      .single();
    if (fetchError) throw fetchError;

    const { error: deleteError } = await client
      .from('memories')
      .delete()
      .eq('id', id);
    if (deleteError) throw deleteError;

    const path = (row as { image_url: string }).image_url;
    const { error: storageError } = await client.storage
      .from(BUCKET)
      .remove([path]);
    if (storageError) {
      return {
        data: { storageCleaned: false },
        error: 'Memory deleted, but its photo could not be removed from storage.',
      };
    }
    return { data: { storageCleaned: true }, error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not delete this memory.') };
  }
}

/** The signed-in user's id, for "is this mine" checks in the UI. */
export async function getMyUserId(): Promise<string | null> {
  const client = getClient();
  if (!client) return null;
  return getUserId(client);
}
