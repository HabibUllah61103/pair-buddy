// Pair Buddy brand tokens.
// Source of truth for color, type, radius, and spacing. New code should import
// from here instead of hardcoding hex literals. (Older screens still carry
// inline literals; they migrate to these tokens opportunistically — see
// docs/BRAND.md.)

export const COLORS = {
  /** Primary brand navy. Headers, primary buttons, splash background. */
  navy: '#123B63',
  /** Deep navy for dark surfaces and pressed states. */
  navyDeep: '#0F2540',
  /** Primary accent coral, sampled from the Venn heart icon concept (#F2513C).
   *  CTAs, hearts, active states. */
  coral: '#F2513C',
  /** Darker coral for pressed/disabled-adjacent states. */
  coralDeep: '#C9402A',
  /** Soft coral tint for highlighted backgrounds. */
  coralTint: '#FDE7E1',
  /** Secondary accent teal. Live/success affordances, links. */
  teal: '#14B8A6',
  /** App background. */
  background: '#F7FAFD',
  /** Card surface. */
  card: '#FFFFFF',
  /** Primary text on light surfaces. */
  ink: '#1A2F4D',
  /** Secondary text, placeholders, captions. */
  muted: '#8AA0B8',
  /** Hairline borders and dividers. */
  border: '#DCE6F0',
  /** Destructive actions and errors. */
  danger: '#E2605C',
  /** Confirmations. */
  success: '#2ECC71',
  /** Cautions. */
  warning: '#F5B942',
  /** Pure white for text on brand colors. */
  white: '#FFFFFF',
} as const;

export type ColorName = keyof typeof COLORS;

/** System font stack; Pair Buddy ships no custom fonts. */
export const FONTS = {
  body: 'System',
  heading: 'System',
} as const;

export const FONT_WEIGHTS = {
  regular: '400',
  medium: '600',
  bold: '800',
} as const;

export const RADII = {
  sm: 8,
  md: 12,
  lg: 16,
  pill: 999,
} as const;

export const SPACING = {
  xs: 4,
  sm: 8,
  md: 16,
  lg: 24,
  xl: 32,
} as const;
