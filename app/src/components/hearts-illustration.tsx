/**
 * Animated two-hearts logo illustration with 9 facial expressions.
 *
 * Transparent PNGs, so it sits cleanly on any theme background.
 * All motion runs on react-native-reanimated at 60fps.
 *
 * Use sparingly — splash, empty states, celebrations only.
 */
import { useEffect } from 'react';
import { Image, Pressable } from 'react-native';
import type { StyleProp, ViewStyle } from 'react-native';
import * as Haptics from 'expo-haptics';
import Animated, {
  Easing,
  useAnimatedStyle,
  useReducedMotion,
  useSharedValue,
  withRepeat,
  withSequence,
  withSpring,
  withTiming,
} from 'react-native-reanimated';
import { SparkleIcon } from 'phosphor-react-native';

const EXPRESSIONS = {
  happy: require('../../assets/hearts-happy.png'),
  excited: require('../../assets/hearts-excited.png'),
  sleepy: require('../../assets/hearts-sleepy.png'),
  surprised: require('../../assets/hearts-surprised.png'),
  inlove: require('../../assets/hearts-inlove.png'),
  wink: require('../../assets/hearts-wink.png'),
  laughing: require('../../assets/hearts-laughing.png'),
  curious: require('../../assets/hearts-curious.png'),
  proud: require('../../assets/hearts-proud.png'),
} as const;

export type HeartsExpression = keyof typeof EXPRESSIONS;
export type HeartsVariant = 'entrance' | 'celebrate' | 'breathe' | 'combo' | 'orbit';

type Props = {
  expression?: HeartsExpression;
  variant?: HeartsVariant;
  size?: number;
  onTap?: () => void;
  style?: StyleProp<ViewStyle>;
};

/** Native aspect ratio of the expression PNGs (1436x968). */
const ASPECT = 1436 / 968;

export function HeartsIllustration({
  expression = 'happy',
  variant = 'breathe',
  size = 180,
  onTap,
  style,
}: Props) {
  const reduceMotion = useReducedMotion();
  const height = size / ASPECT;

  const scale = useSharedValue(1);
  const rotateDeg = useSharedValue(0);
  const translateX = useSharedValue(0);
  const translateY = useSharedValue(0);
  const opacity = useSharedValue(1);
  const orbitAngle = useSharedValue(0);
  const pressScale = useSharedValue(1);

  useEffect(() => {
    if (reduceMotion) return;
    if (variant === 'entrance') {
      // One-shot: fly in from the left, pop to full size.
      translateX.value = -size * 0.7;
      scale.value = 0.5;
      opacity.value = 0;
      translateX.value = withTiming(0, { duration: 700, easing: Easing.out(Easing.cubic) });
      scale.value = withSequence(
        withTiming(1.08, { duration: 700, easing: Easing.out(Easing.cubic) }),
        withSpring(1, { damping: 12, stiffness: 200 }),
      );
      opacity.value = withTiming(1, { duration: 400 });
    } else if (variant === 'celebrate') {
      // Infinite bounce + sway.
      const bounce = -size * 0.12;
      translateY.value = withRepeat(
        withSequence(
          withTiming(bounce, { duration: 380, easing: Easing.out(Easing.quad) }),
          withTiming(0, { duration: 380, easing: Easing.in(Easing.quad) }),
        ),
        -1,
        false,
      );
      rotateDeg.value = withRepeat(
        withSequence(
          withTiming(-7, { duration: 380 }),
          withTiming(7, { duration: 380 }),
          withTiming(-7, { duration: 380 }),
          withTiming(0, { duration: 380 }),
        ),
        -1,
        false,
      );
    } else if (variant === 'breathe') {
      // Gentle infinite breathing.
      scale.value = withRepeat(
        withTiming(1.06, { duration: 1750, easing: Easing.inOut(Easing.sin) }),
        -1,
        true,
      );
    } else if (variant === 'combo') {
      // Playful wiggle heartbeat.
      scale.value = withRepeat(
        withSequence(
          withTiming(1.12, { duration: 180 }),
          withTiming(1, { duration: 180 }),
          withTiming(1.07, { duration: 150 }),
          withTiming(1, { duration: 600 }),
        ),
        -1,
        false,
      );
      rotateDeg.value = withRepeat(
        withSequence(
          withTiming(-3, { duration: 180 }),
          withTiming(3, { duration: 180 }),
          withTiming(-2, { duration: 150 }),
          withTiming(0, { duration: 600 }),
        ),
        -1,
        false,
      );
    } else if (variant === 'orbit') {
      // Breathing + sparkles orbiting around the logo.
      scale.value = withRepeat(
        withTiming(1.06, { duration: 1750, easing: Easing.inOut(Easing.sin) }),
        -1,
        true,
      );
      orbitAngle.value = withRepeat(withTiming(360, { duration: 6000, easing: Easing.linear }), -1, false);
    }
  }, [variant, reduceMotion, size, scale, rotateDeg, translateX, translateY, opacity, orbitAngle]);

  const animatedStyle = useAnimatedStyle(() => ({
    opacity: opacity.value,
    transform: [
      { translateX: translateX.value },
      { translateY: translateY.value },
      { scale: scale.value },
      { rotate: `${rotateDeg.value}deg` },
    ],
  }));

  const pressStyle = useAnimatedStyle(() => ({
    transform: [{ scale: pressScale.value }],
  }));

  const orbitStyle = useAnimatedStyle(() => ({
    transform: [{ rotate: `${orbitAngle.value}deg` }],
  }));

  const showOrbit = variant === 'orbit' && !reduceMotion;

  const content = (
    <Animated.View style={[animatedStyle, pressStyle]}>
      <Image source={EXPRESSIONS[expression]} style={{ width: size, height }} resizeMode="contain" />
      {showOrbit ? (
        <Animated.View
          pointerEvents="none"
          style={[
            {
              position: 'absolute',
              width: size,
              height: size,
              left: 0,
              top: (height - size) / 2,
              alignItems: 'center',
              justifyContent: 'center',
            },
            orbitStyle,
          ]}
        >
          <SparkleIcon
            size={18}
            color="#FFD166"
            weight="fill"
            style={{ position: 'absolute', top: 2 }}
          />
          <SparkleIcon
            size={14}
            color="#F472A0"
            weight="fill"
            style={{ position: 'absolute', right: 6, top: size * 0.3 }}
          />
          <SparkleIcon
            size={16}
            color="#A78BFA"
            weight="fill"
            style={{ position: 'absolute', left: 8, bottom: size * 0.25 }}
          />
        </Animated.View>
      ) : null}
    </Animated.View>
  );

  if (onTap) {
    return (
      <Pressable
        onPressIn={() => {
          pressScale.value = withSpring(0.82, { damping: 12, stiffness: 320 });
          void Haptics.impactAsync(Haptics.ImpactFeedbackStyle.Light).catch(() => {});
        }}
        onPressOut={() => {
          pressScale.value = withSpring(1, { damping: 12, stiffness: 220 });
        }}
        onPress={onTap}
        accessibilityRole="button"
        style={style}
      >
        {content}
      </Pressable>
    );
  }

  return <Animated.View style={style}>{content}</Animated.View>;
}
