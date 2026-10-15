import type { RealtimeChannel, SupabaseClient } from '@supabase/supabase-js';
import { getMyCoupleId, NOT_CONFIGURED, type PairResult } from './pairing';

// Metro/Babel resolve this at runtime; declared here for TypeScript.
declare function require(name: string): any;

/**
 * Drawings are stored as SVG data URLs directly in drawings.image_url
 * (the column is text). Doodles are tiny, so this avoids bucket sprawl
 * and keeps every drawing realtime-friendly. See docs/DRAWING.md.
 *
 * Realtime prerequisite (run once per project):
 *   alter publication supabase_realtime add table public.drawings;
 */
export type Drawing = {
  id: string;
  couple_id: string;
  /** SVG data URL, e.g. "data:image/svg+xml;utf8,<svg ...>...</svg>". */
  image_url: string;
  created_by: string;
  created_at: string;
  creator_name: string;
  deleted_at: string | null;
};

type DrawingRow = {
  id: string;
  couple_id: string;
  image_url: string;
  created_by: string;
  created_at: string;
  deleted_at: string | null;
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

function creatorName(row: DrawingRow): string {
  const p = row.profiles;
  if (Array.isArray(p)) return p[0]?.name ?? 'Partner';
  return p?.name ?? 'Partner';
}

function toDrawing(row: DrawingRow): Drawing {
  return {
    id: row.id,
    couple_id: row.couple_id,
    image_url: row.image_url,
    created_by: row.created_by,
    created_at: row.created_at,
    creator_name: creatorName(row),
    deleted_at: row.deleted_at ?? null,
  };
}

const SELECT =
  'id,couple_id,image_url,created_by,created_at,deleted_at,profiles(name)';

/** Save the canvas as a new drawing for my couple. */
export async function saveDrawing(
  dataUrl: string,
): Promise<PairResult<Drawing>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    if (!dataUrl.startsWith('data:image/svg+xml')) {
      return { data: null, error: 'That drawing could not be read. Try again.' };
    }
    const couple = await getMyCoupleId();
    if (couple.error || !couple.data) {
      return { data: null, error: couple.error ?? 'No couple found.' };
    }
    const uid = await getUserId(client);
    if (!uid) return { data: null, error: 'You are not signed in.' };
    const { data, error } = await client
      .from('drawings')
      .insert({
        couple_id: couple.data,
        image_url: dataUrl,
        created_by: uid,
      })
      .select(SELECT)
      .single();
    if (error) throw error;
    return { data: toDrawing(data as DrawingRow), error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not send your drawing.') };
  }
}

/** Newest drawing for my couple (mine or my partner's). */
export async function getLatestDrawing(): Promise<PairResult<Drawing>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const couple = await getMyCoupleId();
    if (couple.error || !couple.data) {
      return { data: null, error: couple.error ?? 'No couple found.' };
    }
    const { data, error } = await client
      .from('drawings')
      .select(SELECT)
      .eq('couple_id', couple.data)
      .is('deleted_at', null)
      .order('created_at', { ascending: false })
      .limit(1)
      .maybeSingle();
    if (error) throw error;
    return { data: data ? toDrawing(data as DrawingRow) : null, error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not load drawings.') };
  }
}

/** Recent drawings for my couple, newest first. */
export async function getDrawings(
  limit = 20,
): Promise<PairResult<Drawing[]>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const couple = await getMyCoupleId();
    if (couple.error || !couple.data) {
      return { data: null, error: couple.error ?? 'No couple found.' };
    }
    const { data, error } = await client
      .from('drawings')
      .select(SELECT)
      .eq('couple_id', couple.data)
      .is('deleted_at', null)
      .order('created_at', { ascending: false })
      .limit(limit);
    if (error) throw error;
    const rows = (data as DrawingRow[] | null) ?? [];
    return { data: rows.map(toDrawing), error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not load drawings.') };
  }
}

/**
 * Live updates for new drawings in my couple. Resolves to an unsubscribe
 * function. Requires drawings in the supabase_realtime publication.
 */
export async function subscribeDrawings(
  onInsert: (drawing: Drawing) => void,
): Promise<PairResult<() => void>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const couple = await getMyCoupleId();
    if (couple.error || !couple.data) {
      return { data: null, error: couple.error ?? 'No couple found.' };
    }
    const coupleId = couple.data;
    const channel: RealtimeChannel = client
      .channel(`drawings:${coupleId}`)
      .on(
        'postgres_changes',
        {
          event: 'INSERT',
          schema: 'public',
          table: 'drawings',
          filter: `couple_id=eq.${coupleId}`,
        },
        async (payload) => {
          const row = payload.new as {
            id: string;
            created_by: string;
            image_url: string;
            created_at: string;
          };
          // Hydrate the creator name for the incoming row.
          const { data } = await client
            .from('profiles')
            .select('name')
            .eq('id', row.created_by)
            .maybeSingle();
          onInsert({
            id: row.id,
            couple_id: coupleId,
            image_url: row.image_url,
            created_by: row.created_by,
            created_at: row.created_at,
            creator_name:
              (data as { name: string } | null)?.name ?? 'Partner',
            deleted_at: null,
          });
        },
      )
      .subscribe();
    return {
      data: () => {
        client.removeChannel(channel);
      },
      error: null,
    };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not watch for drawings.') };
  }
}

/** Soft-delete one of my own drawings (sets deleted_at; RLS allows authors only). */
export async function deleteDrawing(id: string): Promise<PairResult<null>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const { error } = await client
      .from('drawings')
      .update({ deleted_at: new Date().toISOString() })
      .eq('id', id);
    if (error) throw error;
    return { data: null, error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not delete this drawing.') };
  }
}

/** The signed-in user's id, for "is this mine" checks in the UI. */
export async function getMyUserId(): Promise<string | null> {
  const client = getClient();
  if (!client) return null;
  return getUserId(client);
}
