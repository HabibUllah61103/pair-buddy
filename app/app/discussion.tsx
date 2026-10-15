import { useCallback, useEffect, useRef, useState } from 'react';
import {
  ActivityIndicator,
  Alert,
  FlatList,
  Image,
  KeyboardAvoidingView,
  Modal,
  Platform,
  Pressable,
  StyleSheet,
  Text,
  TextInput,
  View,
} from 'react-native';
import { useRouter } from 'expo-router';
import { useSafeAreaInsets } from 'react-native-safe-area-context';
import {
  AudioRecorder,
  RecordingPresets,
  requestRecordingPermissionsAsync,
  setAudioModeAsync,
  useAudioPlayer,
  useAudioPlayerStatus,
} from 'expo-audio';
import * as ImagePicker from 'expo-image-picker';
import * as Haptics from 'expo-haptics';
import {
  deleteMessage,
  editMessage,
  getMessages,
  getMyUserId,
  getPartner,
  markRead,
  sendRichMessage,
  sendTyping,
  subscribeMessages,
  subscribeTyping,
  toggleReaction,
  uploadChatMedia,
  type DiscussionMessage,
  type MessageType,
} from '../src/lib/discussion';
import { FONTS } from '../src/theme';
import { useTheme } from '../src/lib/theme-provider';
import { giphyConfigured, searchStickers, trendingStickers, type GiphySticker } from '../src/lib/giphy';
import { CoupleIllustration } from '../src/components/couple-illustration';
import { LoadingHeart } from '../src/components/loading-heart';
import { RichIcon } from '../src/components/rich-icon';
import { SpringPress } from '../src/components/animated';

const QUICK_REACTIONS = ['❤️', '😂', '😮', '😢', '🙏', '👍'];

const STICKERS = [
  { name: 'happy', source: require('../assets/hearts-happy.png') },
  { name: 'excited', source: require('../assets/hearts-excited.png') },
  { name: 'inlove', source: require('../assets/hearts-inlove.png') },
  { name: 'laughing', source: require('../assets/hearts-laughing.png') },
  { name: 'wink', source: require('../assets/hearts-wink.png') },
  { name: 'surprised', source: require('../assets/hearts-surprised.png') },
  { name: 'curious', source: require('../assets/hearts-curious.png') },
  { name: 'proud', source: require('../assets/hearts-proud.png') },
  { name: 'sleepy', source: require('../assets/hearts-sleepy.png') },
] as const;

function stickerSource(name: string) {
  // GIPHY stickers are stored as full URLs in the body.
  if (name.startsWith('http')) return { uri: name };
  return STICKERS.find((s) => s.name === name)?.source ?? STICKERS[0].source;
}

function formatTime(iso: string): string {
  const d = new Date(iso);
  const now = new Date();
  const time = d.toLocaleTimeString([], { hour: 'numeric', minute: '2-digit' });
  const sameDay = d.toDateString() === now.toDateString();
  if (sameDay) return time;
  return `${d.toLocaleDateString([], { month: 'short', day: 'numeric' })}, ${time}`;
}

function formatDuration(ms: number): string {
  const s = Math.round(ms / 1000);
  return `${Math.floor(s / 60)}:${String(s % 60).padStart(2, '0')}`;
}

/** Read receipt ticks: ✓ sent, ✓✓ read (blue). */
function Ticks({ read, color }: { read: boolean; color: string }) {
  return (
    <Text style={[styles.ticks, { color: read ? '#4FC3F7' : color }]}>
      {read ? '✓✓' : '✓'}
    </Text>
  );
}

/** Fake waveform bars for voice messages (deterministic by message id). */
function Waveform({ seed, color, progress }: { seed: string; color: string; progress: number }) {
  const bars = [];
  let h = 0;
  for (let i = 0; i < 24; i++) {
    h = (h * 31 + seed.charCodeAt(i % seed.length) * 17 + i * 13) % 100;
    const height = 6 + (h % 22);
    bars.push(
      <View
        key={i}
        style={[
          styles.waveBar,
          {
            height,
            backgroundColor: color,
            opacity: i / 24 <= progress ? 1 : 0.35,
          },
        ]}
      />,
    );
  }
  return <View style={styles.waveform}>{bars}</View>;
}

function VoiceBubble({
  message,
  mine,
}: {
  message: DiscussionMessage;
  mine: boolean;
}) {
  const { tokens } = useTheme();
  const player = useAudioPlayer(
    message.media_url ? { uri: message.media_url } : undefined,
  );
  const status = useAudioPlayerStatus(player);
  const iconColor = mine ? tokens.onPrimary : tokens.primary;
  const waveColor = mine ? tokens.onPrimary : tokens.primary;

  const playing = status.playing ?? false;
  // expo-audio reports seconds; the UI works in millis like before.
  const position = (status.currentTime ?? 0) * 1000;
  const duration = (status.duration ?? 0) * 1000;

  // Reset to the start once playback finishes, matching the old behavior.
  useEffect(() => {
    if (status.didJustFinish) {
      void player.seekTo(0);
    }
  }, [status.didJustFinish, player]);

  const togglePlay = useCallback(() => {
    void Haptics.impactAsync(Haptics.ImpactFeedbackStyle.Light);
    try {
      if (playing) {
        player.pause();
        return;
      }
      void setAudioModeAsync({ playsInSilentMode: true });
      player.play();
    } catch {
      // Playback failed; stay paused.
    }
  }, [playing, player]);

  const progress = duration > 0 ? position / duration : 0;

  return (
    <View style={styles.voiceRow}>
      <Pressable
        onPress={() => void togglePlay()}
        style={[
          styles.voiceButton,
          { backgroundColor: mine ? 'rgba(255,255,255,0.25)' : tokens.primaryTint },
        ]}
      >
        <RichIcon
          name={playing ? 'pause' : 'play'}
          size={16}
          tokens={tokens}
          variant="plain"
          color={iconColor}
        />
      </Pressable>
      <View style={styles.voiceWave}>
        <Waveform seed={message.id} color={waveColor} progress={progress} />
        <Text style={[styles.voiceDuration, { color: iconColor, opacity: 0.8 }]}>
          {formatDuration(duration > 0 ? (playing ? position : duration) : 0)}
        </Text>
      </View>
    </View>
  );
}

