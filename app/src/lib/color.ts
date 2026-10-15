/**
 * Pure color utilities for the Pair Buddy theme engine.
 * No dependencies; all math is done in RGB/HSL space.
 */

export interface RGB {
  r: number;
  g: number;
  b: number;
}

export function hexToRgb(hex: string): RGB {
  let h = hex.replace('#', '');
  if (h.length === 3) {
    h = h
      .split('')
      .map((c) => c + c)
      .join('');
  }
  const n = parseInt(h, 16);
  return { r: (n >> 16) & 255, g: (n >> 8) & 255, b: n & 255 };
}

export function rgbToHex({ r, g, b }: RGB): string {
  const c = (v: number) =>
    Math.round(Math.max(0, Math.min(255, v)))
      .toString(16)
      .padStart(2, '0');
  return `#${c(r)}${c(g)}${c(b)}`.toUpperCase();
}

/**
 * Mix two hex colors. `weight` is the proportion of `hexA` (0..1).
 */
export function mix(hexA: string, hexB: string, weight: number): string {
  const a = hexToRgb(hexA);
  const b = hexToRgb(hexB);
  const w = Math.max(0, Math.min(1, weight));
  return rgbToHex({
    r: a.r * w + b.r * (1 - w),
    g: a.g * w + b.g * (1 - w),
    b: a.b * w + b.b * (1 - w),
  });
}

/** Mix a color toward white. `amount` 0..1 (proportion of the original color kept). */
export function tint(hex: string, amount: number): string {
  return mix(hex, '#FFFFFF', amount);
}

/** Mix a color toward black. `amount` 0..1. */
export function shade(hex: string, amount: number): string {
  return mix('#000000', hex, amount);
}

/** Relative luminance (0..1), for contrast decisions. */
export function luminance(hex: string): number {
  const { r, g, b } = hexToRgb(hex);
  const f = (v: number) => {
    const s = v / 255;
    return s <= 0.03928 ? s / 12.92 : Math.pow((s + 0.055) / 1.055, 2.4);
  };
  return 0.2126 * f(r) + 0.7152 * f(g) + 0.0722 * f(b);
}

/** True when white text reads better on this color than dark text. */
export function prefersWhiteText(hex: string): boolean {
  return luminance(hex) < 0.35;
}
