import { forwardRef, useImperativeHandle, useRef, useState, type ReactNode } from 'react';
import { StyleSheet, View } from 'react-native';
import Svg, { Circle, G, Line, Path, Rect } from 'react-native-svg';
import { COLORS } from '../theme';

export const DRAW_COLORS = [
  COLORS.navy, // navy
  COLORS.teal, // teal
  '#F97066', // coral
  '#FAC515', // amber
  '#53B1FD', // sky
];

/** Kept for compatibility; the UI now uses a slider (MIN_BRUSH..MAX_BRUSH). */
export const DRAW_SIZES = [3, 6, 12];

export const MIN_BRUSH = 2;
export const MAX_BRUSH = 20;
export const MIN_OPACITY = 0.1;
export const MAX_OPACITY = 1;

export type BrushTool =
  | 'pen'
  | 'marker'
  | 'neon'
  | 'eraser'
  | 'stamp-heart'
  | 'stamp-star'
  | 'stamp-circle'
  | 'stamp-flower';

export type BgPattern = 'solid' | 'dots' | 'grid';

export const CANVAS_BGS: { name: string; color: string }[] = [
  { name: 'White', color: '#FFFFFF' },
  { name: 'Cream', color: '#FFF8E7' },
  { name: 'Blush', color: '#FFE8EC' },
  { name: 'Sky', color: '#E0F2FE' },
  { name: 'Mint', color: '#D9F5E5' },
  { name: 'Night', color: '#14141F' },
];

export type StampKind = 'heart' | 'star' | 'circle' | 'flower';

export type LoadedBackground = { bgColor: string; pattern: BgPattern };

type PathBrush = 'pen' | 'marker' | 'neon';

type PathItem = {
  id: number;
  kind: 'path';
  d: string;
  color: string;
  width: number;
  opacity: number;
  brush: PathBrush;
  eraser: boolean;
};

type StampItem = {
  id: number;
  kind: 'stamp';
  stamp: StampKind;
  x: number;
  y: number;
  scale: number;
  color: string;
  opacity: number;
};

type Item = PathItem | StampItem;

export type DrawingCanvasHandle = {
  /** Serialized SVG data URL of the current canvas. */
  getDataUrl: () => string;
  clear: () => void;
  undo: () => void;
  isEmpty: () => boolean;
  /**
   * Replace the canvas contents with the strokes parsed from an SVG data
   * URL previously produced by getDataUrl(). Malformed input is ignored.
   * Returns the stored background so the UI can restore it (null on failure).
   */
  loadFromDataUrl: (dataUrl: string) => LoadedBackground | null;
};

type Props = {
  color: string;
  size: number;
  opacity?: number;
  tool?: BrushTool;
  bgColor?: string;
  pattern?: BgPattern;
};

function point(d: string | null, x: number, y: number): string {
  const p = `${x.toFixed(1)},${y.toFixed(1)}`;
  return d === null ? `M${p}` : `${d} L${p}`;
}

function circleD(cx: number, cy: number, r: number): string {
  const f = (n: number) => n.toFixed(2);
  return (
    `M${f(cx - r)},${f(cy)}` +
    `a${f(r)},${f(r)} 0 1,0 ${f(2 * r)},0` +
    `a${f(r)},${f(r)} 0 1,0 ${f(-2 * r)},0`
  );
}

/** Stamp artwork on a 24x24 box (origin at top-left). */
const STAMP_PATHS: Record<StampKind, string> = {
  heart:
    'M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z',
  star:
    'M12 17.27L18.18 21l-1.64-7.03L22 9.24l-7.19-.61L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21z',
  circle: circleD(12, 12, 10),
  flower: [
    circleD(12, 12, 3.2),
    circleD(12, 5.5, 4.2),
    circleD(18.18, 9.99, 4.2),
    circleD(5.82, 9.99, 4.2),
    circleD(8.18, 17.27, 4.2),
    circleD(15.82, 17.27, 4.2),
  ].join(' '),
};

const STAMP_KINDS: StampKind[] = ['heart', 'star', 'circle', 'flower'];

function stampKindFor(tool: BrushTool): StampKind | null {
  if (tool === 'stamp-heart') return 'heart';
  if (tool === 'stamp-star') return 'star';
  if (tool === 'stamp-circle') return 'circle';
  if (tool === 'stamp-flower') return 'flower';
  return null;
}

function isDarkBg(hex: string): boolean {
  const c = hex.replace('#', '');
  if (c.length < 6) return false;
  const r = parseInt(c.slice(0, 2), 16) / 255;
  const g = parseInt(c.slice(2, 4), 16) / 255;
  const b = parseInt(c.slice(4, 6), 16) / 255;
  return 0.2126 * r + 0.7152 * g + 0.0722 * b < 0.5;
}

