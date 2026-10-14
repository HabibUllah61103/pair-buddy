/**
 * Bubbly skeleton placeholder with a shimmer sweep for list loading states.
 * Matches the app's 24px card language so loading feels on-brand.
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
};

const SHIMMER_WIDTH = 220;

export function SkeletonCard({ tokens, height = 96 }: Props) {
  const screenWidth = Dimensions.get('window').width;
  const progress = useSharedValue(0);

  useEffect(() => {
    progress.value = withRepeat(withTiming(1, { duration: 1400 }), -1, false);
  }, [progress]);

  const shimmerStyle = useAnimatedStyle(() => ({
    transform: [{ translateX: progress.value * (screenWidth + SHIMMER_WIDTH) - SHIMMER_WIDTH }],
  }));

  return (
    <View
      style={[
        styles.card,
        { backgroundColor: tokens.card, height, borderRadius: 24 },
      ]}
    >
      <Animated.View style={[styles.shimmer, shimmerStyle]}>
        <LinearGradient
          colors={['transparent', 'rgba(255,255,255,0.4)', 'transparent']}
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
});
