/**
 * Animated couple illustration collection.
 *
 * Transparent PNGs in the same kawaii style family as the hearts mascot,
 * so they sit cleanly on any theme background. All motion runs on
 * react-native-reanimated at 60fps.
 *
 * Use sparingly — auth, onboarding, empty states, and celebration headers only.
 */
import { useEffect } from 'react';
import { Image } from 'react-native';
import type { StyleProp, ViewStyle } from 'react-native';
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

const ILLUSTRATIONS = {
  'couple-welcome': require('../../assets/couple-welcome.png'),
  'photo-playful': require('../../assets/photo-playful.png'),
  'login-hero': require('../../assets/login-hero.png'),
  'couple-embrace': require('../../assets/couple-embrace.png'),
  'couple-holding-hands': require('../../assets/couple-holding-hands.png'),
  'couple-picnic': require('../../assets/couple-picnic.png'),
  'couple-stargazing': require('../../assets/couple-stargazing.png'),
} as const;

export type CoupleIllustrationName = keyof typeof ILLUSTRATIONS;
export type CoupleIllustrationVariant = 'entrance' | 'breathe' | 'celebrate';

type Props = {
  name: CoupleIllustrationName;
  variant?: CoupleIllustrationVariant;
  size?: number;
  style?: StyleProp<ViewStyle>;
};

/** Native aspect ratios of the illustration PNGs (width x height). */
const ASPECTS: Record<CoupleIllustrationName, number> = {
  'couple-welcome': 1822 / 1264,
  'photo-playful': 1451 / 1251,
  'login-hero': 1826 / 1264,
  'couple-embrace': 1623 / 1244,
  'couple-holding-hands': 1406 / 1243,
  'couple-picnic': 1672 / 1264,
  'couple-stargazing': 1558 / 1196,
};

export function CoupleIllustration({
  name,
  variant = 'breathe',
  size = 160,
  style,
}: Props) {
  const reduceMotion = useReducedMotion();
  const height = size / ASPECTS[name];

  const scale = useSharedValue(1);
  const rotateDeg = useSharedValue(0);
  const translateX = useSharedValue(0);
  const translateY = useSharedValue(0);
  const opacity = useSharedValue(1);

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
    } else {
      // Gentle infinite breathing.
      scale.value = withRepeat(
        withTiming(1.06, { duration: 1750, easing: Easing.inOut(Easing.sin) }),
        -1,
        true,
      );
    }
  }, [variant, reduceMotion, size, scale, rotateDeg, translateX, translateY, opacity]);

  const animatedStyle = useAnimatedStyle(() => ({
    opacity: opacity.value,
    transform: [
      { translateX: translateX.value },
      { translateY: translateY.value },
      { scale: scale.value },
      { rotate: `${rotateDeg.value}deg` },
    ],
  }));

  return (
    <Animated.View style={style}>
      <Animated.View style={animatedStyle}>
        <Image source={ILLUSTRATIONS[name]} style={{ width: size, height }} resizeMode="contain" />
      </Animated.View>
    </Animated.View>
  );
}
