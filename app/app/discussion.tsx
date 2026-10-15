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
import { useRouter } from 'expo-router';
import {
  getMessages,
  getMyUserId,
  getPartner,
  markRead,
  sendMessage,
  subscribeMessages,
  type DiscussionMessage,
} from '../src/lib/discussion';
import { FONTS } from '../src/theme';
import { useTheme } from '../src/lib/theme-provider';

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
  const { tokens } = useTheme();
  return (
    <View style={[styles.bubbleRow, mine ? styles.bubbleRowMine : null]}>
      <View
        style={[
          styles.bubble,
          mine
            ? [styles.bubbleMine, { backgroundColor: tokens.primary }]
            : [styles.bubbleTheirs, { backgroundColor: tokens.card }],
        ]}
      >
        <Text
          style={[
            styles.bubbleText,
            { color: mine ? tokens.onPrimary : tokens.ink },
          ]}
        >
          {message.body}
        </Text>
        <Text
          style={[
            styles.bubbleTime,
            mine
              ? [styles.bubbleTimeMine, { color: tokens.onPrimary }]
              : { color: tokens.muted },
          ]}
        >
          {formatTime(message.created_at)}
        </Text>
      </View>
    </View>
  );
}

export default function DiscussionScreen() {
  const router = useRouter();
  const { tokens } = useTheme();
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
      style={[styles.root, { backgroundColor: tokens.background }]}
      behavior={Platform.OS === 'ios' ? 'padding' : 'height'}
      keyboardVerticalOffset={Platform.OS === 'ios' ? 8 : 0}
    >
      <View style={styles.header}>
        <Pressable onPress={() => router.back()} style={styles.backButton}>
          <Text style={[styles.backText, { color: tokens.primary }]}>Back</Text>
        </Pressable>
        <Text style={[styles.title, { color: tokens.ink }]}>Discussion</Text>
        <View style={styles.backButton} />
      </View>

      {loading ? (
        <View style={styles.center}>
          <ActivityIndicator color={tokens.primary} />
        </View>
      ) : error && messages.length === 0 ? (
        <View style={styles.center}>
          <Text style={[styles.error, { color: tokens.danger }]}>{error}</Text>
          <Pressable
            style={[styles.retryButton, { borderColor: tokens.border }]}
            onPress={() => void load()}
          >
            <Text style={[styles.retryText, { color: tokens.ink }]}>Try again</Text>
          </Pressable>
        </View>
      ) : messages.length === 0 ? (
        <View style={styles.center}>
          <Text style={[styles.emptyTitle, { color: tokens.ink }]}>
            No messages yet
          </Text>
          <Text style={[styles.emptyHint, { color: tokens.muted }]}>
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

      {seen ? <Text style={[styles.seen, { color: tokens.muted }]}>Seen</Text> : null}

      <View style={styles.composer}>
        <TextInput
          style={[
            styles.input,
            { backgroundColor: tokens.card, color: tokens.ink },
          ]}
          value={draft}
          onChangeText={setDraft}
          placeholder="Write a message"
          placeholderTextColor={tokens.muted}
          multiline
          maxLength={1000}
          returnKeyType="send"
          onSubmitEditing={() => void onSend()}
        />
        <Pressable
          style={[
            styles.sendButton,
            { backgroundColor: tokens.primary },
            !draft.trim() || sending ? styles.sendButtonDisabled : null,
          ]}
          onPress={() => void onSend()}
          disabled={!draft.trim() || sending}
        >
          {sending ? (
            <ActivityIndicator color={tokens.onPrimary} size="small" />
          ) : (
            <Text style={[styles.sendText, { color: tokens.onPrimary }]}>Send</Text>
          )}
        </Pressable>
      </View>
      {error && messages.length > 0 ? (
        <Text style={[styles.inlineError, { color: tokens.danger }]}>{error}</Text>
      ) : null}
    </KeyboardAvoidingView>
  );
}

const styles = StyleSheet.create({
  root: { flex: 1 },
  header: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    paddingHorizontal: 12,
    paddingVertical: 14,
  },
  backButton: { minWidth: 64 },
  backText: { fontFamily: FONTS.body, fontSize: 16, fontWeight: '600' },
  title: { fontFamily: FONTS.heading, fontSize: 18, fontWeight: '800' },
  center: { flex: 1, alignItems: 'center', justifyContent: 'center', padding: 24 },
  error: {
    fontFamily: FONTS.body,
    fontSize: 15,
    textAlign: 'center',
    marginBottom: 12,
  },
  retryButton: {
    borderWidth: 1.5,
    borderRadius: 12,
    paddingVertical: 10,
    paddingHorizontal: 20,
  },
  retryText: { fontFamily: FONTS.body, fontSize: 15, fontWeight: '600' },
  emptyTitle: {
    fontFamily: FONTS.heading,
    fontSize: 18,
    fontWeight: '700',
    marginBottom: 8,
  },
  emptyHint: { fontFamily: FONTS.body, fontSize: 15, textAlign: 'center', lineHeight: 22 },
  list: { paddingHorizontal: 16, paddingVertical: 12 },
  bubbleRow: { flexDirection: 'row', justifyContent: 'flex-start', marginBottom: 8 },
  bubbleRowMine: { justifyContent: 'flex-end' },
  bubble: {
    maxWidth: '78%',
    borderRadius: 16,
    paddingHorizontal: 14,
    paddingVertical: 10,
  },
  bubbleMine: { borderBottomRightRadius: 4 },
  bubbleTheirs: { borderBottomLeftRadius: 4 },
  bubbleText: { fontFamily: FONTS.body, fontSize: 16, lineHeight: 22 },
  bubbleTime: { fontFamily: FONTS.body, fontSize: 11, marginTop: 4 },
  bubbleTimeMine: { textAlign: 'right', opacity: 0.75 },
  seen: {
    fontFamily: FONTS.body,
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
    borderRadius: 18,
    paddingHorizontal: 16,
    paddingVertical: 12,
    fontFamily: FONTS.body,
    fontSize: 16,
    maxHeight: 120,
  },
  sendButton: {
    borderRadius: 18,
    paddingVertical: 12,
    paddingHorizontal: 20,
    alignItems: 'center',
    justifyContent: 'center',
  },
  sendButtonDisabled: { opacity: 0.4 },
  sendText: { fontFamily: FONTS.body, fontSize: 16, fontWeight: '700' },
  inlineError: {
    fontFamily: FONTS.body,
    fontSize: 13,
    textAlign: 'center',
    paddingBottom: 8,
  },
});