function ReplyQuote({
  reply,
  mine,
}: {
  reply: NonNullable<DiscussionMessage['reply_to']>;
  mine: boolean;
}) {
  const { tokens } = useTheme();
  const preview =
    reply.message_type === 'image'
      ? '📷 Photo'
      : reply.message_type === 'voice'
        ? '🎤 Voice message'
        : reply.message_type === 'sticker'
          ? '💌 Sticker'
          : reply.body;
  return (
    <View
      style={[
        styles.replyQuote,
        {
          borderLeftColor: mine ? tokens.onPrimary : tokens.primary,
          backgroundColor: mine ? 'rgba(255,255,255,0.15)' : tokens.primaryTint,
        },
      ]}
    >
      <Text
        style={[
          styles.replyName,
          { color: mine ? tokens.onPrimary : tokens.primary },
        ]}
        numberOfLines={1}
      >
        {reply.sender_name}
      </Text>
      <Text
        style={[
          styles.replyBody,
          { color: mine ? tokens.onPrimary : tokens.muted },
        ]}
        numberOfLines={2}
      >
        {preview}
      </Text>
    </View>
  );
}

function MessageBubble({
  message,
  mine,
  myId,
  partnerRead,
  onLongPress,
  onImagePress,
}: {
  message: DiscussionMessage;
  mine: boolean;
  myId: string | null;
  partnerRead: boolean;
  onLongPress: (message: DiscussionMessage) => void;
  onImagePress: (url: string) => void;
}) {
  const { tokens } = useTheme();
  const bubbleStyle = mine
    ? [styles.bubbleMine, { backgroundColor: tokens.primary }]
    : [styles.bubbleTheirs, { backgroundColor: tokens.card }];
  const textColor = mine ? tokens.onPrimary : tokens.ink;
  const timeColor = mine ? tokens.onPrimary : tokens.muted;

  const renderContent = () => {
    switch (message.message_type) {
      case 'image':
        return message.media_url ? (
          <Pressable onPress={() => onImagePress(message.media_url as string)}>
            <Image
              source={{ uri: message.media_url }}
              style={styles.bubbleImage}
              resizeMode="cover"
            />
          </Pressable>
        ) : (
          <Text style={[styles.bubbleText, { color: textColor }]}>📷 Photo</Text>
        );
      case 'voice':
        return <VoiceBubble message={message} mine={mine} />;
      case 'sticker':
        return (
          <Image
            source={stickerSource(message.body)}
            style={styles.sticker}
            resizeMode="contain"
          />
        );
      default:
        return (
          <Text style={[styles.bubbleText, { color: textColor }]}>
            {message.body}
          </Text>
        );
    }
  };

  const reactionEntries = Object.entries(message.reactions).filter(
    ([, uids]) => uids.length > 0,
  );

  // Soft-deleted messages show a placeholder instead of content.
  if (message.deleted_at) {
    return (
      <View style={[styles.bubbleRow, mine ? styles.bubbleRowMine : null]}>
        <View
          style={[
            styles.bubble,
            styles.bubbleDeleted,
            { backgroundColor: tokens.card, borderColor: tokens.border },
          ]}
        >
          <Text style={[styles.bubbleText, styles.deletedText, { color: tokens.muted }]}>
            🚫 This message was deleted
          </Text>
        </View>
      </View>
    );
  }

  return (
    <View style={[styles.bubbleRow, mine ? styles.bubbleRowMine : null]}>
      <Pressable
        onLongPress={() => {
          void Haptics.impactAsync(Haptics.ImpactFeedbackStyle.Medium);
          onLongPress(message);
        }}
        delayLongPress={400}
        style={[
          styles.bubble,
          ...bubbleStyle,
          message.message_type === 'sticker' ? styles.bubbleSticker : null,
        ]}
      >
        {message.reply_to ? <ReplyQuote reply={message.reply_to} mine={mine} /> : null}
        {renderContent()}
        {message.message_type !== 'sticker' ? (
          <View style={styles.bubbleMeta}>
            <Text
              style={[
                styles.bubbleTime,
                { color: timeColor },
                mine ? styles.bubbleTimeMine : null,
              ]}
            >
              {formatTime(message.created_at)}
              {message.edited_at ? ' · edited' : ''}
            </Text>
            {mine ? (
              <Ticks read={partnerRead} color={timeColor} />
            ) : null}
          </View>
        ) : null}
      </Pressable>
      {reactionEntries.length > 0 ? (
        <View
          style={[
            styles.reactionsRow,
            mine ? styles.reactionsRowMine : null,
          ]}
        >
          {reactionEntries.map(([emoji, uids]) => (
            <View
              key={emoji}
              style={[
                styles.reactionChip,
                {
                  backgroundColor: tokens.card,
                  borderColor: uids.includes(myId ?? '')
                    ? tokens.primary
                    : tokens.border,
                },
              ]}
            >
              <Text style={styles.reactionEmoji}>{emoji}</Text>
              <Text style={[styles.reactionCount, { color: tokens.muted }]}>
                {uids.length}
              </Text>
            </View>
          ))}
        </View>
      ) : null}
    </View>
  );
}

