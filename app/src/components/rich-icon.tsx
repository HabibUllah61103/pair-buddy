/**
 * Premium bubbly icon with gradient / tinted / plain variants.
 * Glyphs by Hugeicons (free set, MIT), rendered via react-native-svg.
 */
import { StyleSheet, View } from 'react-native';
import { HugeiconsIcon, type IconSvgElement } from '@hugeicons/react-native';
import {
  Add01Icon,
  AlbumIcon,
  ArrowRight01Icon,
  BrushIcon,
  BubbleChatIcon,
  BulbIcon,
  Calendar01Icon,
  Camera01Icon,
  CheckIcon,
  ChevronRightIcon,
  GiftIcon,
  GridIcon,
  HeartIcon,
  Image01Icon,
  Image02Icon,
  Location01Icon,
  Moon01Icon,
  MoreHorizontalIcon,
  PencilEdit01Icon,
  PlayIcon,
  RefreshIcon,
  SendIcon,
  SparklesIcon,
  StarIcon,
  UserAdd01Icon,
} from '@hugeicons/core-free-icons';
import { LinearGradient } from 'expo-linear-gradient';
import type { ThemeTokens } from '../lib/tokens';

/**
 * Ionicons-style names mapped to Hugeicons free icons.
 * Call sites keep the familiar names; glyphs come from Hugeicons.
 */
const ICONS = {
  sparkles: SparklesIcon,
  'chevron-forward': ChevronRightIcon,
  'arrow-forward': ArrowRight01Icon,
  'image-outline': Image01Icon,
  images: Image02Icon,
  location: Location01Icon,
  bulb: BulbIcon,
  calendar: Calendar01Icon,
  chatbubbles: BubbleChatIcon,
  grid: GridIcon,
  'person-add': UserAdd01Icon,
  heart: HeartIcon,
  brush: BrushIcon,
  camera: Camera01Icon,
  send: SendIcon,
  refresh: RefreshIcon,
  pencil: PencilEdit01Icon,
  albums: AlbumIcon,
  'ellipsis-horizontal': MoreHorizontalIcon,
  add: Add01Icon,
  star: StarIcon,
  gift: GiftIcon,
  moon: Moon01Icon,
  checkmark: CheckIcon,
  play: PlayIcon,
} satisfies Record<string, IconSvgElement>;

export type RichIconName = keyof typeof ICONS;

export type RichIconVariant = 'gradient' | 'soft' | 'plain';

type Props = {
  name: RichIconName;
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
  const icon: IconSvgElement = ICONS[name];

  if (variant === 'gradient') {
    return (
      <LinearGradient
        colors={tokens.gradient}
        start={{ x: 0, y: 0 }}
        end={{ x: 1, y: 1 }}
        style={[styles.circle, { width: container, height: container, borderRadius: radius }]}
      >
        <HugeiconsIcon icon={icon} size={size} color="#FFFFFF" strokeWidth={1.8} />
      </LinearGradient>
    );
  }

  if (variant === 'soft') {
    return (
      <View
        style={[
          styles.circle,
          {
            width: container,
            height: container,
            borderRadius: radius,
            backgroundColor: tokens.primaryTint,
          },
        ]}
      >
        <HugeiconsIcon icon={icon} size={size} color={tokens.primary} strokeWidth={1.8} />
      </View>
    );
  }

  return <HugeiconsIcon icon={icon} size={size} color={tokens.primary} strokeWidth={1.8} />;
}

const styles = StyleSheet.create({
  circle: {
    alignItems: 'center',
    justifyContent: 'center',
  },
});
