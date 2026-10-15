/**
 * Bubbly skeleton placeholder with a shimmer sweep for list loading states.
 * Matches the app's 24px card language so loading feels on-brand.
 *
 * Variants:
 * - 'card' (default): blank card with shimmer
 * - 'list-item': icon circle + title line + description lines (like quiz packs)
 * - 'text': just text line placeholders
 */
import { useEffect } from 'react';
import { Dimensions, StyleSheet, View } from 'react-native';
import Animated, {
  useAnimatedStyle,
  useSharedValue,
  withRepeat,
  withTiming,
} from 'react-native-reanimated';
import { LinearGradient } from 'expo-linear-gradient';
import type { ThemeTokens } from '../lib/tokens';

type Props = {
  tokens: ThemeTokens;
  height?: number;
  /** Visual structure variant. Default 'card'. */
  variant?: 'card' | 'list-item' | 'text';
  /** Number of text line placeholders (for 'list-item' and 'text' variants). Default 2. */
  lines?: number;
  /** True when the app is in dark mode — switches shimmer to white. */
  dark?: boolean;
};

const SHIMMER_WIDTH = 220;

export function SkeletonCard({ tokens, height = 96, variant = 'card', lines = 2, dark = false }: Props) {
  const screenWidth = Dimensions.get('window').width;
  const progress = useSharedValue(0);

  useEffect(() => {
    progress.value = withRepeat(withTiming(1, { duration: 1400 }), -1, false);
  }, [progress]);

  const shimmerStyle = useAnimatedStyle(() => ({
    transform: [{ translateX: progress.value * (screenWidth + SHIMMER_WIDTH) - SHIMMER_WIDTH }],
  }));

  // Shimmer must contrast with the card background:
  // light mode = dark shimmer on white card, dark mode = white shimmer on dark card.
  const shimmerColors: [string, string, string] = dark
    ? ['transparent', 'rgba(255,255,255,0.12)', 'transparent']
    : ['transparent', 'rgba(0,0,0,0.06)', 'transparent'];

  const placeholderColor = tokens.border;

  const renderLines = (count: number) => (
    <View style={styles.lines}>
      {Array.from({ length: count }).map((_, i) => (
        <View
          key={i}
          style={[
            styles.line,
            {
              backgroundColor: placeholderColor,
              width: i === count - 1 ? '60%' : '100%',
            },
          ]}
        />
      ))}
    </View>
  );

  return (
    <View
      style={[
        styles.card,
        { backgroundColor: tokens.card, borderRadius: 24 },
        variant === 'card' && { height },
      ]}
    >
      {variant === 'list-item' && (
        <View style={styles.listRow}>
          <View style={[styles.iconCircle, { backgroundColor: placeholderColor }]} />
          <View style={styles.listText}>
            <View style={[styles.titleLine, { backgroundColor: placeholderColor }]} />
            {renderLines(lines)}
          </View>
        </View>
      )}
      {variant === 'text' && renderLines(lines)}
      <Animated.View style={[styles.shimmer, shimmerStyle]}>
        <LinearGradient
          colors={shimmerColors}
          start={{ x: 0, y: 0 }}
          end={{ x: 1, y: 0 }}
          style={styles.gradient}
        />
      </Animated.View>
    </View>
  );
}

const styles = StyleSheet.create({
  card: {
    overflow: 'hidden',
    marginBottom: 12,
    padding: 16,
    // Soft shadow to match real bubbly cards.
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 6 },
    shadowOpacity: 0.07,
    shadowRadius: 20,
    elevation: 3,
  },
  shimmer: {
    position: 'absolute',
    top: 0,
    bottom: 0,
    width: SHIMMER_WIDTH,
  },
  gradient: {
    flex: 1,
  },
  listRow: {
    flexDirection: 'row',
    alignItems: 'center',
  },
  iconCircle: {
    width: 48,
    height: 48,
    borderRadius: 24,
    marginRight: 12,
  },
  listText: {
    flex: 1,
  },
  titleLine: {
    height: 16,
    borderRadius: 8,
    width: '70%',
    marginBottom: 8,
  },
  lines: {
    gap: 6,
  },
  line: {
    height: 12,
    borderRadius: 6,
  },
});