export default function DiscussionScreen() {
  const router = useRouter();
  const { tokens } = useTheme();
  const insets = useSafeAreaInsets();
  const [messages, setMessages] = useState<DiscussionMessage[]>([]);
  const [myId, setMyId] = useState<string | null>(null);
  const [partnerId, setPartnerId] = useState<string | null>(null);
  const [partnerName, setPartnerName] = useState('Partner');
  const [partnerAvatar, setPartnerAvatar] = useState<string | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [draft, setDraft] = useState('');
  const [sending, setSending] = useState(false);
  const [typing, setTyping] = useState(false);
  const [replyTo, setReplyTo] = useState<DiscussionMessage | null>(null);
  const [actionMessage, setActionMessage] = useState<DiscussionMessage | null>(null);
  const [reactMessage, setReactMessage] = useState<DiscussionMessage | null>(null);
  const [stickerOpen, setStickerOpen] = useState(false);
  const [stickerTab, setStickerTab] = useState<'hearts' | 'giphy'>('hearts');
  const [giphyStickers, setGiphyStickers] = useState<GiphySticker[]>([]);
  const [giphyQuery, setGiphyQuery] = useState('');
  const [giphyLoading, setGiphyLoading] = useState(false);
  const [viewerUrl, setViewerUrl] = useState<string | null>(null);
  const [recorder, setRecorder] = useState<AudioRecorder | null>(null);
  const [recordSecs, setRecordSecs] = useState(0);
  const [uploading, setUploading] = useState(false);
  const listRef = useRef<FlatList<DiscussionMessage>>(null);
  const typingTimeout = useRef<ReturnType<typeof setTimeout> | null>(null);
  const lastTypingSent = useRef(0);
  const recordTimer = useRef<ReturnType<typeof setInterval> | null>(null);

  const applyMessages = useCallback((next: DiscussionMessage[]) => {
    setMessages(next);
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
    if (partner.data) {
      setPartnerId(partner.data.id);
      setPartnerName(partner.data.name);
      setPartnerAvatar(partner.data.avatar_url);
    }
    setLoading(false);
  }, []);

  useEffect(() => {
    void load();
    let unsubscribe: (() => void) | null = null;
    let unsubTyping: (() => void) | null = null;

    void subscribeMessages(
      (incoming) => {
        setMessages((prev) => {
          if (prev.some((m) => m.id === incoming.id)) return prev;
          const next = [incoming, ...prev];
          void markRead(next);
          return next;
        });
      },
      (updated) => {
        // Reaction or read-receipt update
        setMessages((prev) =>
          prev.map((m) =>
            m.id === updated.id
              ? { ...m, reactions: updated.reactions, read_by: updated.read_by }
              : m,
          ),
        );
      },
      (deletedId) => {
        setMessages((prev) => prev.filter((m) => m.id !== deletedId));
      },
    ).then((res) => {
      if (res.data) unsubscribe = res.data;
    });

    void subscribeTyping((uid) => {
      // Only show for the partner, not my own events
      setTyping(true);
      if (typingTimeout.current) clearTimeout(typingTimeout.current);
      typingTimeout.current = setTimeout(() => setTyping(false), 3000);
    }).then((res) => {
      if (res.data) unsubTyping = res.data;
    });

    return () => {
      unsubscribe?.();
      unsubTyping?.();
      if (typingTimeout.current) clearTimeout(typingTimeout.current);
    };
  }, [load]);

  const onDraftChange = useCallback(
    (text: string) => {
      setDraft(text);
      // Throttle typing events to one per 2s
      const now = Date.now();
      if (now - lastTypingSent.current > 2000 && text.length > 0) {
        lastTypingSent.current = now;
        void sendTyping();
      }
    },
    [],
  );

  const insertMessage = useCallback((msg: DiscussionMessage) => {
    setMessages((prev) => [msg, ...prev]);
    listRef.current?.scrollToOffset({ offset: 0, animated: true });
  }, []);

  const onSend = useCallback(async () => {
    if (sending || !draft.trim()) return;
    setSending(true);
    void Haptics.impactAsync(Haptics.ImpactFeedbackStyle.Light);
    const res = await sendRichMessage({
      body: draft,
      message_type: 'text',
      reply_to_id: replyTo?.id ?? null,
    });
    setSending(false);
    if (res.error || !res.data) {
      setError(res.error ?? 'Could not send your message.');
      return;
    }
    setDraft('');
    setReplyTo(null);
    insertMessage(res.data);
  }, [draft, sending, replyTo, insertMessage]);

  const onSendSticker = useCallback(
    async (name: string) => {
      setStickerOpen(false);
      void Haptics.impactAsync(Haptics.ImpactFeedbackStyle.Medium);
      const res = await sendRichMessage({
        body: name,
        message_type: 'sticker',
        reply_to_id: replyTo?.id ?? null,
      });
      if (res.error || !res.data) {
        setError(res.error ?? 'Could not send sticker.');
        return;
      }
      setReplyTo(null);
      insertMessage(res.data);
    },
    [replyTo, insertMessage],
  );

  // GIPHY stickers: load trending when the tab opens, search on demand.
  const loadGiphyTrending = useCallback(async () => {
    if (!giphyConfigured()) return;
    setGiphyLoading(true);
    const stickers = await trendingStickers();
    setGiphyStickers(stickers);
    setGiphyLoading(false);
  }, []);

  const onGiphySearch = useCallback(async () => {
    setGiphyLoading(true);
    const stickers = await searchStickers(giphyQuery);
    setGiphyStickers(stickers);
    setGiphyLoading(false);
  }, [giphyQuery]);

  const openStickerPicker = useCallback(() => {
    setStickerTab('hearts');
    setStickerOpen(true);
    if (giphyConfigured()) void loadGiphyTrending();
  }, [loadGiphyTrending]);

  const onPickImage = useCallback(async () => {
    void Haptics.impactAsync(Haptics.ImpactFeedbackStyle.Light);
    const perm = await ImagePicker.requestMediaLibraryPermissionsAsync();
    if (!perm.granted) {
      setError('Photo access is needed to share pictures.');
      return;
    }
    const result = await ImagePicker.launchImageLibraryAsync({
      mediaTypes: ImagePicker.MediaTypeOptions.Images,
      quality: 0.8,
    });
    if (result.canceled || !result.assets[0]) return;
    setUploading(true);
    const up = await uploadChatMedia(result.assets[0].uri, 'image');
    if (up.error || !up.data) {
      setUploading(false);
      setError(up.error ?? 'Could not upload photo.');
      return;
    }
    const res = await sendRichMessage({
      body: '📷 Photo',
      message_type: 'image',
      media_url: up.data,
      reply_to_id: replyTo?.id ?? null,
    });
    setUploading(false);
    if (res.error || !res.data) {
      setError(res.error ?? 'Could not send photo.');
      return;
    }
    setReplyTo(null);
    insertMessage(res.data);
  }, [replyTo, insertMessage]);

  const startRecording = useCallback(async () => {
    try {
      const perm = await requestRecordingPermissionsAsync();
      if (!perm.granted) {
        setError('Microphone access is needed for voice messages.');
        return;
      }
      await setAudioModeAsync({
        allowsRecording: true,
        playsInSilentMode: true,
      });
      const rec = new AudioRecorder(RecordingPresets.HIGH_QUALITY);
      await rec.prepareToRecordAsync();
      rec.record();
      setRecorder(rec);
      setRecordSecs(0);
      void Haptics.impactAsync(Haptics.ImpactFeedbackStyle.Heavy);
      recordTimer.current = setInterval(() => {
        setRecordSecs((s) => s + 1);
      }, 1000);
    } catch {
      setError('Could not start recording.');
    }
  }, []);

  const stopRecording = useCallback(
    async (send: boolean) => {
      if (recordTimer.current) {
        clearInterval(recordTimer.current);
        recordTimer.current = null;
      }
      const rec = recorder;
      setRecorder(null);
      const secs = recordSecs;
      setRecordSecs(0);
      if (!rec) return;
      void Haptics.impactAsync(Haptics.ImpactFeedbackStyle.Medium);
      try {
        await rec.stop();
        const uri = rec.uri;
        const recStatus = rec.getStatus();
        // Discard accidental taps (under 1 second)
        const durationMs = recStatus?.durationMillis ?? secs * 1000;
        if (send && uri && durationMs >= 1000) {
          setUploading(true);
          const up = await uploadChatMedia(uri, 'voice');
          if (up.error || !up.data) {
            setUploading(false);
            setError(up.error ?? 'Could not upload voice message.');
            return;
          }
          const res = await sendRichMessage({
            body: '🎤 Voice message',
            message_type: 'voice',
            media_url: up.data,
            reply_to_id: replyTo?.id ?? null,
          });
          setUploading(false);
          if (res.error || !res.data) {
            setError(res.error ?? 'Could not send voice message.');
            return;
          }
          setReplyTo(null);
          insertMessage(res.data);
        }
      } catch {
        setError('Could not finish recording.');
      }
    },
    [recorder, recordSecs, replyTo, insertMessage],
  );

  const onReact = useCallback(
    async (message: DiscussionMessage, emoji: string) => {
      setReactMessage(null);
      void Haptics.impactAsync(Haptics.ImpactFeedbackStyle.Light);
      // Optimistic update
      setMessages((prev) =>
        prev.map((m) => {
          if (m.id !== message.id) return m;
          const list = m.reactions[emoji] ?? [];
          const next = { ...m.reactions };
          if (list.includes(myId ?? '')) {
            next[emoji] = list.filter((id) => id !== myId);
            if (next[emoji].length === 0) delete next[emoji];
          } else {
            next[emoji] = [...list, myId ?? ''];
          }
          return { ...m, reactions: next };
        }),
      );
      await toggleReaction(message.id, emoji);
    },
    [myId],
  );

  const onDelete = useCallback(async (message: DiscussionMessage) => {
    setActionMessage(null);
    Alert.alert('Delete message?', 'This removes it for both of you.', [
      { text: 'Cancel', style: 'cancel' },
      {
        text: 'Delete',
        style: 'destructive',
        onPress: () => {
          void (async () => {
            const now = new Date().toISOString();
            // Optimistic: mark as deleted in place (shows placeholder).
            setMessages((prev) =>
              prev.map((m) =>
                m.id === message.id ? { ...m, deleted_at: now } : m,
              ),
            );
            const res = await deleteMessage(message.id);
            if (res.error) {
              // Roll back on failure.
              setMessages((prev) =>
                prev.map((m) =>
                  m.id === message.id ? { ...m, deleted_at: null } : m,
                ),
              );
            }
          })();
        },
      },
    ]);
  }, []);

  const [editingMessage, setEditingMessage] = useState<DiscussionMessage | null>(null);
  const [editText, setEditText] = useState('');

  const startEdit = useCallback((message: DiscussionMessage) => {
    setActionMessage(null);
    setEditingMessage(message);
    setEditText(message.body);
  }, []);

  const saveEdit = useCallback(async () => {
    if (!editingMessage) return;
    const trimmed = editText.trim();
    if (!trimmed) return;
    const now = new Date().toISOString();
    setMessages((prev) =>
      prev.map((m) =>
        m.id === editingMessage.id
          ? { ...m, body: trimmed, edited_at: now }
          : m,
      ),
    );
    setEditingMessage(null);
    setEditText('');
    await editMessage(editingMessage.id, trimmed);
  }, [editingMessage, editText]);

  const partnerTypingVisible = typing;

  // Ticks for my messages: read when partner's uid is in read_by
  const isReadByPartner = useCallback(
    (m: DiscussionMessage) => !!partnerId && m.read_by.includes(partnerId),
    [partnerId],
  );

  return (
    <KeyboardAvoidingView
      style={[styles.root, { backgroundColor: tokens.background }]}
      behavior={Platform.OS === 'ios' ? 'padding' : 'height'}
      keyboardVerticalOffset={Platform.OS === 'ios' ? 8 : 0}
    >
      <View
        style={[
          styles.header,
          {
            backgroundColor: tokens.card,
            borderBottomColor: tokens.border,
            paddingTop: insets.top + 8,
          },
        ]}
      >
        <Pressable
          onPress={() => router.back()}
          style={styles.backButton}
          hitSlop={12}
        >
          <RichIcon name="chevron-back" size={22} tokens={tokens} variant="plain" />
        </Pressable>
        <Pressable
          style={styles.headerProfile}
          onPress={() => router.push('/partner-profile')}
          accessibilityLabel="View partner profile"
        >
          {partnerAvatar ? (
            <Image source={{ uri: partnerAvatar }} style={styles.avatar} />
          ) : (
            <View style={[styles.avatarFallback, { backgroundColor: tokens.primaryTint }]}>
              <Text style={[styles.avatarLetter, { color: tokens.primary }]}>
                {partnerName.charAt(0).toUpperCase()}
              </Text>
            </View>
          )}
          <View style={styles.headerInfo}>
            <Text style={[styles.title, { color: tokens.ink }]} numberOfLines={1}>
              {partnerName}
            </Text>
            <Text style={[styles.status, { color: partnerTypingVisible ? tokens.primary : tokens.muted }]} numberOfLines={1}>
              {partnerTypingVisible ? 'typing…' : 'online'}
            </Text>
          </View>
        </Pressable>
        <View style={styles.headerActions}>
          <Pressable
            onPress={() => void Haptics.impactAsync(Haptics.ImpactFeedbackStyle.Light)}
            style={styles.headerIconButton}
            hitSlop={12}
          >
            <RichIcon name="phone" size={22} tokens={tokens} variant="plain" />
          </Pressable>
          <Pressable
            onPress={() => void Haptics.impactAsync(Haptics.ImpactFeedbackStyle.Light)}
            style={styles.headerIconButton}
            hitSlop={12}
          >
            <RichIcon name="video" size={22} tokens={tokens} variant="plain" />
          </Pressable>
        </View>
      </View>

      {loading ? (
        <View style={styles.center}>
          <LoadingHeart tokens={tokens} size={56} message="Loading chat…" />
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
          <CoupleIllustration name="couple-embrace" variant="breathe" size={140} />
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
            <MessageBubble
              message={item}
              mine={item.sender_id === myId}
              myId={myId}
              partnerRead={isReadByPartner(item)}
              onLongPress={setActionMessage}
              onImagePress={setViewerUrl}
            />
          )}
        />
      )}

      {replyTo ? (
        <View style={[styles.replyBar, { backgroundColor: tokens.card, borderColor: tokens.border }]}>
          <View style={[styles.replyBarLine, { backgroundColor: tokens.primary }]} />
          <View style={styles.replyBarText}>
            <Text style={[styles.replyName, { color: tokens.primary }]}>
              Replying to {replyTo.sender_id === myId ? 'yourself' : replyTo.sender_name}
            </Text>
            <Text style={[styles.replyBody, { color: tokens.muted }]} numberOfLines={1}>
              {replyTo.message_type === 'text'
                ? replyTo.body
                : replyTo.message_type === 'image'
                  ? '📷 Photo'
                  : replyTo.message_type === 'voice'
                    ? '🎤 Voice message'
                    : '💌 Sticker'}
            </Text>
          </View>
          <Pressable onPress={() => setReplyTo(null)} style={styles.replyClose}>
            <Text style={[styles.replyCloseText, { color: tokens.muted }]}>✕</Text>
          </Pressable>
        </View>
      ) : null}

      {recorder ? (
        <View style={[styles.recordingBar, { backgroundColor: tokens.card }]}>
          <View style={[styles.recDot, { backgroundColor: tokens.danger }]} />
          <Text style={[styles.recTime, { color: tokens.ink }]}>
            {formatDuration(recordSecs * 1000)} recording…
          </Text>
          <Pressable
            onPress={() => void stopRecording(false)}
            style={styles.recCancel}
          >
            <Text style={[styles.recCancelText, { color: tokens.danger }]}>Cancel</Text>
          </Pressable>
          <SpringPress onPress={() => void stopRecording(true)}>
            <View style={[styles.recSend, { backgroundColor: tokens.primary }]}>
              <RichIcon name="send" size={18} tokens={tokens} variant="plain" color={tokens.onPrimary} />
            </View>
          </SpringPress>
        </View>
      ) : (
        <View style={styles.composer}>
          <SpringPress onPress={() => void onPickImage()}>
            <View style={[styles.iconButton, { backgroundColor: tokens.primaryTint }]}>
              <RichIcon name="image-outline" size={20} tokens={tokens} variant="plain" />
            </View>
          </SpringPress>
          <TextInput
            style={[styles.input, { backgroundColor: tokens.card, color: tokens.ink }]}
            value={draft}
            onChangeText={onDraftChange}
            placeholder="Write a message"
            placeholderTextColor={tokens.muted}
            multiline
            maxLength={1000}
            returnKeyType="send"
            onSubmitEditing={() => void onSend()}
          />
          <SpringPress onPress={() => openStickerPicker()}>
            <View style={[styles.iconButton, { backgroundColor: tokens.primaryTint }]}>
              <RichIcon name="sticker" size={20} tokens={tokens} variant="plain" />
            </View>
          </SpringPress>
          {draft.trim() ? (
            <SpringPress onPress={() => void onSend()}>
              <View style={[styles.sendButton, { backgroundColor: tokens.primary }]}>
                {sending || uploading ? (
                  <ActivityIndicator color={tokens.onPrimary} size="small" />
                ) : (
                  <RichIcon name="send" size={18} tokens={tokens} variant="plain" color={tokens.onPrimary} />
                )}
              </View>
            </SpringPress>
          ) : (
            <Pressable
              onPressIn={() => void startRecording()}
              onPressOut={() => void stopRecording(true)}
              delayLongPress={150}
              style={[styles.micButton, { backgroundColor: tokens.primary }]}
            >
              <RichIcon name="mic" size={20} tokens={tokens} variant="plain" color={tokens.onPrimary} />
            </Pressable>
          )}
        </View>
      )}
      {error && messages.length > 0 ? (
        <Text style={[styles.inlineError, { color: tokens.danger }]}>{error}</Text>
      ) : null}

      {/* Long-press action menu */}
      <Modal visible={!!actionMessage} transparent animationType="fade">
        <Pressable style={styles.modalBg} onPress={() => setActionMessage(null)}>
          <View style={[styles.actionSheet, { backgroundColor: tokens.card }]}>
            {actionMessage ? (
              <>
                <Text style={[styles.actionTitle, { color: tokens.ink }]} numberOfLines={1}>
                  {actionMessage.message_type === 'text'
                    ? actionMessage.body
                    : `${actionMessage.message_type[0].toUpperCase()}${actionMessage.message_type.slice(1)} message`}
                </Text>
                <View style={styles.quickReacts}>
                  {QUICK_REACTIONS.map((e) => (
                    <Pressable
                      key={e}
                      onPress={() => {
                        setActionMessage(null);
                        void onReact(actionMessage, e);
                      }}
                      style={styles.quickReact}
                    >
                      <Text style={styles.quickReactText}>{e}</Text>
                    </Pressable>
                  ))}
                </View>
                <Pressable
                  style={styles.actionRow}
                  onPress={() => {
                    setReplyTo(actionMessage);
                    setActionMessage(null);
                  }}
                >
                  <Text style={[styles.actionText, { color: tokens.ink }]}>↩ Reply</Text>
                </Pressable>
                <Pressable
                  style={styles.actionRow}
                  onPress={() => {
                    setReactMessage(actionMessage);
                    setActionMessage(null);
                  }}
                >
                  <Text style={[styles.actionText, { color: tokens.ink }]}>😊 React</Text>
                </Pressable>
                {actionMessage.sender_id === myId ? (
                  <>
                    {actionMessage.message_type === 'text' && !actionMessage.deleted_at ? (
                      <Pressable
                        style={styles.actionRow}
                        onPress={() => void startEdit(actionMessage)}
                      >
                        <Text style={[styles.actionText, { color: tokens.ink }]}>✏️ Edit</Text>
                      </Pressable>
                    ) : null}
                    {!actionMessage.deleted_at ? (
                      <Pressable
                        style={styles.actionRow}
                        onPress={() => void onDelete(actionMessage)}
                      >
                        <Text style={[styles.actionText, { color: tokens.danger }]}>🗑 Delete</Text>
                      </Pressable>
                    ) : null}
                  </>
                ) : null}
              </>
            ) : null}
          </View>
        </Pressable>
      </Modal>

      {/* Full reaction picker */}
      <Modal visible={!!reactMessage} transparent animationType="fade">
        <Pressable style={styles.modalBg} onPress={() => setReactMessage(null)}>
          <View style={[styles.reactSheet, { backgroundColor: tokens.card }]}>
            <Text style={[styles.actionTitle, { color: tokens.ink }]}>React</Text>
            <View style={styles.quickReacts}>
              {QUICK_REACTIONS.map((e) => (
                <Pressable
                  key={e}
                  onPress={() => {
                    if (reactMessage) void onReact(reactMessage, e);
                  }}
                  style={styles.quickReact}
                >
                  <Text style={styles.quickReactText}>{e}</Text>
                </Pressable>
              ))}
            </View>
          </View>
        </Pressable>
      </Modal>

      {/* Sticker picker */}
      <Modal visible={stickerOpen} transparent animationType="slide">
        <Pressable style={styles.modalBg} onPress={() => setStickerOpen(false)}>
          <View style={[styles.stickerSheet, { backgroundColor: tokens.card }]}>
            <Text style={[styles.actionTitle, { color: tokens.ink }]}>Stickers</Text>
            {giphyConfigured() ? (
              <View style={styles.tabRow}>
                <Pressable
                  onPress={() => setStickerTab('hearts')}
                  style={[
                    styles.tab,
                    stickerTab === 'hearts' && { backgroundColor: tokens.primaryTint },
                  ]}
                >
                  <Text
                    style={[
                      styles.tabText,
                      { color: stickerTab === 'hearts' ? tokens.primary : tokens.muted },
                    ]}
                  >
                    Hearts
                  </Text>
                </Pressable>
                <Pressable
                  onPress={() => setStickerTab('giphy')}
                  style={[
                    styles.tab,
                    stickerTab === 'giphy' && { backgroundColor: tokens.primaryTint },
                  ]}
                >
                  <Text
                    style={[
                      styles.tabText,
                      { color: stickerTab === 'giphy' ? tokens.primary : tokens.muted },
                    ]}
                  >
                    GIPHY
                  </Text>
                </Pressable>
              </View>
            ) : null}
            {stickerTab === 'hearts' || !giphyConfigured() ? (
              <View style={styles.stickerGrid}>
                {STICKERS.map((s) => (
                  <Pressable key={s.name} onPress={() => void onSendSticker(s.name)}>
                    <Image source={s.source} style={styles.stickerOption} resizeMode="contain" />
                  </Pressable>
                ))}
              </View>
            ) : (
              <View>
                <View style={[styles.searchRow, { borderColor: tokens.border }]}>
                  <TextInput
                    value={giphyQuery}
                    onChangeText={setGiphyQuery}
                    placeholder="Search stickers…"
                    placeholderTextColor={tokens.muted}
                    style={[styles.searchInput, { color: tokens.ink }]}
                    onSubmitEditing={() => void onGiphySearch()}
                    returnKeyType="search"
                  />
                  <Pressable onPress={() => void onGiphySearch()} style={styles.searchBtn}>
                    <Text style={[styles.searchBtnText, { color: tokens.primary }]}>Search</Text>
                  </Pressable>
                </View>
                {giphyLoading ? (
                  <LoadingHeart tokens={tokens} size={40} />
                ) : (
                  <View style={styles.stickerGrid}>
                    {giphyStickers.map((s) => (
                      <Pressable key={s.id} onPress={() => void onSendSticker(s.fullUrl)}>
                        <Image source={{ uri: s.previewUrl }} style={styles.stickerOption} resizeMode="contain" />
                      </Pressable>
                    ))}
                  </View>
                )}
              </View>
            )}
          </View>
        </Pressable>
      </Modal>

      {/* Fullscreen image viewer */}
      <Modal visible={!!viewerUrl} transparent animationType="fade">
        <Pressable style={styles.viewerBg} onPress={() => setViewerUrl(null)}>
          {viewerUrl ? (
            <Image source={{ uri: viewerUrl }} style={styles.viewerImage} resizeMode="contain" />
          ) : null}
          <Text style={styles.viewerHint}>Tap to close</Text>
        </Pressable>
      </Modal>

      {/* Edit message sheet */}
      <Modal visible={!!editingMessage} transparent animationType="slide">
        <Pressable
          style={styles.modalBg}
          onPress={() => {
            setEditingMessage(null);
            setEditText('');
          }}
        >
          <Pressable
            style={[styles.editSheet, { backgroundColor: tokens.card }]}
            onPress={() => undefined}
          >
            <Text style={[styles.editTitle, { color: tokens.ink }]}>Edit message</Text>
            <TextInput
              style={[
                styles.editInput,
                {
                  backgroundColor: tokens.background,
                  color: tokens.ink,
                  borderColor: tokens.border,
                },
              ]}
              value={editText}
              onChangeText={setEditText}
              multiline
              autoFocus
              maxLength={2000}
              placeholderTextColor={tokens.muted}
            />
            <View style={styles.editActions}>
              <Pressable
                style={styles.editCancel}
                onPress={() => {
                  setEditingMessage(null);
                  setEditText('');
                }}
              >
                <Text style={[styles.editCancelText, { color: tokens.muted }]}>Cancel</Text>
              </Pressable>
              <Pressable
                style={[styles.editSave, { backgroundColor: tokens.primary }]}
                onPress={() => void saveEdit()}
              >
                <Text style={[styles.editSaveText, { color: tokens.onPrimary }]}>Save</Text>
              </Pressable>
            </View>
          </Pressable>
        </Pressable>
      </Modal>
    </KeyboardAvoidingView>
  );
}

