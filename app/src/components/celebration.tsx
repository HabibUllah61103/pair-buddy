/**
 * CelebrationBurst — confetti burst fired from the center of the screen.
 *
 * Renders `particleCount` small particles that fly outward with rotation
 * and gravity, fading out as they go. Set `trigger` true to fire; it
 * resets automatically when `trigger` goes false again.
 *
 * Overlay it with absolute positioning + pointerEvents="none" so it floats
 * above content without intercepting touches.
 */
import { useEffect, useMemo } from 'react';
import { StyleSheet, View } from 'react-native';
import * as Haptics from 'expo-haptics';
import Animated, {
  Easing,
  useAnimatedStyle,
  useSharedValue,
  withTiming,
  type SharedValue,
} from 'react-native-reanimated';

const DEFAULT_COLORS = ['#FF6B5E', '#F472A0', '#A78BFA', '#FBBF24', '#34D399'];

type ParticleSpec = {
  angle: number;
  distance: number;
  size: number;
  color: string;
  spin: number;
  round: boolean;
};

function makeParticles(count: number, colors: string[]): ParticleSpec[] {
  return Array.from({ length: count }, (_, i) => ({
    angle: (i / count) * Math.PI * 2 + Math.random() * 0.5,
    distance: 90 + Math.random() * 130,
    size: 6 + Math.random() * 8,
    color: colors[i % colors.length],
    spin: (Math.random() - 0.5) * 540,
    round: Math.random() > 0.4,
  }));
}

function Particle({ spec, progress }: { spec: ParticleSpec; progress: SharedValue<number> }) {
  const style = useAnimatedStyle(() => {
    const t = progress.value;
    const x = Math.cos(spec.angle) * spec.distance * t;
    // slight downward pull as the burst settles, like real confetti
    const y = Math.sin(spec.angle) * spec.distance * t + t * t * 70;
    return {
      opacity: 1 - t,
      transform: [
        { translateX: x },
        { translateY: y },
        { rotate: `${spec.spin * t}deg` },
        { scale: 1 - t * 0.4 },
      ],
    };
  });

  return (
    <Animated.View
      style={[
        styles.particle,
        {
          width: spec.size,
          height: spec.size,
          backgroundColor: spec.color,
          borderRadius: spec.round ? spec.size / 2 : 2,
        },
        style,
      ]}
    />
  );
}

export function CelebrationBurst({
  trigger,
  colors = DEFAULT_COLORS,
  particleCount = 30,
}: {
  trigger: boolean;
  colors?: string[];
  particleCount?: number;
}) {
  const progress = useSharedValue(0);
  const particles = useMemo(
    () => makeParticles(particleCount, colors),
    // regenerate the burst pattern each time it fires
    // eslint-disable-next-line react-hooks/exhaustive-deps
    [particleCount, trigger],
  );

  useEffect(() => {
    if (trigger) {
      progress.value = 0;
      progress.value = withTiming(1, {
        duration: 1500,
        easing: Easing.out(Easing.cubic),
      });
      void Haptics.notificationAsync(Haptics.NotificationFeedbackType.Success).catch(() => {});
    } else {
      progress.value = 0;
    }
  }, [trigger, progress]);

  if (!trigger) return null;

  return (
    <View style={styles.container} pointerEvents="none">
      {particles.map((spec, i) => (
        <Particle key={i} spec={spec} progress={progress} />
      ))}
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    ...StyleSheet.absoluteFillObject,
    alignItems: 'center',
    justifyContent: 'center',
  },
  particle: {
    position: 'absolute',
  },
});
