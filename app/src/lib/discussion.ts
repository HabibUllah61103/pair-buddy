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
 * Rich messages (2026-10-15): message_type distinguishes text/image/
 * voice/sticker. Media lives in the private `chat-media` bucket under
 * "<couple_id>/..." paths. Reactions are a JSONB map of emoji -> uid[].
 *
 * Realtime prerequisite (run once per project):
 *   alter publication supabase_realtime add table public.discussion_messages;
 * See docs/DISCUSSION.md.
 */
export type MessageType = 'text' | 'image' | 'voice' | 'sticker';

export type DiscussionMessage = {
  id: string;
  couple_id: string;
  sender_id: string;
  body: string;
  /** Uids that have seen this message. */
  read_by: string[];
  created_at: string;
  sender_name: string;
  message_type: MessageType;
  /** Signed URL for image/voice media (null for text/sticker). */
  media_url: string | null;
  reply_to_id: string | null;
  /** Emoji -> uids that reacted. */
  reactions: Record<string, string[]>;
  /** Soft-delete timestamp; null when not deleted. */
  deleted_at: string | null;
  /** Last edit timestamp; null when never edited. */
  edited_at: string | null;
  /** Populated client-side for quoted replies. */
  reply_to?: {
    id: string;
    sender_name: string;
    body: string;
    message_type: MessageType;
  } | null;
};

type MessageRow = {
  id: string;
  couple_id: string;
  sender_id: string;
  body: string;
  read_by: string[] | null;
  created_at: string;
  message_type: string | null;
  media_url: string | null;
  reply_to_id: string | null;
  reactions: Record<string, string[]> | null;
  deleted_at: string | null;
  edited_at: string | null;
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
  const mt = row.message_type as MessageType | null;
  return {
    id: row.id,
    couple_id: row.couple_id,
    sender_id: row.sender_id,
    body: row.body,
    read_by: row.read_by ?? [],
    created_at: row.created_at,
    sender_name: senderName(row),
    message_type: mt === 'image' || mt === 'voice' || mt === 'sticker' ? mt : 'text',
    media_url: row.media_url ?? null,
    reply_to_id: row.reply_to_id ?? null,
    reactions: row.reactions ?? {},
    deleted_at: row.deleted_at ?? null,
    edited_at: row.edited_at ?? null,
  };
}

const SELECT =
  'id,couple_id,sender_id,body,read_by,created_at,message_type,media_url,reply_to_id,reactions,deleted_at,edited_at,profiles(name)';

/** The signed-in user's id, for "is this mine" checks in the UI. */
export async function getMyUserId(): Promise<string | null> {
  const client = getClient();
  if (!client) return null;
  return getUserId(client);
}

/** The other member of my couple (full profile), or null unpaired. */
export async function getPartner(): Promise<
  PairResult<{
    id: string;
    name: string;
    avatar_url: string | null;
    birthdate: string | null;
    gender: string | null;
    locale: string | null;
  } | null>
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
      .select('user_id,profiles(name,avatar_url,birthdate,gender,locale)')
      .eq('couple_id', couple.data)
      .neq('user_id', uid)
      .limit(1)
      .maybeSingle();
    if (error) throw error;
    if (!data) return { data: null, error: null };
    const p = data.profiles as {
      name: string;
      avatar_url: string | null;
      birthdate: string | null;
      gender: string | null;
      locale: string | null;
    } | {
      name: string;
      avatar_url: string | null;
      birthdate: string | null;
      gender: string | null;
      locale: string | null;
    }[] | null;
    const profile = Array.isArray(p) ? p[0] : p;
    const name = profile?.name ?? 'Partner';
    const avatar_url = profile?.avatar_url ?? null;
    return {
      data: {
        id: data.user_id as string,
        name,
        avatar_url,
        birthdate: profile?.birthdate ?? null,
        gender: profile?.gender ?? null,
        locale: profile?.locale ?? null,
      },
      error: null,
    };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not find your partner.') };
  }
}