const styles = StyleSheet.create({
  root: { flex: 1 },
  header: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingHorizontal: 8,
    paddingBottom: 10,
    borderBottomWidth: 1,
    // Subtle shadow for separation.
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.06,
    shadowRadius: 8,
    elevation: 3,
  },
  backButton: { padding: 8 },
  avatar: { width: 40, height: 40, borderRadius: 20, marginLeft: 4 },
  avatarFallback: {
    width: 40,
    height: 40,
    borderRadius: 20,
    marginLeft: 4,
    alignItems: 'center',
    justifyContent: 'center',
  },
  avatarLetter: { fontFamily: FONTS.heading, fontSize: 18, fontWeight: '800' },
  headerInfo: { flex: 1, marginLeft: 10, justifyContent: 'center' },
  headerProfile: { flex: 1, flexDirection: 'row', alignItems: 'center' },
  title: { fontFamily: FONTS.heading, fontSize: 16, fontWeight: '800' },
  status: { fontFamily: FONTS.body, fontSize: 12, marginTop: 1 },
  headerActions: { flexDirection: 'row', alignItems: 'center' },
  headerIconButton: { padding: 8 },
  center: { flex: 1, alignItems: 'center', justifyContent: 'center', padding: 24 },
  error: { fontFamily: FONTS.body, fontSize: 15, textAlign: 'center', marginBottom: 12 },
  retryButton: { borderWidth: 1.5, borderRadius: 12, paddingVertical: 10, paddingHorizontal: 20 },
  retryText: { fontFamily: FONTS.body, fontSize: 15, fontWeight: '600' },
  emptyTitle: { fontFamily: FONTS.heading, fontSize: 18, fontWeight: '700', marginTop: 12, marginBottom: 8 },
  emptyHint: { fontFamily: FONTS.body, fontSize: 15, textAlign: 'center', lineHeight: 22 },
  list: { paddingHorizontal: 16, paddingVertical: 12 },
  bubbleRow: { marginBottom: 8 },
  bubbleRowMine: { alignItems: 'flex-end' },
  bubble: { maxWidth: '78%', borderRadius: 16, paddingHorizontal: 14, paddingVertical: 10 },
  bubbleMine: { borderBottomRightRadius: 4 },
  bubbleTheirs: { borderBottomLeftRadius: 4 },
  bubbleSticker: { backgroundColor: 'transparent', paddingHorizontal: 0, paddingVertical: 0 },
  bubbleText: { fontFamily: FONTS.body, fontSize: 16, lineHeight: 22 },
  bubbleDeleted: { borderWidth: 1, borderStyle: 'dashed', opacity: 0.8 },
  deletedText: { fontStyle: 'italic', fontSize: 14 },
  editedLabel: { fontFamily: FONTS.body, fontSize: 10, fontStyle: 'italic' },
  editSheet: {
    borderRadius: 24,
    padding: 20,
    width: '100%',
    maxWidth: 480,
  },
  editTitle: { fontFamily: FONTS.heading, fontSize: 18, fontWeight: '700', marginBottom: 12 },
  editInput: {
    fontFamily: FONTS.body,
    fontSize: 16,
    borderWidth: 1,
    borderRadius: 12,
    padding: 12,
    minHeight: 100,
    textAlignVertical: 'top',
  },
  editActions: { flexDirection: 'row', justifyContent: 'flex-end', marginTop: 16, gap: 8 },
  editCancel: { paddingVertical: 12, paddingHorizontal: 20, borderRadius: 12 },
  editCancelText: { fontFamily: FONTS.body, fontWeight: '700', fontSize: 15 },
  editSave: { paddingVertical: 12, paddingHorizontal: 24, borderRadius: 12, minWidth: 90, alignItems: 'center' },
  editSaveText: { fontFamily: FONTS.body, fontWeight: '700', fontSize: 15 },
  bubbleImage: { width: 200, height: 200, borderRadius: 12 },
  sticker: { width: 120, height: 120 },
  bubbleMeta: { flexDirection: 'row', alignItems: 'center', justifyContent: 'flex-end', marginTop: 4, gap: 4 },
  bubbleTime: { fontFamily: FONTS.body, fontSize: 11 },
  bubbleTimeMine: { opacity: 0.75 },
  ticks: { fontSize: 12, fontWeight: '700' },
  reactionsRow: { flexDirection: 'row', marginTop: 4, gap: 4 },
  reactionsRowMine: { justifyContent: 'flex-end' },
  reactionChip: {
    flexDirection: 'row',
    alignItems: 'center',
    borderWidth: 1,
    borderRadius: 12,
    paddingHorizontal: 8,
    paddingVertical: 3,
    gap: 3,
  },
  reactionEmoji: { fontSize: 14 },
  reactionCount: { fontFamily: FONTS.body, fontSize: 12, fontWeight: '600' },
  voiceRow: { flexDirection: 'row', alignItems: 'center', gap: 10, minWidth: 180 },
  voiceButton: { width: 36, height: 36, borderRadius: 18, alignItems: 'center', justifyContent: 'center' },
  voiceWave: { flex: 1 },
  waveform: { flexDirection: 'row', alignItems: 'center', gap: 2, height: 28 },
  waveBar: { width: 3, borderRadius: 2 },
  voiceDuration: { fontFamily: FONTS.body, fontSize: 11, marginTop: 2 },
  replyQuote: {
    borderLeftWidth: 3,
    borderRadius: 8,
    paddingHorizontal: 8,
    paddingVertical: 6,
    marginBottom: 8,
  },
  replyName: { fontFamily: FONTS.body, fontSize: 12, fontWeight: '700' },
  replyBody: { fontFamily: FONTS.body, fontSize: 13, marginTop: 2 },
  replyBar: {
    flexDirection: 'row',
    alignItems: 'center',
    marginHorizontal: 12,
    marginBottom: 8,
    borderRadius: 12,
    borderWidth: 1,
    padding: 10,
    gap: 10,
  },
  replyBarLine: { width: 3, alignSelf: 'stretch', borderRadius: 2 },
  replyBarText: { flex: 1 },
  replyClose: { padding: 4 },
  replyCloseText: { fontSize: 16 },
  recordingBar: {
    flexDirection: 'row',
    alignItems: 'center',
    marginHorizontal: 12,
    marginBottom: 10,
    borderRadius: 18,
    paddingHorizontal: 16,
    paddingVertical: 12,
    gap: 10,
  },
  recDot: { width: 10, height: 10, borderRadius: 5 },
  recTime: { fontFamily: FONTS.body, fontSize: 15, fontWeight: '600', flex: 1 },
  recCancel: { paddingHorizontal: 8, paddingVertical: 4 },
  recCancelText: { fontFamily: FONTS.body, fontSize: 14, fontWeight: '600' },
  recSend: { width: 40, height: 40, borderRadius: 20, alignItems: 'center', justifyContent: 'center' },
  composer: { flexDirection: 'row', alignItems: 'flex-end', paddingHorizontal: 12, paddingVertical: 10, gap: 8 },
  iconButton: { width: 44, height: 44, borderRadius: 22, alignItems: 'center', justifyContent: 'center' },
  input: {
    flex: 1,
    borderRadius: 18,
    paddingHorizontal: 16,
    paddingVertical: 12,
    fontFamily: FONTS.body,
    fontSize: 16,
    maxHeight: 120,
  },
  sendButton: { width: 44, height: 44, borderRadius: 22, alignItems: 'center', justifyContent: 'center' },
  micButton: { width: 44, height: 44, borderRadius: 22, alignItems: 'center', justifyContent: 'center' },
  inlineError: { fontFamily: FONTS.body, fontSize: 13, textAlign: 'center', paddingBottom: 8 },
  modalBg: { flex: 1, backgroundColor: 'rgba(0,0,0,0.4)', justifyContent: 'flex-end' },
  actionSheet: {
    borderTopLeftRadius: 20,
    borderTopRightRadius: 20,
    padding: 20,
    paddingBottom: 32,
  },
  actionTitle: { fontFamily: FONTS.heading, fontSize: 16, fontWeight: '700', marginBottom: 12 },
  quickReacts: { flexDirection: 'row', justifyContent: 'space-around', marginBottom: 16 },
  quickReact: { padding: 8 },
  quickReactText: { fontSize: 28 },
  actionRow: { paddingVertical: 12, borderTopWidth: 1, borderTopColor: 'rgba(0,0,0,0.06)' },
  actionText: { fontFamily: FONTS.body, fontSize: 16, fontWeight: '600' },
  reactSheet: { borderTopLeftRadius: 20, borderTopRightRadius: 20, padding: 20, paddingBottom: 32 },
  stickerSheet: { borderTopLeftRadius: 20, borderTopRightRadius: 20, padding: 20, paddingBottom: 32, maxHeight: '70%' },
  stickerGrid: { flexDirection: 'row', flexWrap: 'wrap', justifyContent: 'space-around', gap: 12 },
  stickerOption: { width: 88, height: 88 },
  tabRow: { flexDirection: 'row', gap: 8, marginBottom: 12 },
  tab: { flex: 1, paddingVertical: 10, borderRadius: 12, alignItems: 'center' },
  tabText: { fontFamily: FONTS.body, fontSize: 14, fontWeight: '700' },
  searchRow: {
    flexDirection: 'row',
    alignItems: 'center',
    borderWidth: 1,
    borderRadius: 12,
    paddingHorizontal: 12,
    marginBottom: 12,
  },
  searchInput: { flex: 1, fontFamily: FONTS.body, fontSize: 15, paddingVertical: 10 },
  searchBtn: { paddingVertical: 10, paddingLeft: 8 },
  searchBtnText: { fontFamily: FONTS.body, fontSize: 15, fontWeight: '700' },
  viewerBg: { flex: 1, backgroundColor: 'rgba(0,0,0,0.92)', alignItems: 'center', justifyContent: 'center' },
  viewerImage: { width: '92%', height: '75%' },
  viewerHint: { color: '#fff', fontFamily: FONTS.body, fontSize: 13, marginTop: 16, opacity: 0.7 },
});
