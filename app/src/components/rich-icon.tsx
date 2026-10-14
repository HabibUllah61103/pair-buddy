/**
 * Premium bubbly icon with gradient / tinted / plain variants.
 */
import { StyleSheet, View } from 'react-native';
import { Ionicons } from '@expo/vector-icons';
import type { ComponentProps } from 'react';
import { LinearGradient } from 'expo-linear-gradient';
import type { ThemeTokens } from '../lib/tokens';

type IoniconName = ComponentProps<typeof Ionicons>['name'];

export type RichIconVariant = 'gradient' | 'soft' | 'plain';

type Props = {
  name: IoniconName;
  size?: number;
  tokens: ThemeTokens;
  variant?: RichIconVariant;
};

/**
 * Bubbly icon badge:
 * - gradient: LinearGradient circle (tokens.gradient), white icon
 * - soft: tokens.primaryTint circle, tokens.primary icon
 * - plain: no background, tokens.primary icon
 */
export function RichIcon({ name, size = 22, tokens, variant = 'soft' }: Props) {
  const container = size * 2.2;
  const radius = size * 1.1;

  if (variant === 'gradient') {
    return (
      <LinearGradient
        colors={tokens.gradient}
        start={{ x: 0, y: 0 }}
        end={{ x: 1, y: 1 }}
        style={[styles.circle, { width: container, height: container, borderRadius: radius }]}
      >
        <Ionicons name={name} size={size} color="#FFFFFF" />
      </LinearGradient>
    );
  }

  if (variant === 'soft') {
    return (
      <View style={[styles.circle, { width: container, height: container, borderRadius: radius, backgroundColor: tokens.primaryTint }]}>
        <Ionicons name={name} size={size} color={tokens.primary} />
      </View>
    );
  }

  return <Ionicons name={name} size={size} color={tokens.primary} />;
}

const styles = StyleSheet.create({
  circle: {
    alignItems: 'center',
    justifyContent: 'center',
  },
});
