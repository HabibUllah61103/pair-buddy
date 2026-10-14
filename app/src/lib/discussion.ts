import type { RealtimeChannel, SupabaseClient } from '@supabase/supabase-js';
import { getMyCoupleId, NOT_CONFIGURED, type PairResult } from './pairing';

// Metro/Babel resolve this at runtime; declared here for TypeScript.
declare function require(name: string): any;

/**
 * Discussion chat: one message row per send, with read receipts in
 * read_by (array of uids that have opened the chat since the send).
 * Only non-senders ever mark rows read, so the two partners touch
 * disjoint row sets and client-side appends do not clobber.
 *
 * Realtime prerequisite (run once per project):
 *   alter publication supabase_realtime add table public.discussion_messages;
 * See docs/DISCUSSION.md.
 */
export type DiscussionMessage = {
  id: string;
  couple_id: string;
  sender_id: string;
  body: string;
  /** Uids that have seen this message. */
  read_by: string[];
  created_at: string;
  sender_name: string;
};

type MessageRow = {
  id: string;
  couple_id: string;
  sender_id: string;
  body: string;
  read_by: string[] | null;
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

function senderName(row: MessageRow): string {
  const p = row.profiles;
  if (Array.isArray(p)) return p[0]?.name ?? 'Partner';
  return p?.name ?? 'Partner';
}

function toDiscussionMessage(row: MessageRow): DiscussionMessage {
  return {
    id: row.id,
    couple_id: row.couple_id,
    sender_id: row.sender_id,
    body: row.body,
    read_by: row.read_by ?? [],
    created_at: row.created_at,
    sender_name: senderName(row),
  };
}

const SELECT =
  'id,couple_id,sender_id,body,read_by,created_at,profiles(name)';

/** The signed-in user's id, for "is this mine" checks in the UI. */
export async function getMyUserId(): Promise<string | null> {
  const client = getClient();
  if (!client) return null;
  return getUserId(client);
}

/** The other member of my couple (id + display name), or null unpaired. */
export async function getPartner(): Promise<
  PairResult<{ id: string; name: string } | null>
> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const couple = await getMyCoupleId();
    if (couple.error || !couple.data) {
      return { data: null, error: couple.error ?? 'No couple found.' };
    }
    const uid = await getUserId(client);
    if (!uid) return { data: null, error: 'You are not signed in.' };
    const { data, error } = await client
      .from('couple_members')
      .select('user_id,profiles(name)')
      .eq('couple_id', couple.data)
      .neq('user_id', uid)
      .limit(1)
      .maybeSingle();
    if (error) throw error;
    if (!data) return { data: null, error: null };
    const p = data.profiles as { name: string } | { name: string }[] | null;
    const name = Array.isArray(p) ? (p[0]?.name ?? 'Partner') : (p?.name ?? 'Partner');
    return { data: { id: data.user_id as string, name }, error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not find your partner.') };
  }
}

/**
 * Newest-first page of messages for my couple (default 100).
 * The inverted FlatList in discussion.tsx consumes this order directly.
 */
export async function getMessages(
  limit = 100,
): Promise<PairResult<DiscussionMessage[]>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const couple = await getMyCoupleId();
    if (couple.error || !couple.data) {
      return { data: null, error: couple.error ?? 'No couple found.' };
    }
    const { data, error } = await client
      .from('discussion_messages')
      .select(SELECT)
      .eq('couple_id', couple.data)
      .order('created_at', { ascending: false })
      .limit(limit);
    if (error) throw error;
    return {
      data: (data as MessageRow[]).map(toDiscussionMessage),
      error: null,
    };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not load messages.') };
  }
}

/**
 * Send a message to my couple. Empty bodies are rejected client-side.
 * Direct write — used by the outbox replay. Screens should call
 * sendMessage(), which queues this when offline.
 */
export async function sendMessageRaw(
  body: string,
): Promise<PairResult<DiscussionMessage>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const text = body.trim();
    if (!text) return { data: null, error: 'Write something first.' };
    const couple = await getMyCoupleId();
    if (couple.error || !couple.data) {
      return { data: null, error: couple.error ?? 'No couple found.' };
    }
    const uid = await getUserId(client);
    if (!uid) return { data: null, error: 'You are not signed in.' };
    const { data, error } = await client
      .from('discussion_messages')
      .insert({ couple_id: couple.data, sender_id: uid, body: text })
      .select(SELECT)
      .single();
    if (error) throw error;
    return { data: toDiscussionMessage(data as MessageRow), error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not send your message.') };
  }
}

/**
 * Send a message to my couple. Empty bodies are rejected client-side.
 * When the device is offline the message is queued on this device and sent
 * when you reconnect (see docs/OFFLINE.md): the result then carries
 * `queued: true` and a friendly `error` message, which the chat screen
 * already displays through its existing error path (the draft is kept).
 */
export async function sendMessage(
  body: string,
): Promise<PairResult<DiscussionMessage> & { queued: boolean }> {
  const { runOrQueue } = require('./offline') as typeof import('./offline');
  return runOrQueue('discussion-send', { body }, () => sendMessageRaw(body));
}

/**
 * Mark messages as read: appends my uid to read_by for the partner's
 * messages I have not seen yet. No-op when there is nothing unread.
 */
export async function markRead(
  messages: DiscussionMessage[],
): Promise<PairResult<null>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const uid = await getUserId(client);
    if (!uid) return { data: null, error: 'You are not signed in.' };
    const unread = messages.filter(
      (m) => m.sender_id !== uid && !m.read_by.includes(uid),
    );
    for (const m of unread) {
      const { error } = await client
        .from('discussion_messages')
        .update({ read_by: [...m.read_by, uid] })
        .eq('id', m.id);
      if (error) throw error;
    }
    return { data: null, error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not mark messages read.') };
  }
}

/**
 * Live inserts for my couple. Resolves to an unsubscribe function.
 * Requires discussion_messages in the supabase_realtime publication.
 */
export async function subscribeMessages(
  onInsert: (message: DiscussionMessage) => void,
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
      .channel(`discussion:${coupleId}`)
      .on(
        'postgres_changes',
        {
          event: 'INSERT',
          schema: 'public',
          table: 'discussion_messages',
          filter: `couple_id=eq.${coupleId}`,
        },
        async (payload) => {
          const row = payload.new as {
            id: string;
            sender_id: string;
            body: string;
            read_by: string[] | null;
            created_at: string;
          };
          const { data } = await client
            .from('profiles')
            .select('name')
            .eq('id', row.sender_id)
            .maybeSingle();
          onInsert({
            id: row.id,
            couple_id: coupleId,
            sender_id: row.sender_id,
            body: row.body,
            read_by: row.read_by ?? [],
            created_at: row.created_at,
            sender_name:
              (data as { name: string } | null)?.name ?? 'Partner',
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
    return { data: null, error: toMessage(e, 'Could not watch for messages.') };
  }
}
