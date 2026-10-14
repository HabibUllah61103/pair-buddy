/**
 * Derived design tokens for a theme + color mode.
 *
 * Token names mirror the legacy `COLORS` in `app/src/theme.ts` where
 * possible so screens can migrate mechanically: `COLORS.navy` -> the
 * theme's `primary`, `COLORS.background` -> `tokens.background`, etc.
 */

import { mix, prefersWhiteText, shade, tint } from './color';
import type { ThemeDef } from '../themes';

export type ThemeMode = 'light' | 'dark';

export interface ThemeTokens {
  /** Theme anchor. Buttons, active states, brand moments. */
  primary: string;
  /** Pressed/disabled-adjacent states. */
  primaryDeep: string;
  /** Soft highlight backgrounds (chips, selected rows). */
  primaryTint: string;
  /** Text/icons drawn on top of `primary`. */
  onPrimary: string;
  /** App background. */
  background: string;
  /** Card surface. */
  card: string;
  /** Primary text. */
  ink: string;
  /** Secondary text, placeholders, captions. */
  muted: string;
  /** Hairline borders and dividers. */
  border: string;
  /** Destructive actions and errors. */
  danger: string;
  /** Confirmations. */
  success: string;
  /** Cautions. */
  warning: string;
  /** Pure white. */
  white: string;
  /** Soft wash behind hero sections (tinted background). */
  wash: string;
}

const INK_LIGHT = '#1A2F4D';
const MUTED_LIGHT = '#8AA0B8';
const INK_DARK = '#FFFFFF';
const MUTED_DARK = '#9AA3B2';

export function buildTokens(def: ThemeDef, mode: ThemeMode): ThemeTokens {
  const p = def.primary;
  if (mode === 'light') {
    return {
      primary: p,
      primaryDeep: shade(p, 0.78),
      primaryTint: tint(p, 0.12),
      onPrimary: prefersWhiteText(p) ? '#FFFFFF' : '#1A2F4D',
      background: mix(p, '#FAF7F2', 0.05),
      card: '#FFFFFF',
      ink: INK_LIGHT,
      muted: MUTED_LIGHT,
      border: mix(p, '#E4EAF2', 0.18),
      danger: '#E2605C',
      success: '#2ECC71',
      warning: '#F5B942',
      white: '#FFFFFF',
      wash: tint(p, 0.07),
    };
  }
  const primaryBright = tint(p, 0.82);
  return {
    primary: primaryBright,
    primaryDeep: p,
    primaryTint: mix(p, '#221C2E', 0.35),
    onPrimary: prefersWhiteText(primaryBright) ? '#FFFFFF' : '#1A2F4D',
    background: mix(p, '#14101A', 0.1),
    card: mix(p, '#201B2A', 0.08),
    ink: INK_DARK,
    muted: MUTED_DARK,
    border: mix(p, '#2C2634', 0.18),
    danger: '#E2605C',
    success: '#2ECC71',
    warning: '#F5B942',
    white: '#FFFFFF',
    wash: mix(p, '#17121F', 0.16),
  };
}
