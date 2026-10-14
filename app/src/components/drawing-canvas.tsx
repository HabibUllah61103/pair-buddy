import {
  forwardRef,
  useImperativeHandle,
  useRef,
  useState,
} from 'react';
import { StyleSheet, View } from 'react-native';
import Svg, { Path } from 'react-native-svg';
import { COLORS } from '../theme';

export const DRAW_COLORS = [
  COLORS.navy, // navy
  COLORS.teal, // teal
  '#F97066', // coral
  '#FAC515', // amber
  '#53B1FD', // sky
];

export const DRAW_SIZES = [3, 6, 12];

type Stroke = {
  id: number;
  d: string;
  color: string;
  width: number;
};

export type DrawingCanvasHandle = {
  /** Serialized SVG data URL of the current canvas. */
  getDataUrl: () => string;
  clear: () => void;
  undo: () => void;
  isEmpty: () => boolean;
};

type Props = {
  color: string;
  size: number;
};

function point(d: string | null, x: number, y: number): string {
  const p = `${x.toFixed(1)},${y.toFixed(1)}`;
  return d === null ? `M${p}` : `${d} L${p}`;
}

/**
 * Finger-draw canvas on react-native-svg. Strokes are stored as SVG path
 * data so the canvas serializes losslessly to a data URL for storage.
 * Requires a dev build (react-native-svg is a native module).
 */
const DrawingCanvas = forwardRef<DrawingCanvasHandle, Props>(
  function DrawingCanvas({ color, size }, ref) {
    const [strokes, setStrokes] = useState<Stroke[]>([]);
    const [canvas, setCanvas] = useState({ w: 0, h: 0 });
    const drawing = useRef(false);
    const current = useRef<string | null>(null);
    const nextId = useRef(1);
    // Live values for the touch handlers without re-binding them.
    const live = useRef({ color, size });
    live.current = { color, size };

    useImperativeHandle(ref, () => ({
      getDataUrl: () => {
        const { w, h } = canvas;
        const paths = strokes
          .map(
            (s) =>
              `<path d="${s.d}" stroke="${s.color}" stroke-width="${s.width}" fill="none" stroke-linecap="round" stroke-linejoin="round"/>`,
          )
          .join('');
        const svg =
          `<svg xmlns="http://www.w3.org/2000/svg" width="${Math.round(w)}" height="${Math.round(h)}" viewBox="0 0 ${w.toFixed(1)} ${h.toFixed(1)}">` +
          `<rect width="100%" height="100%" fill="${COLORS.white}"/>${paths}</svg>`;
        return `data:image/svg+xml;utf8,${encodeURIComponent(svg)}`;
      },
      clear: () => {
        drawing.current = false;
        current.current = null;
        setStrokes([]);
      },
      undo: () => {
        setStrokes((prev) => prev.slice(0, -1));
      },
      isEmpty: () => strokes.length === 0,
    }));

    const begin = (x: number, y: number) => {
      drawing.current = true;
      current.current = point(null, x, y);
    };

    const move = (x: number, y: number) => {
      if (!drawing.current || current.current === null) return;
      current.current = point(current.current, x, y);
      const d = current.current;
      const { color: c, size: s } = live.current;
      const id = nextId.current;
      // Replace the in-progress stroke so it renders live.
      setStrokes((prev) => {
        const rest = prev.filter((p) => p.id !== id);
        return [...rest, { id, d, color: c, width: s }];
      });
    };

    const end = () => {
      if (drawing.current) nextId.current += 1;
      drawing.current = false;
      current.current = null;
    };

    return (
      <View
        style={styles.wrap}
        onLayout={(e) => {
          const { width, height } = e.nativeEvent.layout;
          setCanvas({ w: width, h: height });
        }}
      >
        <Svg
          style={styles.svg}
          onTouchStart={(e) =>
            begin(e.nativeEvent.locationX, e.nativeEvent.locationY)
          }
          onTouchMove={(e) =>
            move(e.nativeEvent.locationX, e.nativeEvent.locationY)
          }
          onTouchEnd={end}
          onTouchCancel={end}
        >
          {strokes.map((s) => (
            <Path
              key={s.id}
              d={s.d}
              stroke={s.color}
              strokeWidth={s.width}
              fill="none"
              strokeLinecap="round"
              strokeLinejoin="round"
            />
          ))}
        </Svg>
      </View>
    );
  },
);

const styles = StyleSheet.create({
  wrap: {
    flex: 1,
    backgroundColor: COLORS.white,
    borderRadius: 16,
    overflow: 'hidden',
  },
  svg: { flex: 1 },
});

export default DrawingCanvas;
