/**
 * Themed loading indicator: a Phosphor duotone heart with a gentle
 * heartbeat animation (lub-dub), plus an optional message below.
 * Replaces bare ActivityIndicator spinners across the app.
 */
import { useEffect } from 'react';
import { StyleSheet, Text, View } from 'react-native';
import Animated, {
  Easing,
  useAnimatedStyle,
  useSharedValue,
  withRepeat,
  withSequence,
  withTiming,
} from 'react-native-reanimated';
import { HeartIcon } from 'phosphor-react-native';
import type { ThemeTokens } from '../lib/tokens';
import { FONTS } from '../theme';

type Props = {
  tokens: ThemeTokens;
  /** Heart glyph size. Defaults to 40 (full-screen), use ~20 in buttons. */
  size?: number;
  /** Optional caption rendered below the heart. */
  message?: string;
  /** Override the heart color; defaults to tokens.primary. */
  color?: string;
};

export function LoadingHeart({ tokens, size = 40, message, color }: Props) {
  const scale = useSharedValue(1);

  useEffect(() => {
    // Heartbeat: lub-dub — quick double thump, then rest.
    scale.value = withRepeat(
      withSequence(
        withTiming(1.18, { duration: 220, easing: Easing.out(Easing.ease) }),
        withTiming(1, { duration: 200, easing: Easing.inOut(Easing.ease) }),
        withTiming(1.1, { duration: 160, easing: Easing.out(Easing.ease) }),
        withTiming(1, { duration: 420, easing: Easing.inOut(Easing.ease) }),
      ),
      -1,
      false,
    );
  }, [scale]);

  const animatedStyle = useAnimatedStyle(() => ({
    transform: [{ scale: scale.value }],
  }));

  return (
    <View style={styles.wrap}>
      <Animated.View style={animatedStyle}>
        <HeartIcon size={size} color={color ?? tokens.primary} weight="duotone" />
      </Animated.View>
      {message ? (
        <Text style={[styles.message, { color: tokens.muted, fontFamily: FONTS.body }]}>
          {message}
        </Text>
      ) : null}
    </View>
  );
}

const styles = StyleSheet.create({
  wrap: {
    alignItems: 'center',
    justifyContent: 'center',
    gap: 12,
    padding: 16,
  },
  message: {
    fontSize: 14,
    textAlign: 'center',
  },
});
