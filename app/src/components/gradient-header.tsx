import type { ReactNode } from 'react';
import { StyleSheet, Text, View } from 'react-native';
import { LinearGradient } from 'expo-linear-gradient';
import { useSafeAreaInsets } from 'react-native-safe-area-context';
import type { ThemeTokens } from '../lib/tokens';
import { FONTS } from '../theme';

type GradientHeaderProps = {
  title: string;
  subtitle?: string;
  tokens: ThemeTokens;
  right?: ReactNode;
};

/**
 * Bubbly gradient header for tab screens. Uses the theme's gradient tokens
 * with rounded bottom corners for the rich, playful look.
 */
export function GradientHeader({ title, subtitle, tokens, right }: GradientHeaderProps) {
  const insets = useSafeAreaInsets();
  return (
    <LinearGradient
      colors={tokens.gradient}
      start={{ x: 0, y: 0 }}
      end={{ x: 1, y: 1 }}
      style={[styles.header, { paddingTop: insets.top + 16 }]}
    >
      <View style={styles.row}>
        <View style={styles.textWrap}>
          <Text style={styles.title}>{title}</Text>
          {subtitle ? <Text style={styles.subtitle}>{subtitle}</Text> : null}
        </View>
        {right ? <View style={styles.right}>{right}</View> : null}
      </View>
    </LinearGradient>
  );
}

const styles = StyleSheet.create({
  header: {
    paddingHorizontal: 20,
    paddingBottom: 24,
    borderBottomLeftRadius: 28,
    borderBottomRightRadius: 28,
  },
  row: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
  },
  textWrap: {
    flex: 1,
  },
  title: {
    fontFamily: FONTS.headingBold,
    fontSize: 28,
    color: '#FFFFFF',
  },
  subtitle: {
    fontFamily: FONTS.body,
    fontSize: 14,
    color: '#FFFFFF',
    opacity: 0.85,
    marginTop: 4,
  },
  right: {
    marginLeft: 12,
  },
});