/** Fetch reply previews for messages that quote others. */
async function attachReplyPreviews(
  client: SupabaseClient,
  messages: DiscussionMessage[],
): Promise<void> {
  const ids = [...new Set(messages.map((m) => m.reply_to_id).filter(Boolean))] as string[];
  if (ids.length === 0) return;
  const { data, error } = await client
    .from('discussion_messages')
    .select('id,sender_id,body,message_type,profiles(name)')
    .in('id', ids);
  if (error || !data) return;
  const byId = new Map(
    (data as MessageRow[]).map((r) => [
      r.id,
      {
        id: r.id,
        sender_name: senderName(r),
        body: r.body,
        message_type: (r.message_type as MessageType) ?? 'text',
      },
    ]),
  );
  for (const m of messages) {
    m.reply_to = m.reply_to_id ? (byId.get(m.reply_to_id) ?? null) : null;
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
    const messages = (data as MessageRow[]).map(toDiscussionMessage);
    await attachReplyPreviews(client, messages);
    return { data: messages, error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not load messages.') };
  }
}

export type SendRichOptions = {
  body: string;
  message_type?: MessageType;
  media_url?: string | null;
  reply_to_id?: string | null;
};

/**
 * Send a rich message (text/image/voice/sticker). Direct write —
 * rich messages skip the offline queue since they carry media uploads.
 */
export async function sendRichMessage(
  opts: SendRichOptions,
): Promise<PairResult<DiscussionMessage>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const text = opts.body.trim();
    if (!text && opts.message_type !== 'sticker') {
      return { data: null, error: 'Write something first.' };
    }
    const couple = await getMyCoupleId();
    if (couple.error || !couple.data) {
      return { data: null, error: couple.error ?? 'No couple found.' };
    }
    const uid = await getUserId(client);
    if (!uid) return { data: null, error: 'You are not signed in.' };
    const { data, error } = await client
      .from('discussion_messages')
      .insert({
        couple_id: couple.data,
        sender_id: uid,
        body: text,
        message_type: opts.message_type ?? 'text',
        media_url: opts.media_url ?? null,
        reply_to_id: opts.reply_to_id ?? null,
      })
      .select(SELECT)
      .single();
    if (error) throw error;
    const msg = toDiscussionMessage(data as MessageRow);
    await attachReplyPreviews(client, [msg]);
    return { data: msg, error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not send your message.') };
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
  return sendRichMessage({ body, message_type: 'text' });
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
 * Upload a chat media file (image or voice note) to the private
 * `chat-media` bucket under "<couple_id>/<uuid>.<ext>".
 * Returns a signed URL valid for 7 days.
 */
export async function uploadChatMedia(
  localUri: string,
  kind: 'image' | 'voice',
): Promise<PairResult<string>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const couple = await getMyCoupleId();
    if (couple.error || !couple.data) {
      return { data: null, error: couple.error ?? 'No couple found.' };
    }
    const ext = kind === 'voice' ? 'm4a' : 'jpg';
    const contentType = kind === 'voice' ? 'audio/mp4' : 'image/jpeg';
    const path = `${couple.data}/${Date.now()}-${Math.random().toString(36).slice(2)}.${ext}`;

    const response = await fetch(localUri);
    const blob = await response.blob();

    const { error: uploadError } = await client.storage
      .from('chat-media')
      .upload(path, blob, { contentType, upsert: false });
    if (uploadError) throw uploadError;

    const { data, error: signError } = await client.storage
      .from('chat-media')
      .createSignedUrl(path, 60 * 60 * 24 * 7); // 7 days
    if (signError) throw signError;
    return { data: data.signedUrl, error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not upload media.') };
  }
}

/**
 * Toggle an emoji reaction on a message. Adds my uid to the emoji's
 * list, or removes it if already present. Empty lists are pruned.
 */
export async function toggleReaction(
  messageId: string,
  emoji: string,
): Promise<PairResult<Record<string, string[]>>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const uid = await getUserId(client);
    if (!uid) return { data: null, error: 'You are not signed in.' };
    const { data: row, error: fetchError } = await client
      .from('discussion_messages')
      .select('reactions')
      .eq('id', messageId)
      .single();
    if (fetchError) throw fetchError;
    const reactions: Record<string, string[]> =
      (row as { reactions: Record<string, string[]> | null }).reactions ?? {};
    const list = reactions[emoji] ?? [];
    if (list.includes(uid)) {
      reactions[emoji] = list.filter((id) => id !== uid);
      if (reactions[emoji].length === 0) delete reactions[emoji];
    } else {
      reactions[emoji] = [...list, uid];
    }
    const { error: updateError } = await client
      .from('discussion_messages')
      .update({ reactions })
      .eq('id', messageId);
    if (updateError) throw updateError;
    return { data: reactions, error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not react.') };
  }
}

