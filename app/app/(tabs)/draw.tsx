import { useEffect, useRef, useState } from 'react';
import {
  Image,
  Pressable,
  ScrollView,
  StyleSheet,
  Text,
  View,
} from 'react-native';
import { SvgUri } from 'react-native-svg';
import DrawingCanvas, {
  CANVAS_BGS,
  DRAW_COLORS,
  MAX_BRUSH,
  MAX_OPACITY,
  MIN_BRUSH,
  MIN_OPACITY,
  type BgPattern,
  type BrushTool,
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
import { LoadingHeart } from '../../src/components/loading-heart';
import { RichIcon, type RichIconName } from '../../src/components/rich-icon';

function formatWhen(iso: string): string {
  const d = new Date(iso);
  const now = new Date();
  const sameDay = d.toDateString() === now.toDateString();
  const time = d.toLocaleTimeString([], { hour: 'numeric', minute: '2-digit' });
  if (sameDay) return `Today, ${time}`;
  return `${d.toLocaleDateString([], { month: 'short', day: 'numeric' })}, ${time}`;
}

const BRUSH_TOOLS: { tool: BrushTool; icon: RichIconName; label: string }[] = [
  { tool: 'pen', icon: 'pencil', label: 'Pen' },
  { tool: 'marker', icon: 'brush', label: 'Marker' },
  { tool: 'neon', icon: 'sparkles', label: 'Neon' },
  { tool: 'eraser', icon: 'eraser', label: 'Eraser' },
];

const STAMP_TOOLS: { tool: BrushTool; icon: RichIconName; label: string }[] = [
  { tool: 'stamp-heart', icon: 'heart', label: 'Heart' },
  { tool: 'stamp-star', icon: 'star', label: 'Star' },
  { tool: 'stamp-circle', icon: 'circle', label: 'Circle' },
  { tool: 'stamp-flower', icon: 'flower', label: 'Flower' },
];

const PATTERNS: { pattern: BgPattern; label: string }[] = [
  { pattern: 'solid', label: 'Solid' },
  { pattern: 'dots', label: 'Dots' },
  { pattern: 'grid', label: 'Grid' },
];

function SliderRow({
  label,
  value,
  min,
  max,
  step,
  onChange,
  formatValue,
  tokens,
}: {
  label: string;
  value: number;
  min: number;
  max: number;
  step: number;
  onChange: (v: number) => void;
  formatValue: (v: number) => string;
  tokens: { primary: string; primaryTint: string; ink: string; muted: string };
}) {
  const [trackW, setTrackW] = useState(0);
  const ratio = Math.max(0, Math.min(1, (value - min) / (max - min)));
  const setFromX = (x: number) => {
    const t = Math.max(0, Math.min(1, x / Math.max(1, trackW)));
    const raw = min + t * (max - min);
    onChange(Math.round(raw / step) * step);
  };
  return (
    <View style={sliderStyles.wrap}>
      <Text style={[sliderStyles.label, { color: tokens.ink }]}>{label}</Text>
      <View
        style={[sliderStyles.track, { backgroundColor: tokens.primaryTint }]}
        onLayout={(e) => setTrackW(e.nativeEvent.layout.width)}
        onTouchStart={(e) => setFromX(e.nativeEvent.locationX)}
        onTouchMove={(e) => setFromX(e.nativeEvent.locationX)}
      >
        <View style={[sliderStyles.fill, { backgroundColor: tokens.primary, width: `${ratio * 100}%` }]} />
        <View style={[sliderStyles.knob, { left: `${ratio * 100}%` }]} />
      </View>
      <Text style={[sliderStyles.value, { color: tokens.muted }]}>{formatValue(value)}</Text>
    </View>
  );
}

const sliderStyles = StyleSheet.create({
  wrap: { flexDirection: 'row', alignItems: 'center', gap: 12, paddingVertical: 8 },
  label: { fontFamily: FONTS.body, fontWeight: '700', fontSize: 13, width: 64 },
  track: {
    flex: 1,
    height: 28,
    borderRadius: 14,
    justifyContent: 'center',
    overflow: 'hidden',
  },
  fill: { position: 'absolute', left: 0, top: 0, bottom: 0, borderRadius: 14 },
  knob: {
    position: 'absolute',
    width: 20,
    height: 20,
    borderRadius: 10,
    backgroundColor: '#FFFFFF',
    marginLeft: -10,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.2,
    shadowRadius: 4,
    elevation: 3,
  },
  value: { fontFamily: FONTS.body, fontSize: 12, width: 44, textAlign: 'right' },
});

export default function DrawScreen() {
  const { tokens, mode } = useTheme();
  const canvasRef = useRef<DrawingCanvasHandle>(null);
  const [tool, setTool] = useState<BrushTool>('pen');
  const [color, setColor] = useState(DRAW_COLORS[0]);
  const [size, setSize] = useState(6);
  const [opacity, setOpacity] = useState(1);
  const [bgColor, setBgColor] = useState(CANVAS_BGS[0].color);
  const [bgPattern, setBgPattern] = useState<BgPattern>('solid');
  const [showBrushPanel, setShowBrushPanel] = useState(false);
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
    const loaded = canvasRef.current?.loadFromDataUrl(d.image_url);
    if (loaded) {
      setBgColor(loaded.bgColor);
      setBgPattern(loaded.pattern);
    }
    setEditing(true);
    setNotice('Editing — Send to save as new.');
  };

  const clearCanvas = () => {
    canvasRef.current?.clear();
    setEditing(false);
    setNotice(null);
  };

  const latestMine = latest !== null && myId !== null && latest.created_by === myId;

  const renderToolButton = (t: BrushTool, icon: RichIconName, label: string) => (
    <SpringPress key={t} onPress={() => setTool(t)} style={styles.toolBtn}>
      <RichIcon
        name={icon}
        size={20}
        tokens={tokens}
        variant={tool === t ? 'gradient' : 'soft'}
      />
      <Text
        style={[
          styles.toolLabel,
          { color: tool === t ? tokens.primary : tokens.muted },
        ]}
      >
        {label}
      </Text>
    </SpringPress>
  );

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
          <DrawingCanvas
            ref={canvasRef}
            color={color}
            size={size}
            opacity={opacity}
            tool={tool}
            bgColor={bgColor}
            pattern={bgPattern}
          />
        </View>
      </FadeInView>

      {/* Brush + stamp tools */}
      <FadeInView delay={60}>
        <View style={[styles.toolCard, { backgroundColor: tokens.card }]}>
          <ScrollView
            horizontal
            showsHorizontalScrollIndicator={false}
            contentContainerStyle={styles.toolRow}
          >
            {BRUSH_TOOLS.map((b) => renderToolButton(b.tool, b.icon, b.label))}
            <View style={[styles.toolDivider, { backgroundColor: tokens.primaryTint }]} />
            {STAMP_TOOLS.map((b) => renderToolButton(b.tool, b.icon, b.label))}
          </ScrollView>
        </View>
      </FadeInView>

      {/* Colors */}
      <View style={styles.swatchRow}>
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

      {/* Brush settings (collapsible) */}
      <SpringPress
        onPress={() => setShowBrushPanel((v) => !v)}
        style={[styles.panelToggle, { backgroundColor: tokens.card }]}
      >
        <RichIcon name="sliders" size={18} tokens={tokens} variant="soft" />
        <Text style={[styles.panelToggleText, { color: tokens.ink }]}>
          Brush settings
        </Text>
        <Text style={[styles.panelToggleChevron, { color: tokens.muted }]}>
          {showBrushPanel ? '▾' : '▸'}
        </Text>
      </SpringPress>
      {showBrushPanel && (
        <View style={[styles.panel, { backgroundColor: tokens.card }]}>
          <SliderRow
            label="Size"
            value={size}
            min={MIN_BRUSH}
            max={MAX_BRUSH}
            step={1}
            onChange={setSize}
            formatValue={(v) => `${Math.round(v)}px`}
            tokens={tokens}
          />
          <SliderRow
            label="Opacity"
            value={opacity}
            min={MIN_OPACITY}
            max={MAX_OPACITY}
            step={0.05}
            onChange={setOpacity}
            formatValue={(v) => `${Math.round(v * 100)}%`}
            tokens={tokens}
          />
        </View>
      )}

      {/* Canvas background */}
      <View style={[styles.panel, { backgroundColor: tokens.card }]}>
        <View style={styles.bgHeaderRow}>
          <RichIcon name="palette" size={18} tokens={tokens} variant="soft" />
          <Text style={[styles.panelTitle, { color: tokens.ink }]}>Canvas</Text>
        </View>
        <View style={styles.bgRow}>
          {CANVAS_BGS.map((b) => (
            <Pressable
              key={b.color}
              onPress={() => setBgColor(b.color)}
              style={[
                styles.bgSwatch,
                { backgroundColor: b.color },
                bgColor === b.color && { borderColor: tokens.primary, borderWidth: 3 },
              ]}
              accessibilityLabel={`Background ${b.name}`}
            />
          ))}
        </View>
        <View style={styles.patternRow}>
          {PATTERNS.map((p) => (
            <SpringPress
              key={p.pattern}
              onPress={() => setBgPattern(p.pattern)}
              style={[
                styles.patternPill,
                bgPattern === p.pattern
                  ? { backgroundColor: tokens.primary }
                  : { backgroundColor: tokens.primaryTint },
              ]}
            >
              <Text
                style={[
                  styles.patternText,
                  { color: bgPattern === p.pattern ? '#FFFFFF' : tokens.primary },
                ]}
              >
                {p.label}
              </Text>
            </SpringPress>
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
              <LoadingHeart tokens={tokens} size={20} color="#FFFFFF" />
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
  toolCard: {
    borderRadius: 20,
    marginTop: 12,
    paddingVertical: 10,
    paddingHorizontal: 6,
    ...BUBBLY_SHADOW,
  },
  toolRow: { gap: 4, alignItems: 'center', paddingHorizontal: 6 },
  toolBtn: { alignItems: 'center', paddingHorizontal: 8, paddingVertical: 4, minWidth: 56 },
  toolLabel: { fontFamily: FONTS.body, fontSize: 11, fontWeight: '700', marginTop: 4 },
  toolDivider: { width: 1, height: 40, marginHorizontal: 6, borderRadius: 1 },
  swatchRow: { flexDirection: 'row', gap: 10, marginTop: 12 },
  swatch: {
    width: 34,
    height: 34,
    borderRadius: 17,
    borderWidth: 2,
    borderColor: 'transparent',
  },
  panelToggle: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 10,
    marginTop: 12,
    paddingVertical: 12,
    paddingHorizontal: 16,
    borderRadius: 18,
    ...BUBBLY_SHADOW,
  },
  panelToggleText: { fontFamily: FONTS.body, fontWeight: '700', fontSize: 14, flex: 1 },
  panelToggleChevron: { fontSize: 16, fontWeight: '700' },
  panel: {
    marginTop: 10,
    borderRadius: 20,
    paddingHorizontal: 16,
    paddingVertical: 8,
    ...BUBBLY_SHADOW,
  },
  panelTitle: { fontFamily: FONTS.body, fontWeight: '700', fontSize: 14, flex: 1 },
  bgHeaderRow: { flexDirection: 'row', alignItems: 'center', gap: 10, paddingVertical: 8 },
  bgRow: { flexDirection: 'row', gap: 10, paddingVertical: 8 },
  bgSwatch: {
    width: 38,
    height: 38,
    borderRadius: 19,
    borderWidth: 2,
    borderColor: 'rgba(0,0,0,0.08)',
  },
  patternRow: { flexDirection: 'row', gap: 8, paddingVertical: 8 },
  patternPill: { paddingVertical: 8, paddingHorizontal: 16, borderRadius: 14 },
  patternText: { fontFamily: FONTS.body, fontWeight: '700', fontSize: 13 },
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
