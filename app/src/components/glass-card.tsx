import { BlurView } from 'expo-blur';
import { StyleSheet, View, type ViewStyle } from 'react-native';
import type { ReactNode } from 'react';

type Props = {
  children: ReactNode;
  style?: ViewStyle;
  /** Blur intensity, 0-100. Default 40. */
  intensity?: number;
  /** Blur tint. Default 'light'. */
  tint?: 'light' | 'dark' | 'default';
  /** Corner radius. Default 26. */
  borderRadius?: number;
  /** Inner padding. Default 20. */
  padding?: number;
};

/**
 * Frosted-glass card: a BlurView with a subtle translucent white border.
 * Place over gradients, background images, or colored surfaces for the
 * glass-morphism effect.
 */
export default function GlassCard({
  children,
  style,
  intensity = 40,
  tint = 'light',
  borderRadius = 26,
  padding = 20,
}: Props) {
  return (
    <BlurView
      intensity={intensity}
      tint={tint}
      style={[styles.glass, { borderRadius }, style]}
    >
      <View style={[styles.inner, { padding }]}>{children}</View>
    </BlurView>
  );
}

const styles = StyleSheet.create({
  glass: {
    overflow: 'hidden',
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.5)',
  },
  inner: {
    flex: 1,
  },
});