/**
 * Soft-delete a message (sets deleted_at). Senders can delete their own messages.
 * The message remains in history as a "deleted" placeholder.
 */
export async function deleteMessage(
  messageId: string,
): Promise<PairResult<null>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const { error } = await client
      .from('discussion_messages')
      .update({ deleted_at: new Date().toISOString() })
      .eq('id', messageId);
    if (error) throw error;
    return { data: null, error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not delete message.') };
  }
}

/**
 * Edit a text message's body. Senders can edit their own messages.
 * Sets edited_at so the UI can show an "edited" indicator.
 */
export async function editMessage(
  messageId: string,
  body: string,
): Promise<PairResult<null>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const trimmed = body.trim();
    if (!trimmed) return { data: null, error: 'Message cannot be empty.' };
    const { error } = await client
      .from('discussion_messages')
      .update({ body: trimmed, edited_at: new Date().toISOString() })
      .eq('id', messageId);
    if (error) throw error;
    return { data: null, error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not edit message.') };
  }
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

function rowToMessage(
  row: {
    id: string;
    sender_id: string;
    body: string;
    read_by: string[] | null;
    created_at: string;
    message_type?: string | null;
    media_url?: string | null;
    reply_to_id?: string | null;
    reactions?: Record<string, string[]> | null;
    deleted_at?: string | null;
    edited_at?: string | null;
  },
  coupleId: string,
  sender_name: string,
): DiscussionMessage {
  return {
    id: row.id,
    couple_id: coupleId,
    sender_id: row.sender_id,
    body: row.body,
    read_by: row.read_by ?? [],
    created_at: row.created_at,
    sender_name,
    message_type: (row.message_type as MessageType) ?? 'text',
    media_url: row.media_url ?? null,
    reply_to_id: row.reply_to_id ?? null,
    reactions: row.reactions ?? {},
    deleted_at: row.deleted_at ?? null,
    edited_at: row.edited_at ?? null,
  };
}

/**
 * Live inserts for my couple. Resolves to an unsubscribe function.
 * Requires discussion_messages in the supabase_realtime publication.
 * Also listens for UPDATE (reactions) and DELETE events.
 */
export async function subscribeMessages(
  onInsert: (message: DiscussionMessage) => void,
  onUpdate?: (message: DiscussionMessage) => void,
  onDelete?: (messageId: string) => void,
): Promise<PairResult<() => void>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const couple = await getMyCoupleId();
    if (couple.error || !couple.data) {
      return { data: null, error: couple.error ?? 'No couple found.' };
    }
    const coupleId = couple.data;

    const fetchSenderName = async (senderId: string): Promise<string> => {
      const { data } = await client
        .from('profiles')
        .select('name')
        .eq('id', senderId)
        .maybeSingle();
      return (data as { name: string } | null)?.name ?? 'Partner';
    };

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
          const row = payload.new as Parameters<typeof rowToMessage>[0];
          const name = await fetchSenderName(row.sender_id);
          const msg = rowToMessage(row, coupleId, name);
          // Attach reply preview if needed
          if (msg.reply_to_id) {
            const { data } = await client
              .from('discussion_messages')
              .select('id,sender_id,body,message_type,profiles(name)')
              .eq('id', msg.reply_to_id)
              .maybeSingle();
            if (data) {
              const r = data as MessageRow;
              msg.reply_to = {
                id: r.id,
                sender_name: senderName(r),
                body: r.body,
                message_type: (r.message_type as MessageType) ?? 'text',
              };
            }
          }
          onInsert(msg);
        },
      )
      .on(
        'postgres_changes',
        {
          event: 'UPDATE',
          schema: 'public',
          table: 'discussion_messages',
          filter: `couple_id=eq.${coupleId}`,
        },
        async (payload) => {
          if (!onUpdate) return;
          const row = payload.new as Parameters<typeof rowToMessage>[0];
          const name = await fetchSenderName(row.sender_id);
          onUpdate(rowToMessage(row, coupleId, name));
        },
      )
      .on(
        'postgres_changes',
        {
          event: 'DELETE',
          schema: 'public',
          table: 'discussion_messages',
          filter: `couple_id=eq.${coupleId}`,
        },
        (payload) => {
          if (!onDelete) return;
          const old = payload.old as { id: string };
          if (old?.id) onDelete(old.id);
        },
      )
      // Typing indicator uses a dedicated broadcast channel (see
      // subscribeTyping below), so no broadcast handler is needed here.
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

