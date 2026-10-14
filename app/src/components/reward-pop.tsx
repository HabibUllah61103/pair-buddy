/**
 * RewardPop — springy entrance for streaks and achievements.
 *
 * Pops in with an overshoot scale (0 -> 1.18 -> 1.0) plus a rotation wobble
 * (-8° -> 6° -> -3° -> 0°), then settles. Fires a success haptic on pop.
 * Shrinks away when `visible` goes false.
 */
import { useEffect } from 'react';
import type { ReactNode } from 'react';
import type { StyleProp, ViewStyle } from 'react-native';
import * as Haptics from 'expo-haptics';
import Animated, {
  useAnimatedStyle,
  useSharedValue,
  withDelay,
  withSequence,
  withSpring,
  withTiming,
} from 'react-native-reanimated';

export function RewardPop({
  visible,
  children,
  style,
}: {
  visible: boolean;
  children: ReactNode;
  style?: StyleProp<ViewStyle>;
}) {
  const scale = useSharedValue(0);
  const rotate = useSharedValue(0);

  useEffect(() => {
    if (visible) {
      scale.value = withSequence(
        withSpring(1.18, { damping: 7, stiffness: 180 }),
        withDelay(60, withSpring(1, { damping: 10, stiffness: 200 })),
      );
      rotate.value = withSequence(
        withTiming(-8, { duration: 130 }),
        withTiming(6, { duration: 130 }),
        withTiming(-3, { duration: 110 }),
        withTiming(0, { duration: 110 }),
      );
      void Haptics.notificationAsync(Haptics.NotificationFeedbackType.Success).catch(() => {});
    } else {
      scale.value = withTiming(0, { duration: 180 });
      rotate.value = withTiming(0, { duration: 180 });
    }
  }, [visible, scale, rotate]);

  const animated = useAnimatedStyle(() => ({
    opacity: scale.value === 0 ? 0 : 1,
    transform: [{ scale: Math.max(scale.value, 0.001) }, { rotate: `${rotate.value}deg` }],
  }));

  if (!visible) return null;

  return <Animated.View style={[style, animated]}>{children}</Animated.View>;
}
