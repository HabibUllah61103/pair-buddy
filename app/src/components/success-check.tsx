/**
 * AnimatedCheck — a checkmark that draws itself inside a springy circle.
 *
 * The circle pops in with a spring, then the check stroke draws via an
 * animated strokeDashoffset. Fires a success haptic when it appears.
 */
import { useEffect } from 'react';
import { StyleSheet } from 'react-native';
import * as Haptics from 'expo-haptics';
import Animated, {
  Easing,
  useAnimatedProps,
  useAnimatedStyle,
  useSharedValue,
  withDelay,
  withSpring,
  withTiming,
} from 'react-native-reanimated';
import { Circle, Path, Svg } from 'react-native-svg';

const AnimatedPath = Animated.createAnimatedComponent(Path);

// Length of the check path below (M24 37 L33 46 L49 29 ≈ 36.1); small margin.
const CHECK_LENGTH = 38;

export function AnimatedCheck({
  size = 72,
  color = '#34D399',
  visible,
}: {
  size?: number;
  color?: string;
  visible: boolean;
}) {
  const pop = useSharedValue(0);
  const draw = useSharedValue(0);

  useEffect(() => {
    if (visible) {
      pop.value = withSpring(1, { damping: 9, stiffness: 220 });
      draw.value = withDelay(
        220,
        withTiming(1, { duration: 450, easing: Easing.out(Easing.cubic) }),
      );
      void Haptics.notificationAsync(Haptics.NotificationFeedbackType.Success).catch(() => {});
    } else {
      pop.value = withTiming(0, { duration: 150 });
      draw.value = 0;
    }
  }, [visible, pop, draw]);

  const circleStyle = useAnimatedStyle(() => ({
    opacity: pop.value,
    transform: [{ scale: pop.value }],
  }));

  const checkProps = useAnimatedProps(() => ({
    strokeDashoffset: CHECK_LENGTH * (1 - draw.value),
  }));

  if (!visible) return null;

  return (
    <Animated.View style={[styles.wrap, circleStyle]} pointerEvents="none">
      <Svg width={size} height={size} viewBox="0 0 72 72">
        <Circle
          cx={36}
          cy={36}
          r={32}
          fill={`${color}1A`}
          stroke={color}
          strokeWidth={5}
        />
        <AnimatedPath
          d="M24 37 L33 46 L49 29"
          fill="none"
          stroke={color}
          strokeWidth={6}
          strokeLinecap="round"
          strokeLinejoin="round"
          strokeDasharray={CHECK_LENGTH}
          animatedProps={checkProps}
        />
      </Svg>
    </Animated.View>
  );
}

const styles = StyleSheet.create({
  wrap: {
    alignItems: 'center',
    justifyContent: 'center',
  },
});
