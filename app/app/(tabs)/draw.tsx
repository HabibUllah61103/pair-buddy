import { useEffect, useRef, useState } from 'react';
import {
  ActivityIndicator,
  Pressable,
  ScrollView,
  StyleSheet,
  Text,
  View,
} from 'react-native';
import { SvgUri } from 'react-native-svg';
import DrawingCanvas, {
  DRAW_COLORS,
  DRAW_SIZES,
  type DrawingCanvasHandle,
} from '../../src/components/drawing-canvas';
import {
  getLatestDrawing,
  getMyUserId,
  saveDrawing,
  subscribeDrawings,
  type Drawing,
} from '../../src/lib/drawings';

const NAVY = '#123B63';
const TEAL = '#14B8A6';
const MUTED = '#8AA0B8';
const CARD = '#1B4A7A';

function formatWhen(iso: string): string {
  const d = new Date(iso);
  const now = new Date();
  const sameDay = d.toDateString() === now.toDateString();
  const time = d.toLocaleTimeString([], { hour: 'numeric', minute: '2-digit' });
  if (sameDay) return `Today, ${time}`;
  return `${d.toLocaleDateString([], { month: 'short', day: 'numeric' })}, ${time}`;
}

export default function DrawScreen() {
  const canvasRef = useRef<DrawingCanvasHandle>(null);
  const [color, setColor] = useState(DRAW_COLORS[0]);
  const [size, setSize] = useState(DRAW_SIZES[1]);
  const [latest, setLatest] = useState<Drawing | null>(null);
  const [myId, setMyId] = useState<string | null>(null);
  const [sending, setSending] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [notice, setNotice] = useState<string | null>(null);

  useEffect(() => {
    let unsub: (() => void) | null = null;
    let alive = true;
    (async () => {
      const [uid, first] = await Promise.all([getMyUserId(), getLatestDrawing()]);
      if (!alive) return;
      setMyId(uid);
      if (first.error) setError(first.error);
      else setLatest(first.data);
      const sub = await subscribeDrawings((drawing) => {
        if (alive) {
          setLatest(drawing);
          setNotice('Your partner sent a new drawing.');
        }
      });
      if (!alive) {
        sub.data?.();
        return;
      }
      if (sub.error) setError(sub.error);
      else unsub = sub.data;
    })();
    return () => {
      alive = false;
      unsub?.();
    };
  }, []);

  const send = async () => {
    setError(null);
    setNotice(null);
    const canvas = canvasRef.current;
    if (!canvas || canvas.isEmpty()) {
      setError('Draw something first.');
      return;
    }
    setSending(true);
    try {
      const result = await saveDrawing(canvas.getDataUrl());
      if (result.error || !result.data) {
        setError(result.error ?? 'Could not send your drawing.');
        return;
      }
      canvas.clear();
      setLatest(result.data);
      setNotice('Sent to your partner.');
    } finally {
      setSending(false);
    }
  };

  const latestMine = latest !== null && myId !== null && latest.created_by === myId;

  return (
    <ScrollView style={styles.screen} contentContainerStyle={styles.content}>
      <Text style={styles.title}>Draw</Text>

      <View style={styles.canvasBox}>
        <DrawingCanvas ref={canvasRef} color={color} size={size} />
      </View>

      <View style={styles.toolbar}>
        <View style={styles.swatches}>
          {DRAW_COLORS.map((c) => (
            <Pressable
              key={c}
              onPress={() => setColor(c)}
              style={[
                styles.swatch,
                { backgroundColor: c },
                color === c && styles.swatchActive,
              ]}
              accessibilityLabel={`Color ${c}`}
            />
          ))}
        </View>
        <View style={styles.sizes}>
          {DRAW_SIZES.map((s) => (
            <Pressable
              key={s}
              onPress={() => setSize(s)}
              style={[styles.sizeDot, size === s && styles.sizeActive]}
              accessibilityLabel={`Brush size ${s}`}
            >
              <View
                style={[styles.sizeInner, { width: s + 4, height: s + 4 }]}
              />
            </Pressable>
          ))}
        </View>
      </View>

      <View style={styles.actions}>
        <Pressable
          onPress={() => canvasRef.current?.undo()}
          style={styles.ghostBtn}
        >
          <Text style={styles.ghostText}>Undo</Text>
        </Pressable>
        <Pressable
          onPress={() => canvasRef.current?.clear()}
          style={styles.ghostBtn}
        >
          <Text style={styles.ghostText}>Clear</Text>
        </Pressable>
        <Pressable
          onPress={send}
          disabled={sending}
          style={[styles.sendBtn, sending && styles.sendDisabled]}
        >
          {sending ? (
            <ActivityIndicator color="#FFFFFF" size="small" />
          ) : (
            <Text style={styles.sendText}>Send</Text>
          )}
        </Pressable>
      </View>

      {error !== null && <Text style={styles.error}>{error}</Text>}
      {notice !== null && <Text style={styles.notice}>{notice}</Text>}

      <Text style={styles.sectionTitle}>Latest</Text>
      <View style={styles.latestCard}>
        {latest === null ? (
          <Text style={styles.hint}>
            No drawings yet. Send the first doodle.
          </Text>
        ) : (
          <>
            <SvgUri
              uri={latest.image_url}
              width="100%"
              height={180}
              style={styles.latestArt}
            />
            <Text style={styles.latestMeta}>
              {latestMine ? 'You' : latest.creator_name} ·{' '}
              {formatWhen(latest.created_at)}
            </Text>
          </>
        )}
      </View>
      <View style={styles.spacer} />
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  screen: { flex: 1, backgroundColor: NAVY },
  content: { padding: 16 },
  title: { color: '#FFFFFF', fontSize: 24, fontWeight: '800', marginBottom: 12 },
  canvasBox: { height: 300, borderRadius: 16, overflow: 'hidden' },
  toolbar: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    marginTop: 12,
  },
  swatches: { flexDirection: 'row', gap: 10 },
  swatch: {
    width: 30,
    height: 30,
    borderRadius: 15,
    borderWidth: 2,
    borderColor: 'transparent',
  },
  swatchActive: { borderColor: '#FFFFFF' },
  sizes: { flexDirection: 'row', gap: 8, alignItems: 'center' },
  sizeDot: {
    width: 30,
    height: 30,
    borderRadius: 15,
    backgroundColor: CARD,
    alignItems: 'center',
    justifyContent: 'center',
  },
  sizeActive: { borderColor: TEAL, borderWidth: 2 },
  sizeInner: { backgroundColor: '#FFFFFF', borderRadius: 99 },
  actions: { flexDirection: 'row', gap: 10, marginTop: 12 },
  ghostBtn: {
    paddingVertical: 12,
    paddingHorizontal: 18,
    borderRadius: 12,
    backgroundColor: CARD,
  },
  ghostText: { color: '#FFFFFF', fontWeight: '700' },
  sendBtn: {
    flex: 1,
    paddingVertical: 12,
    borderRadius: 12,
    backgroundColor: TEAL,
    alignItems: 'center',
  },
  sendDisabled: { opacity: 0.6 },
  sendText: { color: '#FFFFFF', fontWeight: '800', fontSize: 16 },
  error: { color: '#F97066', marginTop: 10, fontSize: 14 },
  notice: { color: TEAL, marginTop: 10, fontSize: 14 },
  sectionTitle: {
    color: '#FFFFFF',
    fontSize: 18,
    fontWeight: '800',
    marginTop: 18,
    marginBottom: 8,
  },
  latestCard: {
    backgroundColor: CARD,
    borderRadius: 16,
    padding: 12,
  },
  latestArt: { borderRadius: 8, backgroundColor: '#FFFFFF' },
  latestMeta: { color: MUTED, fontSize: 13, marginTop: 8 },
  hint: { color: MUTED, fontSize: 15, textAlign: 'center', paddingVertical: 24 },
  spacer: { height: 24 },
});
