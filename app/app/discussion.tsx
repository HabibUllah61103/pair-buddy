import { useCallback, useEffect, useRef, useState } from 'react';
import {
  ActivityIndicator,
  FlatList,
  KeyboardAvoidingView,
  Platform,
  Pressable,
  StyleSheet,
  Text,
  TextInput,
  View,
} from 'react-native';
import { router } from 'expo-router';
import {
  getMessages,
  getMyUserId,
  getPartner,
  markRead,
  sendMessage,
  subscribeMessages,
  type DiscussionMessage,
} from '../src/lib/discussion';
import { COLORS } from '../src/theme';

const NAVY = COLORS.navy;
const TEAL = COLORS.teal;
const CARD = '#1B3A5F';
const MUTED = COLORS.muted;
const WHITE = COLORS.white;

function formatTime(iso: string): string {
  const d = new Date(iso);
  const now = new Date();
  const time = d.toLocaleTimeString([], { hour: 'numeric', minute: '2-digit' });
  const sameDay = d.toDateString() === now.toDateString();
  if (sameDay) return time;
  return `${d.toLocaleDateString([], { month: 'short', day: 'numeric' })}, ${time}`;
}

function MessageBubble({
  message,
  mine,
}: {
  message: DiscussionMessage;
  mine: boolean;
}) {
  return (
    <View style={[styles.bubbleRow, mine ? styles.bubbleRowMine : null]}>
      <View style={[styles.bubble, mine ? styles.bubbleMine : styles.bubbleTheirs]}>
        <Text style={styles.bubbleText}>{message.body}</Text>
        <Text style={[styles.bubbleTime, mine ? styles.bubbleTimeMine : null]}>
          {formatTime(message.created_at)}
        </Text>
      </View>
    </View>
  );
}

export default function DiscussionScreen() {
  const [messages, setMessages] = useState<DiscussionMessage[]>([]);
  const [myId, setMyId] = useState<string | null>(null);
  const [partnerId, setPartnerId] = useState<string | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [draft, setDraft] = useState('');
  const [sending, setSending] = useState(false);
  const listRef = useRef<FlatList<DiscussionMessage>>(null);

  const applyMessages = useCallback((next: DiscussionMessage[]) => {
    setMessages(next);
    // Best-effort read receipts: marking read never blocks the UI.
    void markRead(next);
  }, []);

  const load = useCallback(async () => {
    setLoading(true);
    setError(null);
    const [msgs, uid, partner] = await Promise.all([
      getMessages(),
      getMyUserId(),
      getPartner(),
    ]);
    if (msgs.error || !msgs.data) {
      setError(msgs.error ?? 'Could not load messages.');
    } else {
      setMessages(msgs.data);
      void markRead(msgs.data);
    }
    setMyId(uid);
    if (partner.data) setPartnerId(partner.data.id);
    setLoading(false);
  }, []);

  useEffect(() => {
    void load();
    let unsubscribe: (() => void) | null = null;
    void subscribeMessages((incoming) => {
      setMessages((prev) => {
        if (prev.some((m) => m.id === incoming.id)) return prev;
        const next = [incoming, ...prev];
        void markRead(next);
        return next;
      });
    }).then((res) => {
      if (res.data) unsubscribe = res.data;
    });
    return () => {
      unsubscribe?.();
    };
  }, [load]);

  const onSend = useCallback(async () => {
    if (sending || !draft.trim()) return;
    setSending(true);
    const res = await sendMessage(draft);
    setSending(false);
    if (res.error || !res.data) {
      setError(res.error ?? 'Could not send your message.');
      return;
    }
    setDraft('');
    setMessages((prev) => [res.data as DiscussionMessage, ...prev]);
    listRef.current?.scrollToOffset({ offset: 0, animated: true });
  }, [draft, sending]);

  // Newest message I sent: "Seen" when the partner has opened the chat.
  const myLastMessage = messages.find((m) => m.sender_id === myId);
  const seen =
    !!partnerId &&
    !!myLastMessage &&
    myLastMessage.read_by.includes(partnerId);

  return (
    <KeyboardAvoidingView
      style={styles.root}
      behavior={Platform.OS === 'ios' ? 'padding' : 'height'}
      keyboardVerticalOffset={Platform.OS === 'ios' ? 8 : 0}
    >
      <View style={styles.header}>
        <Pressable onPress={() => router.back()} style={styles.backButton}>
          <Text style={styles.backText}>Back</Text>
        </Pressable>
        <Text style={styles.title}>Discussion</Text>
        <View style={styles.backButton} />
      </View>

      {loading ? (
        <View style={styles.center}>
          <ActivityIndicator color={TEAL} />
        </View>
      ) : error && messages.length === 0 ? (
        <View style={styles.center}>
          <Text style={styles.error}>{error}</Text>
          <Pressable style={styles.retryButton} onPress={() => void load()}>
            <Text style={styles.retryText}>Try again</Text>
          </Pressable>
        </View>
      ) : messages.length === 0 ? (
        <View style={styles.center}>
          <Text style={styles.emptyTitle}>No messages yet</Text>
          <Text style={styles.emptyHint}>
            Say hi — your partner will see it right away.
          </Text>
        </View>
      ) : (
        <FlatList
          ref={listRef}
          inverted
          data={messages}
          keyExtractor={(m) => m.id}
          contentContainerStyle={styles.list}
          renderItem={({ item }) => (
            <MessageBubble message={item} mine={item.sender_id === myId} />
          )}
        />
      )}

      {seen ? <Text style={styles.seen}>Seen</Text> : null}

      <View style={styles.composer}>
        <TextInput
          style={styles.input}
          value={draft}
          onChangeText={setDraft}
          placeholder="Write a message"
          placeholderTextColor={MUTED}
          multiline
          maxLength={1000}
          returnKeyType="send"
          onSubmitEditing={() => void onSend()}
        />
        <Pressable
          style={[styles.sendButton, !draft.trim() || sending ? styles.sendButtonDisabled : null]}
          onPress={() => void onSend()}
          disabled={!draft.trim() || sending}
        >
          {sending ? (
            <ActivityIndicator color={WHITE} size="small" />
          ) : (
            <Text style={styles.sendText}>Send</Text>
          )}
        </Pressable>
      </View>
      {error && messages.length > 0 ? (
        <Text style={styles.inlineError}>{error}</Text>
      ) : null}
    </KeyboardAvoidingView>
  );
}

