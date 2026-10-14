import { useEffect, useRef, useState } from 'react';
import {
  ActivityIndicator,
  Image,
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
  getDrawings,
  getMyUserId,
  saveDrawing,
  subscribeDrawings,
  type Drawing,
} from '../../src/lib/drawings';
import { FONTS } from '../../src/theme';
import { useTheme } from '../../src/lib/theme-provider';
import GlassHeader from '../../src/components/glass-header';
import { LinearGradient } from 'expo-linear-gradient';
import { FadeInView, SpringPress } from '../../src/components/animated';

function formatWhen(iso: string): string {
  const d = new Date(iso);
  const now = new Date();
  const sameDay = d.toDateString() === now.toDateString();
  const time = d.toLocaleTimeString([], { hour: 'numeric', minute: '2-digit' });
  if (sameDay) return `Today, ${time}`;
  return `${d.toLocaleDateString([], { month: 'short', day: 'numeric' })}, ${time}`;
}

export default function DrawScreen() {
  const { tokens, mode } = useTheme();
  const canvasRef = useRef<DrawingCanvasHandle>(null);
  const [color, setColor] = useState(DRAW_COLORS[0]);
  const [size, setSize] = useState(DRAW_SIZES[1]);
  const [history, setHistory] = useState<Drawing[]>([]);
  const [myId, setMyId] = useState<string | null>(null);
  const [sending, setSending] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [notice, setNotice] = useState<string | null>(null);
  const [editing, setEditing] = useState(false);
  const bgSource =
    mode === 'dark'
      ? require('../../assets/bg-night-stars.png')
      : require('../../assets/bg-playful-pattern.png');

  const latest = history.length > 0 ? history[0] : null;

  useEffect(() => {
    let unsub: (() => void) | null = null;
    let alive = true;
    (async () => {
      const [uid, res] = await Promise.all([getMyUserId(), getDrawings(20)]);
      if (!alive) return;
      setMyId(uid);
      if (res.error) setError(res.error);
      else setHistory(res.data ?? []);
      const sub = await subscribeDrawings((drawing) => {
        if (alive) {
          setHistory((prev) => [
            drawing,
            ...prev.filter((d) => d.id !== drawing.id),
          ]);
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
      setEditing(false);
      setHistory((prev) => [
        result.data as Drawing,
        ...prev.filter((d) => d.id !== (result.data as Drawing).id),
      ]);
      setNotice('Sent to your partner.');
    } finally {
      setSending(false);
    }
  };

  const loadForEdit = (d: Drawing) => {
    setError(null);
    canvasRef.current?.loadFromDataUrl(d.image_url);
    setEditing(true);
    setNotice('Editing — Send to save as new.');
  };

  const clearCanvas = () => {
    canvasRef.current?.clear();
    setEditing(false);
    setNotice(null);
  };

  const latestMine = latest !== null && myId !== null && latest.created_by === myId;

  return (
    <View style={[styles.screen, { backgroundColor: tokens.background }]}>
      <Image source={bgSource} style={styles.bg} resizeMode="cover" />
      <GlassHeader
        title="Draw"
        subtitle="Sketch something sweet together"
        tokens={tokens}
      />
      <ScrollView contentContainerStyle={styles.content}>

      <FadeInView delay={0}>
        <View style={[styles.canvasBox, editing && { borderWidth: 2, borderColor: tokens.primary }]}>
          <DrawingCanvas ref={canvasRef} color={color} size={size} />
        </View>
      </FadeInView>

      <View style={styles.toolbar}>
        <View style={styles.swatches}>
          {DRAW_COLORS.map((c) => (
            <Pressable
              key={c}
              onPress={() => setColor(c)}
              style={[
                styles.swatch,
                { backgroundColor: c },
                color === c && { borderColor: tokens.ink },
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
              style={[styles.sizeDot, { backgroundColor: tokens.primaryTint }, size === s && { borderColor: tokens.primary, borderWidth: 2 }]}
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
        <SpringPress
          onPress={() => canvasRef.current?.undo()}
          style={[styles.ghostBtn, { backgroundColor: tokens.card }]}
        >
          <Text style={[styles.ghostText, { color: tokens.ink }]}>Undo</Text>
        </SpringPress>
        <SpringPress
          onPress={clearCanvas}
          style={[styles.ghostBtn, { backgroundColor: tokens.card }]}
        >
          <Text style={[styles.ghostText, { color: tokens.ink }]}>Clear</Text>
        </SpringPress>
        <SpringPress
          onPress={send}
          style={[styles.sendWrap, sending && styles.sendDisabled]}
        >
          <LinearGradient
            colors={tokens.gradient}
            start={{ x: 0, y: 0 }}
            end={{ x: 1, y: 0 }}
            style={styles.sendBtn}
          >
            {sending ? (
              <ActivityIndicator color="#FFFFFF" size="small" />
            ) : (
              <Text style={styles.sendText}>Send</Text>
            )}
          </LinearGradient>
        </SpringPress>
      </View>

      {error !== null && <Text style={[styles.error, { color: tokens.danger }]}>{error}</Text>}
      {notice !== null && <Text style={[styles.notice, { color: tokens.primary }]}>{notice}</Text>}

      <Text style={[styles.sectionTitle, { color: tokens.ink }]}>Latest</Text>
      <FadeInView delay={80}>
        <View style={[styles.latestCard, { backgroundColor: tokens.card }]}>
          {latest === null ? (
            <Text style={[styles.hint, { color: tokens.muted }]}>
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
              <Text style={[styles.latestMeta, { color: tokens.muted }]}>
                {latestMine ? 'You' : latest.creator_name} ·{' '}
                {formatWhen(latest.created_at)}
              </Text>
            </>
          )}
        </View>
      </FadeInView>

      {history.length > 1 && (
        <>
          <Text style={[styles.sectionTitle, { color: tokens.ink }]}>
            History
          </Text>
          <Text style={[styles.historyHint, { color: tokens.muted }]}>
            Tap a drawing to edit it — Send saves it as a new drawing.
          </Text>
          <ScrollView
            horizontal
            showsHorizontalScrollIndicator={false}
            contentContainerStyle={styles.historyRow}
          >
            {history.slice(1).map((d, idx) => (
              <FadeInView key={d.id} delay={idx * 80}>
                <SpringPress
                  onPress={() => loadForEdit(d)}
                  style={[styles.historyCard, { backgroundColor: tokens.card }]}
                >
                  <SvgUri
                    uri={d.image_url}
                    width={104}
                    height={78}
                    style={styles.historyArt}
                  />
                  <Text
                    style={[styles.historyMeta, { color: tokens.muted }]}
                    numberOfLines={1}
                  >
                    {myId !== null && d.created_by === myId
                      ? 'You'
                      : d.creator_name}
                    {' · '}
                    {formatWhen(d.created_at)}
                  </Text>
                </SpringPress>
              </FadeInView>
            ))}
          </ScrollView>
        </>
      )}
      <View style={styles.spacer} />
      </ScrollView>
    </View>
  );
}

const BUBBLY_SHADOW = {
  shadowColor: '#000',
  shadowOffset: { width: 0, height: 4 },
  shadowOpacity: 0.08,
  shadowRadius: 12,
  elevation: 3,
};

const styles = StyleSheet.create({
  screen: { flex: 1 },
  bg: {
    ...StyleSheet.absoluteFillObject,
    opacity: 0.12,
  },
  content: { padding: 20 },
  canvasBox: {
    height: 300,
    borderRadius: 24,
    overflow: 'hidden',
    ...BUBBLY_SHADOW,
  },
  toolbar: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    marginTop: 12,
  },
  swatches: { flexDirection: 'row', gap: 10 },
  swatch: {
    width: 34,
    height: 34,
    borderRadius: 17,
    borderWidth: 2,
    borderColor: 'transparent',
  },

  sizes: { flexDirection: 'row', gap: 8, alignItems: 'center' },
  sizeDot: {
    width: 30,
    height: 30,
    borderRadius: 15,
    alignItems: 'center',
    justifyContent: 'center',
  },
  sizeInner: { backgroundColor: '#FFFFFF', borderRadius: 99 },
  actions: { flexDirection: 'row', gap: 10, marginTop: 12 },
  ghostBtn: {
    paddingVertical: 14,
    paddingHorizontal: 20,
    borderRadius: 18,
  },
  ghostText: { fontFamily: FONTS.body, fontWeight: '700' },
  sendBtn: {
    paddingVertical: 14,
    borderRadius: 18,
    alignItems: 'center',
  },
  sendWrap: { flex: 1 },
  sendDisabled: { opacity: 0.6 },
  sendText: { fontFamily: FONTS.body, fontWeight: '800', fontSize: 16, color: '#FFFFFF' },
  error: { fontFamily: FONTS.body, marginTop: 10, fontSize: 14 },
  notice: { fontFamily: FONTS.body, marginTop: 10, fontSize: 14 },
  sectionTitle: {
    fontFamily: FONTS.headingBold,
    fontSize: 22,
    marginTop: 20,
    marginBottom: 10,
  },
  latestCard: {
    borderRadius: 24,
    padding: 16,
    ...BUBBLY_SHADOW,
  },
  latestArt: { borderRadius: 8, backgroundColor: '#FFFFFF' },
  latestMeta: { fontFamily: FONTS.body, fontSize: 13, marginTop: 8 },
  historyHint: { fontFamily: FONTS.body, fontSize: 13, marginBottom: 8 },
  historyRow: { gap: 10, paddingBottom: 4 },
  historyCard: {
    borderRadius: 12,
    padding: 8,
    width: 120,
  },
  historyArt: { borderRadius: 6, backgroundColor: '#FFFFFF' },
  historyMeta: { fontFamily: FONTS.body, fontSize: 11, marginTop: 6 },
  hint: { fontFamily: FONTS.body, fontSize: 15, textAlign: 'center', paddingVertical: 24 },
  spacer: { height: 24 },
});
