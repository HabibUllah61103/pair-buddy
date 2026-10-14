import { BlurView } from 'expo-blur';
import { LinearGradient } from 'expo-linear-gradient';
import { StyleSheet, Text, View } from 'react-native';
import type { ReactNode } from 'react';
import { useSafeAreaInsets } from 'react-native-safe-area-context';
import { FONTS } from '../theme';
import type { ThemeTokens } from '../lib/tokens';

type Props = {
  title: string;
  subtitle?: string;
  tokens: ThemeTokens;
  right?: ReactNode;
  /** Blur intensity for the glass layer. Default 50. */
  intensity?: number;
};

/**
 * Glass-morphism header: the theme gradient as a base with a frosted-glass
 * BlurView layered on top, rounded bottom corners. Title uses the theme ink
 * color for contrast against the lightened glass.
 */
export default function GlassHeader({
  title,
  subtitle,
  tokens,
  right,
  intensity = 50,
}: Props) {
  const insets = useSafeAreaInsets();
  return (
    <View style={styles.wrap}>
      <LinearGradient
        colors={tokens.gradient}
        start={{ x: 0, y: 0 }}
        end={{ x: 1, y: 1 }}
        style={styles.gradient}
      />
      <BlurView intensity={intensity} tint="light" style={styles.blur}>
        <View style={[styles.content, { paddingTop: insets.top + 16 }]}>
          <View style={styles.textBlock}>
            <Text style={[styles.title, { color: tokens.ink }]}>{title}</Text>
            {subtitle ? (
              <Text style={[styles.subtitle, { color: tokens.ink }]}>
                {subtitle}
              </Text>
            ) : null}
          </View>
          {right ? <View style={styles.right}>{right}</View> : null}
        </View>
      </BlurView>
    </View>
  );
}

const styles = StyleSheet.create({
  wrap: {
    borderBottomLeftRadius: 28,
    borderBottomRightRadius: 28,
    overflow: 'hidden',
  },
  gradient: {
    ...StyleSheet.absoluteFillObject,
  },
  blur: {
    flex: 1,
  },
  content: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    paddingHorizontal: 22,
    paddingBottom: 24,
  },
  textBlock: {
    flex: 1,
  },
  title: {
    fontFamily: FONTS.headingBold,
    fontSize: 28,
  },
  subtitle: {
    fontFamily: FONTS.body,
    fontSize: 14,
    marginTop: 2,
    opacity: 0.75,
  },
  right: {
    marginLeft: 12,
  },
});