/** Effective core width/opacity for a path item (marker is wider + softer). */
function coreStyle(item: PathItem): { width: number; opacity: number } {
  if (item.eraser) return { width: item.width * 2, opacity: 1 };
  if (item.brush === 'marker')
    return { width: item.width * 1.7, opacity: Math.min(1, item.opacity * 0.55) };
  return { width: item.width, opacity: item.opacity };
}

/**
 * Finger-draw canvas on react-native-svg. Strokes are stored as SVG path
 * data so the canvas serializes losslessly to a data URL for storage.
 * Requires a dev build (react-native-svg is a native module).
 */
const DrawingCanvas = forwardRef<DrawingCanvasHandle, Props>(function DrawingCanvas(
  { color, size, opacity = 1, tool = 'pen', bgColor = '#FFFFFF', pattern = 'solid' },
  ref,
) {
  const [items, setItems] = useState<Item[]>([]);
  const [canvas, setCanvas] = useState({ w: 0, h: 0 });
  const drawing = useRef(false);
  const current = useRef<string | null>(null);
  const nextId = useRef(1);
  // Live values for the touch handlers without re-binding them.
  const live = useRef({ color, size, opacity, tool, bgColor, pattern });
  live.current = { color, size, opacity, tool, bgColor, pattern };

  const patternColor = isDarkBg(bgColor) ? '#FFFFFF' : '#1A2F4D';
  const patternOpacity = isDarkBg(bgColor) ? 0.16 : 0.08;

  const renderPattern = () => {
    const { w, h } = canvas;
    if (w === 0 || h === 0 || pattern === 'solid') return null;
    if (pattern === 'dots') {
      const dots: ReactNode[] = [];
      for (let y = 13; y < h; y += 26) {
        for (let x = 13; x < w; x += 26) {
          dots.push(
            <Circle key={`${x}-${y}`} cx={x} cy={y} r={1.6} fill={patternColor} opacity={patternOpacity} />,
          );
        }
      }
      return <G>{dots}</G>;
    }
    const lines: ReactNode[] = [];
    for (let x = 26; x < w; x += 26) {
      lines.push(
        <Line key={`v${x}`} x1={x} y1={0} x2={x} y2={h} stroke={patternColor} strokeWidth={1} opacity={patternOpacity} />,
      );
    }
    for (let y = 26; y < h; y += 26) {
      lines.push(
        <Line key={`h${y}`} x1={0} y1={y} x2={w} y2={y} stroke={patternColor} strokeWidth={1} opacity={patternOpacity} />,
      );
    }
    return <G>{lines}</G>;
  };

  const renderItem = (item: Item) => {
    if (item.kind === 'stamp') {
      return (
        <G
          key={item.id}
          transform={`translate(${item.x.toFixed(1)} ${item.y.toFixed(1)}) scale(${item.scale.toFixed(3)}) translate(-12 -12)`}
        >
          <Path d={STAMP_PATHS[item.stamp]} fill={item.color} fillOpacity={item.opacity} />
        </G>
      );
    }
    const strokeColor = item.eraser ? bgColor : item.color;
    if (item.brush === 'neon' && !item.eraser) {
      const { width, opacity: o } = coreStyle(item);
      return (
        <G key={item.id}>
          <Path
            d={item.d}
            stroke={strokeColor}
            strokeWidth={width * 2.8}
            fill="none"
            strokeLinecap="round"
            strokeLinejoin="round"
            strokeOpacity={o * 0.35}
          />
          <Path
            d={item.d}
            stroke={strokeColor}
            strokeWidth={width}
            fill="none"
            strokeLinecap="round"
            strokeLinejoin="round"
            strokeOpacity={o}
          />
        </G>
      );
    }
    const { width, opacity: o } = coreStyle(item);
    return (
      <Path
        key={item.id}
        d={item.d}
        stroke={strokeColor}
        strokeWidth={width}
        fill="none"
        strokeLinecap="round"
        strokeLinejoin="round"
        strokeOpacity={o}
      />
    );
  };

  useImperativeHandle(ref, () => ({
    getDataUrl: () => {
      const { w, h } = canvas;
      const { bgColor: bg, pattern: pat } = live.current;
      const pColor = isDarkBg(bg) ? '#FFFFFF' : '#1A2F4D';
      const pOpacity = isDarkBg(bg) ? 0.16 : 0.08;
      let patternSvg = '';
      if (pat === 'dots' && w > 0 && h > 0) {
        const dots: string[] = [];
        for (let y = 13; y < h; y += 26) {
          for (let x = 13; x < w; x += 26) {
            dots.push(`<circle cx="${x}" cy="${y}" r="1.6" fill="${pColor}" opacity="${pOpacity}"/>`);
          }
        }
        patternSvg = dots.join('');
      } else if (pat === 'grid' && w > 0 && h > 0) {
        const lines: string[] = [];
        for (let x = 26; x < w; x += 26) {
          lines.push(`<line x1="${x}" y1="0" x2="${x}" y2="${h}" stroke="${pColor}" stroke-width="1" opacity="${pOpacity}"/>`);
        }
        for (let y = 26; y < h; y += 26) {
          lines.push(`<line x1="0" y1="${y}" x2="${w}" y2="${y}" stroke="${pColor}" stroke-width="1" opacity="${pOpacity}"/>`);
        }
        patternSvg = lines.join('');
      }
      const body = items
        .map((item) => {
          if (item.kind === 'stamp') {
            return (
              `<g transform="translate(${item.x.toFixed(1)} ${item.y.toFixed(1)}) scale(${item.scale.toFixed(3)}) translate(-12 -12)"` +
              ` data-stamp="${item.stamp}" fill="${item.color}" fill-opacity="${item.opacity}">` +
              `<path d="${STAMP_PATHS[item.stamp]}"/></g>`
            );
          }
          const strokeColor = item.eraser ? bg : item.color;
          const { width, opacity: o } = coreStyle(item);
          const attrs =
            `d="${item.d}" stroke="${strokeColor}" stroke-width="${width.toFixed(1)}" fill="none"` +
            ` stroke-linecap="round" stroke-linejoin="round" stroke-opacity="${o.toFixed(2)}"` +
            ` data-brush="${item.brush}"${item.eraser ? ' data-eraser="1"' : ''}`;
          if (item.brush === 'neon' && !item.eraser) {
            const glowAttrs =
              `d="${item.d}" stroke="${strokeColor}" stroke-width="${(width * 2.8).toFixed(1)}" fill="none"` +
              ` stroke-linecap="round" stroke-linejoin="round" stroke-opacity="${(o * 0.35).toFixed(2)}"` +
              ` data-brush="neon" data-glow="1"`;
            return `<path ${glowAttrs}/><path ${attrs}/>`;
          }
          return `<path ${attrs}/>`;
        })
        .join('');
      const svg =
        `<svg xmlns="http://www.w3.org/2000/svg" width="${Math.round(w)}" height="${Math.round(h)}" viewBox="0 0 ${w.toFixed(1)} ${h.toFixed(1)}">` +
        `<rect width="100%" height="100%" fill="${bg}" data-pattern="${pat}"/>${patternSvg}${body}</svg>`;
      return `data:image/svg+xml;utf8,${encodeURIComponent(svg)}`;
    },
    clear: () => {
      drawing.current = false;
      current.current = null;
      setItems([]);
    },
    undo: () => {
      setItems((prev) => prev.slice(0, -1));
    },
    isEmpty: () => items.length === 0,
    loadFromDataUrl: (dataUrl: string): LoadedBackground | null => {
      try {
        const prefix = 'data:image/svg+xml;utf8,';
        if (!dataUrl.startsWith(prefix)) return null;
        const svg = decodeURIComponent(dataUrl.slice(prefix.length));
        let bg: string | null = null;
        let pat: BgPattern = 'solid';
        const rectM = /<rect[^>]*>/.exec(svg);
        if (rectM) {
          const fill = /fill="([^"]+)"/.exec(rectM[0])?.[1];
          const p = /data-pattern="([^"]+)"/.exec(rectM[0])?.[1];
          if (fill && /^#[0-9a-fA-F]{6}$/.test(fill)) bg = fill;
          if (p === 'dots' || p === 'grid') pat = p;
        }
        const loaded: Item[] = [];
        // Single pass over <g data-stamp> and <path> tags in document order
        // so z-order is preserved. The background <rect> is not matched.
        // Neon glow duplicates carry data-glow="1" and are skipped (the
        // glow is re-generated from the core stroke's brush on render).
        const itemRe = /<g\s+([^>]*?)>.*?<\/g>|<path\s+([^>]*?)\/>/gs;
        let im: RegExpExecArray | null;
        while ((im = itemRe.exec(svg)) !== null) {
          if (im[1] !== undefined) {
            // Stamp group.
            const attrs = im[1];
            const stamp = /data-stamp="([a-z]+)"/.exec(attrs)?.[1];
            if (!stamp || !(STAMP_KINDS as string[]).includes(stamp)) continue;
            const tr = /translate\(([-\d.]+) ([-\d.]+)\) scale\(([-\d.]+)\)/.exec(attrs);
            const fill = /fill="([^"]+)"/.exec(attrs)?.[1];
            const fo = /fill-opacity="([-\d.]+)"/.exec(attrs)?.[1];
            if (!tr || !fill) continue;
            const x = parseFloat(tr[1]);
            const y = parseFloat(tr[2]);
            const scale = parseFloat(tr[3]);
            if (![x, y, scale].every(Number.isFinite)) continue;
            loaded.push({
              id: nextId.current++,
              kind: 'stamp',
              stamp: stamp as StampKind,
              x,
              y,
              scale,
              color: fill,
              opacity: fo !== undefined && Number.isFinite(parseFloat(fo)) ? parseFloat(fo) : 1,
            });
            continue;
          }
          // Path stroke.
          const attrs = im[2];
          if (/data-glow="1"/.test(attrs)) continue;
          const d = /d="([^"]*)"/.exec(attrs)?.[1];
          const colorAttr = /stroke="([^"]*)"/.exec(attrs)?.[1];
          const widthAttr = /stroke-width="([^"]*)"/.exec(attrs)?.[1];
          if (!d || !colorAttr || !widthAttr) continue;
          // Stroke widths in the export are effective widths; recover the
          // nominal brush size so the slider stays meaningful.
          const brush = (/data-brush="(pen|marker|neon)"/.exec(attrs)?.[1] ?? 'pen') as PathBrush;
          const eraser = /data-eraser="1"/.test(attrs);
          const opacityAttr = /stroke-opacity="([-\d.]+)"/.exec(attrs)?.[1];
          const effWidth = parseFloat(widthAttr);
          if (!Number.isFinite(effWidth)) continue;
          let width = effWidth;
          if (eraser) width = effWidth / 2;
          else if (brush === 'marker') width = effWidth / 1.7;
          let opacity = opacityAttr !== undefined && Number.isFinite(parseFloat(opacityAttr)) ? parseFloat(opacityAttr) : 1;
          if (!eraser && brush === 'marker') opacity = Math.min(1, opacity / 0.55);
          loaded.push({ id: nextId.current++, kind: 'path', d, color: colorAttr, width, opacity, brush, eraser });
        }
        drawing.current = false;
        current.current = null;
        setItems(loaded);
        return { bgColor: bg ?? live.current.bgColor, pattern: pat };
      } catch {
        // Malformed data URL — leave the canvas as-is.
        return null;
      }
    },
  }));

  const begin = (x: number, y: number) => {
    const { tool: t, color: c, size: s, opacity: o } = live.current;
    const stamp = stampKindFor(t);
    if (stamp) {
      // Tap-to-stamp: one stamp per touch.
      setItems((prev) => [
        ...prev,
        {
          id: nextId.current++,
          kind: 'stamp',
          stamp,
          x,
          y,
          scale: (s * 2) / 24,
          color: c,
          opacity: o,
        },
      ]);
      return;
    }
    drawing.current = true;
    current.current = point(null, x, y);
  };

  const move = (x: number, y: number) => {
    if (!drawing.current || current.current === null) return;
    current.current = point(current.current, x, y);
    const d = current.current;
    const { color: c, size: s, opacity: o, tool: t } = live.current;
    const brush: PathBrush = t === 'marker' ? 'marker' : t === 'neon' ? 'neon' : 'pen';
    const eraser = t === 'eraser';
    const id = nextId.current;
    // Replace the in-progress stroke so it renders live.
    setItems((prev) => {
      const rest = prev.filter((p) => p.id !== id);
      return [...rest, { id, kind: 'path', d, color: c, width: s, opacity: o, brush, eraser }];
    });
  };

  const end = () => {
    if (drawing.current) nextId.current += 1;
    drawing.current = false;
    current.current = null;
  };

  return (
    <View
      style={[styles.wrap, { backgroundColor: bgColor }]}
      onLayout={(e) => {
        const { width, height } = e.nativeEvent.layout;
        setCanvas({ w: width, h: height });
      }}
    >
      <Svg
        style={styles.svg}
        onTouchStart={(e) => begin(e.nativeEvent.locationX, e.nativeEvent.locationY)}
        onTouchMove={(e) => move(e.nativeEvent.locationX, e.nativeEvent.locationY)}
        onTouchEnd={end}
        onTouchCancel={end}
      >
        {canvas.w > 0 && canvas.h > 0 && (
          <Rect x={0} y={0} width={canvas.w} height={canvas.h} fill={bgColor} />
        )}
        {renderPattern()}
        {items.map((item) => renderItem(item))}
      </Svg>
    </View>
  );
});

const styles = StyleSheet.create({
  wrap: {
    flex: 1,
    borderRadius: 16,
    overflow: 'hidden',
  },
  svg: { flex: 1 },
});

export default DrawingCanvas;
