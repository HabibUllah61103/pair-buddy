/**
 * GIPHY Stickers API client.
 *
 * Uses EXPO_PUBLIC_GIPHY_API_KEY (free at https://developers.giphy.com).
 * When no key is set, all functions return empty arrays and the UI falls
 * back to the built-in hearts stickers.
 */

const API_KEY = process.env.EXPO_PUBLIC_GIPHY_API_KEY ?? '';
const BASE = 'https://api.giphy.com/v1/stickers';

export type GiphySticker = {
  id: string;
  /** Small preview for the grid. */
  previewUrl: string;
  /** Full-size URL to send. */
  fullUrl: string;
};

type GiphyResponse = {
  data: Array<{
    id: string;
    images: {
      fixed_height_small?: { url: string };
      preview_gif?: { url: string };
      original?: { url: string };
    };
  }>;
};

function toStickers(json: GiphyResponse): GiphySticker[] {
  return (json.data ?? []).map((item) => ({
    id: item.id,
    previewUrl:
      item.images.fixed_height_small?.url ?? item.images.preview_gif?.url ?? '',
    fullUrl: item.images.original?.url ?? item.images.preview_gif?.url ?? '',
  })).filter((s) => s.previewUrl && s.fullUrl);
}

async function fetchStickers(path: string): Promise<GiphySticker[]> {
  if (!API_KEY) return [];
  try {
    const res = await fetch(`${BASE}${path}${path.includes('?') ? '&' : '?'}api_key=${API_KEY}&limit=24&rating=g`);
    if (!res.ok) return [];
    const json = (await res.json()) as GiphyResponse;
    return toStickers(json);
  } catch {
    return [];
  }
}

/** Trending stickers for the picker grid. */
export function trendingStickers(): Promise<GiphySticker[]> {
  return fetchStickers('/trending');
}

/** Search stickers by query. */
export function searchStickers(query: string): Promise<GiphySticker[]> {
  const q = query.trim();
  if (!q) return trendingStickers();
  return fetchStickers(`/search?q=${encodeURIComponent(q)}`);
}

/** True when a GIPHY key is configured. */
export function giphyConfigured(): boolean {
  return API_KEY.length > 0;
}