/**
 * Broadcast a typing event to the partner. Call while the user is typing;
 * the receiver shows "Partner is typing..." until TYPING_TIMEOUT_MS
 * passes with no new event.
 */
export async function sendTyping(): Promise<void> {
  const client = getClient();
  if (!client) return;
  try {
    const couple = await getMyCoupleId();
    if (couple.error || !couple.data) return;
    const uid = await getUserId(client);
    if (!uid) return;
    const channel = client.channel(`discussion:${couple.data}`);
    await channel.send({
      type: 'broadcast',
      event: 'typing',
      payload: { user_id: uid },
    });
    // Best-effort: don't keep the ephemeral channel around.
    void client.removeChannel(channel);
  } catch {
    // Typing indicator is best-effort; never surfaces errors.
  }
}

/**
 * Track and watch partner online presence via Supabase Realtime presence.
 * Tracks this device as online on a dedicated couple channel and calls
 * onChange with the list of currently-online user ids whenever presence
 * syncs, joins, or leaves. Best-effort: never throws, never surfaces errors.
 * Returns an unsubscribe function.
 */
export async function subscribePresence(
  onChange: (onlineUserIds: string[]) => void,
): Promise<PairResult<() => void>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const couple = await getMyCoupleId();
    if (couple.error || !couple.data) {
      return { data: null, error: couple.error ?? 'No couple found.' };
    }
    const uid = await getUserId(client);
    if (!uid) return { data: null, error: 'Not signed in.' };
    const channel: RealtimeChannel = client.channel(`chat-presence:${couple.data}`, {
      config: { presence: { key: uid } },
    });
    const emit = () => {
      try {
        onChange(Object.keys(channel.presenceState()));
      } catch {
        // Presence state reads are best-effort.
      }
    };
    channel
      .on('presence', { event: 'sync' }, emit)
      .on('presence', { event: 'join' }, emit)
      .on('presence', { event: 'leave' }, emit)
      .subscribe(async (status) => {
        if (status === 'SUBSCRIBED') {
          await channel.track({ online_at: new Date().toISOString() });
        }
      });
    return {
      data: () => {
        client.removeChannel(channel);
      },
      error: null,
    };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not watch presence.') };
  }
}

/**
 * Subscribe to partner typing events. Returns an unsubscribe function.
 * Uses a dedicated broadcast channel for the couple.
 */
export async function subscribeTyping(
  onTyping: (userId: string) => void,
): Promise<PairResult<() => void>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const couple = await getMyCoupleId();
    if (couple.error || !couple.data) {
      return { data: null, error: couple.error ?? 'No couple found.' };
    }
    const channel: RealtimeChannel = client
      .channel(`discussion-typing:${couple.data}`)
      .on('broadcast', { event: 'typing' }, (payload) => {
        const uid = (payload?.payload as { user_id?: string } | undefined)?.user_id;
        if (uid) onTyping(uid);
      })
      .subscribe();
    return {
      data: () => {
        client.removeChannel(channel);
      },
      error: null,
    };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not watch typing.') };
  }
}
