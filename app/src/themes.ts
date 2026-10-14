/**
 * Pair Buddy theme definitions.
 *
 * Ten color themes the user can switch between. Each theme is anchored on a
 * single primary color; the full light/dark token sets are derived from it
 * in `app/src/lib/tokens.ts` so every theme stays internally harmonious.
 */

export interface ThemeDef {
  /** Stable id, persisted in AsyncStorage. */
  id: string;
  /** Display name shown in the theme picker. */
  name: string;
  /** Anchor color. Drives primary, tints, and background washes. */
  primary: string;
}

export const THEMES: ThemeDef[] = [
  { id: 'coral', name: 'Coral Pop', primary: '#FF6B5E' },
  { id: 'blush', name: 'Blush Pink', primary: '#F472A0' },
  { id: 'lavender', name: 'Lavender', primary: '#A78BFA' },
  { id: 'sky', name: 'Sky Kiss', primary: '#60A5FA' },
  { id: 'mint', name: 'Mint Fresh', primary: '#34D399' },
  { id: 'teal', name: 'Teal Wave', primary: '#14B8A6' },
  { id: 'navy', name: 'Deep Navy', primary: '#123B63' },
  { id: 'amber', name: 'Honey Amber', primary: '#FBBF24' },
  { id: 'rosewood', name: 'Rosewood', primary: '#FB7185' },
  { id: 'violet', name: 'Violet Haze', primary: '#8B5CF6' },
];

export const DEFAULT_THEME_ID = 'coral';

export function getThemeDef(id: string): ThemeDef {
  return THEMES.find((t) => t.id === id) ?? THEMES[0];
}