const styles = StyleSheet.create({
  root: { flex: 1, backgroundColor: NAVY },
  header: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    paddingHorizontal: 12,
    paddingVertical: 14,
  },
  backButton: { minWidth: 64 },
  backText: { color: TEAL, fontSize: 16, fontWeight: '600' },
  title: { color: WHITE, fontSize: 18, fontWeight: '800' },
  center: { flex: 1, alignItems: 'center', justifyContent: 'center', padding: 24 },
  error: { color: '#FF9A8F', fontSize: 15, textAlign: 'center', marginBottom: 12 },
  retryButton: {
    borderWidth: 1.5,
    borderColor: '#3A5470',
    borderRadius: 12,
    paddingVertical: 10,
    paddingHorizontal: 20,
  },
  retryText: { color: WHITE, fontSize: 15, fontWeight: '600' },
  emptyTitle: { color: WHITE, fontSize: 18, fontWeight: '700', marginBottom: 8 },
  emptyHint: { color: MUTED, fontSize: 15, textAlign: 'center', lineHeight: 22 },
  list: { paddingHorizontal: 16, paddingVertical: 12 },
  bubbleRow: { flexDirection: 'row', justifyContent: 'flex-start', marginBottom: 8 },
  bubbleRowMine: { justifyContent: 'flex-end' },
  bubble: { maxWidth: '78%', borderRadius: 16, paddingHorizontal: 14, paddingVertical: 10 },
  bubbleMine: { backgroundColor: TEAL, borderBottomRightRadius: 4 },
  bubbleTheirs: { backgroundColor: CARD, borderBottomLeftRadius: 4 },
  bubbleText: { color: WHITE, fontSize: 16, lineHeight: 22 },
  bubbleTime: { color: MUTED, fontSize: 11, marginTop: 4 },
  bubbleTimeMine: { color: '#E8F6F3', textAlign: 'right' },
  seen: {
    color: MUTED,
    fontSize: 12,
    textAlign: 'right',
    paddingHorizontal: 20,
    paddingBottom: 4,
  },
  composer: {
    flexDirection: 'row',
    alignItems: 'flex-end',
    paddingHorizontal: 12,
    paddingVertical: 10,
    gap: 8,
  },
  input: {
    flex: 1,
    backgroundColor: CARD,
    borderRadius: 18,
    paddingHorizontal: 16,
    paddingVertical: 12,
    color: WHITE,
    fontSize: 16,
    maxHeight: 120,
  },
  sendButton: {
    backgroundColor: TEAL,
    borderRadius: 18,
    paddingVertical: 12,
    paddingHorizontal: 20,
    alignItems: 'center',
    justifyContent: 'center',
  },
  sendButtonDisabled: { opacity: 0.4 },
  sendText: { color: WHITE, fontSize: 16, fontWeight: '700' },
  inlineError: { color: '#FF9A8F', fontSize: 13, textAlign: 'center', paddingBottom: 8 },
});
