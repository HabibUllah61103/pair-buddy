/**
 * Premium bubbly icon with gradient / tinted / plain variants.
 * Glyphs by Phosphor Icons (MIT), duotone by default, rendered via react-native-svg.
 * When `active` is true the icon pops to `fill` weight with a spring scale.
 */
import { useEffect } from 'react';
import { StyleSheet, View } from 'react-native';
import Animated, {
  useAnimatedStyle,
  useSharedValue,
  withSpring,
} from 'react-native-reanimated';
import { LinearGradient } from 'expo-linear-gradient';
import {
  ArrowClockwiseIcon,
  ArrowRightIcon,
  CalendarIcon,
  CameraIcon,
  CaretLeftIcon,
  CaretRightIcon,
  ChatCircleIcon,
  CheckIcon,
  CircleIcon,
  DotsThreeIcon,
  EraserIcon,
  FlowerIcon,
  GiftIcon,
  GridFourIcon,
  HeartIcon,
  ImageIcon,
  ImagesIcon,
  LightbulbIcon,
  MapPinIcon,
  MicrophoneIcon,
  MoonIcon,
  PaintBrushIcon,
  PaperPlaneTiltIcon,
  PauseIcon,
  PhoneIcon,
  VideoCameraIcon,
  PencilSimpleIcon,
  PlayIcon,
  PlusIcon,
  PaletteIcon,
  SlidersHorizontalIcon,
  SparkleIcon,
  StackIcon,
  StarIcon,
  StickerIcon,
  UserPlusIcon,
  type Icon,
  type IconWeight,
} from 'phosphor-react-native';
import type { ThemeTokens } from '../lib/tokens';

/**
 * Familiar short names mapped to Phosphor icons.
 * Call sites keep the short names; glyphs come from Phosphor (duotone).
 */
const ICONS = {
  sparkles: SparkleIcon,
  'chevron-forward': CaretRightIcon,
  'arrow-forward': ArrowRightIcon,
  'image-outline': ImageIcon,
  images: ImagesIcon,
  location: MapPinIcon,
  bulb: LightbulbIcon,
  calendar: CalendarIcon,
  chatbubbles: ChatCircleIcon,
  grid: GridFourIcon,
  'person-add': UserPlusIcon,
  heart: HeartIcon,
  brush: PaintBrushIcon,
  camera: CameraIcon,
  send: PaperPlaneTiltIcon,
  refresh: ArrowClockwiseIcon,
  pencil: PencilSimpleIcon,
  albums: StackIcon,
  'ellipsis-horizontal': DotsThreeIcon,
  circle: CircleIcon,
  eraser: EraserIcon,
  flower: FlowerIcon,
  add: PlusIcon,
  star: StarIcon,
  gift: GiftIcon,
  moon: MoonIcon,
  palette: PaletteIcon,
  sliders: SlidersHorizontalIcon,
  checkmark: CheckIcon,
  play: PlayIcon,
  mic: MicrophoneIcon,
  sticker: StickerIcon,
  pause: PauseIcon,
  phone: PhoneIcon,
  video: VideoCameraIcon,
  'chevron-back': CaretLeftIcon,
} satisfies Record<string, Icon>;

export type RichIconName = keyof typeof ICONS;

export type RichIconVariant = 'gradient' | 'soft' | 'plain';

type Props = {
  name: RichIconName;
  size?: number;
  tokens: ThemeTokens;
  variant?: RichIconVariant;
  /** Phosphor weight; defaults to duotone. Overridden to fill when active. */
  weight?: IconWeight;
  /** When true, icon switches to fill weight and springs to 1.15x scale. */
  active?: boolean;
  /** Override the icon color (plain variant); defaults to tokens.primary. */
  color?: string;
};

/**
 * Bubbly icon badge:
 * - gradient: LinearGradient circle (tokens.gradient), white duotone icon
 * - soft: tokens.primaryTint circle, tokens.primary duotone icon
 * - plain: no background, theme-colored duotone icon
 *
 * Duotone colors are theme-driven: `color` tints the main layer and the
 * secondary layer renders at 20% opacity of the same color, so the icon
 * automatically adapts to every theme.
 */
export function RichIcon({
  name,
  size = 22,
  tokens,
  variant = 'soft',
  weight = 'duotone',
  active = false,
  color,
}: Props) {
  const container = size * 2.2;
  const radius = size * 1.1;
  const Glyph: Icon = ICONS[name];
  const effectiveWeight: IconWeight = active ? 'fill' : weight;

  const scale = useSharedValue(1);
  useEffect(() => {
    scale.value = withSpring(active ? 1.15 : 1, { damping: 10, stiffness: 300 });
  }, [active, scale]);
  const animatedStyle = useAnimatedStyle(() => ({
    transform: [{ scale: scale.value }],
  }));

  const renderGlyph = (glyphColor: string) => (
    <Animated.View style={animatedStyle}>
      <Glyph size={size} color={glyphColor} weight={effectiveWeight} />
    </Animated.View>
  );

  if (variant === 'gradient') {
    return (
      <LinearGradient
        colors={tokens.gradient}
        start={{ x: 0, y: 0 }}
        end={{ x: 1, y: 1 }}
        style={[styles.circle, { width: container, height: container, borderRadius: radius }]}
      >
        {renderGlyph('#FFFFFF')}
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
        {renderGlyph(color ?? tokens.primary)}
      </View>
    );
  }

  return renderGlyph(color ?? tokens.primary);
}

const styles = StyleSheet.create({
  circle: {
    alignItems: 'center',
    justifyContent: 'center',
  },
});
