/**
 * GIPHY Stickers API client with smart caching.
 *
 * Uses EXPO_PUBLIC_GIPHY_API_KEY (free at https://developers.giphy.com).
 * When no key is set, all functions return empty arrays and the UI falls
 * back to the built-in hearts stickers.
 *
 * Caching (AsyncStorage) keeps us well under GIPHY's 100 calls/hour limit:
 * - Trending: 24h TTL, stale-while-revalidate
 * - Search: 1h TTL per query, max 20 cached queries (LRU)
 */

import AsyncStorage from '@react-native-async-storage/async-storage';

const API_KEY = process.env.EXPO_PUBLIC_GIPHY_API_KEY ?? '';
const BASE = 'https://api.giphy.com/v1/stickers';

const TRENDING_KEY = 'pairbuddy.giphy.trending';
const SEARCH_KEY_PREFIX = 'pairbuddy.giphy.search.';
const SEARCH_INDEX_KEY = 'pairbuddy.giphy.search.index';

const TRENDING_TTL_MS = 24 * 60 * 60 * 1000; // 24 hours
const SEARCH_TTL_MS = 60 * 60 * 1000; // 1 hour
const MAX_SEARCH_ENTRIES = 20;

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

type CacheEntry = {
  data: GiphySticker[];
  fetchedAt: number;
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

// ---------------------------------------------------------------------------
// Cache helpers
// ---------------------------------------------------------------------------

/** Read a cache entry; returns null on miss, corrupt data, or any error. */
async function readCache(key: string): Promise<CacheEntry | null> {
  try {
    const raw = await AsyncStorage.getItem(key);
    if (!raw) return null;
    const parsed = JSON.parse(raw) as CacheEntry;
    if (!parsed || !Array.isArray(parsed.data) || typeof parsed.fetchedAt !== 'number') {
      return null;
    }
    return parsed;
  } catch {
    return null;
  }
}

/** Write a cache entry; swallows errors (cache is best-effort). */
async function writeCache(key: string, data: GiphySticker[]): Promise<void> {
  try {
    const entry: CacheEntry = { data, fetchedAt: Date.now() };
    await AsyncStorage.setItem(key, JSON.stringify(entry));
  } catch {
    // Cache write failure is not fatal; the API result is still returned.
  }
}

function isFresh(entry: CacheEntry, ttlMs: number): boolean {
  return Date.now() - entry.fetchedAt < ttlMs;
}

/** Normalize a search query for cache-key purposes. */
function normalizeQuery(query: string): string {
  return query.trim().toLowerCase();
}

function searchKey(normalized: string): string {
  return `${SEARCH_KEY_PREFIX}${normalized}`;
}

/**
 * Record a search query in the LRU index and evict the oldest entries
 * beyond MAX_SEARCH_ENTRIES. Best-effort; never throws.
 */
async function touchSearchIndex(normalized: string): Promise<void> {
  try {
    const raw = await AsyncStorage.getItem(SEARCH_INDEX_KEY);
    let index: string[] = [];
    if (raw) {
      const parsed = JSON.parse(raw);
      if (Array.isArray(parsed)) {
        index = parsed.filter((q): q is string => typeof q === 'string');
      }
    }
    // Move to most-recent position.
    index = index.filter((q) => q !== normalized);
    index.push(normalized);
    // Evict oldest beyond the cap.
    while (index.length > MAX_SEARCH_ENTRIES) {
      const evicted = index.shift();
      if (evicted) {
        await AsyncStorage.removeItem(searchKey(evicted));
      }
    }
    await AsyncStorage.setItem(SEARCH_INDEX_KEY, JSON.stringify(index));
  } catch {
    // Index maintenance is best-effort.
  }
}

/**
 * Fetch from the API and cache the result under `key`. Used for both
 * foreground fetches and background revalidation.
 */
async function fetchAndCache(path: string, key: string): Promise<GiphySticker[]> {
  const data = await fetchStickers(path);
  // Only cache successful non-empty results; an empty result may mean
  // the API failed, and we don't want to poison the cache with it.
  // (An empty search result is legitimate but rare; refetching is cheap.)
  if (data.length > 0) {
    await writeCache(key, data);
  }
  return data;
}

// ---------------------------------------------------------------------------
// Public API (signatures unchanged; caching is transparent to callers)
// ---------------------------------------------------------------------------

/**
 * Trending stickers for the picker grid.
 * Served from cache when fresh; stale cache is returned immediately while
 * a background refresh updates it (stale-while-revalidate).
 */
export async function trendingStickers(): Promise<GiphySticker[]> {
  if (!API_KEY) return [];
  const cached = await readCache(TRENDING_KEY);
  if (cached && isFresh(cached, TRENDING_TTL_MS)) {
    return cached.data;
  }
  if (cached) {
    // Stale-while-revalidate: return stale data now, refresh in background.
    void fetchAndCache('/trending', TRENDING_KEY);
    return cached.data;
  }
  return fetchAndCache('/trending', TRENDING_KEY);
}

/**
 * Search stickers by query. Queries are normalized (lowercase, trimmed)
 * and cached per query for 1 hour, max 20 queries (LRU eviction).
 */
export async function searchStickers(query: string): Promise<GiphySticker[]> {
  const normalized = normalizeQuery(query);
  if (!normalized) return trendingStickers();
  if (!API_KEY) return [];
  const key = searchKey(normalized);
  const cached = await readCache(key);
  if (cached && isFresh(cached, SEARCH_TTL_MS)) {
    void touchSearchIndex(normalized);
    return cached.data;
  }
  if (cached) {
    // Stale-while-revalidate: return stale data now, refresh in background.
    void touchSearchIndex(normalized);
    void fetchAndCache(`/search?q=${encodeURIComponent(normalized)}`, key);
    return cached.data;
  }
  const data = await fetchAndCache(`/search?q=${encodeURIComponent(normalized)}`, key);
  if (data.length > 0) {
    await touchSearchIndex(normalized);
  }
  return data;
}

/** True when a GIPHY key is configured. */
export function giphyConfigured(): boolean {
  return API_KEY.length > 0;
}

/**
 * Clear all cached GIPHY data (trending + all search entries).
 * Useful for debugging or a settings "clear cache" action.
 */
export async function clearGiphyCache(): Promise<void> {
  try {
    await AsyncStorage.removeItem(TRENDING_KEY);
    const raw = await AsyncStorage.getItem(SEARCH_INDEX_KEY);
    if (raw) {
      const parsed = JSON.parse(raw);
      if (Array.isArray(parsed)) {
        await Promise.all(
          parsed
            .filter((q): q is string => typeof q === 'string')
            .map((q) => AsyncStorage.removeItem(searchKey(q))),
        );
      }
    }
    await AsyncStorage.removeItem(SEARCH_INDEX_KEY);
  } catch {
    // Best-effort.
  }
}
