import type { RealtimeChannel, SupabaseClient } from '@supabase/supabase-js';
import { getMyCoupleId, NOT_CONFIGURED, type PairResult } from './pairing';

// Metro/Babel resolve these at runtime; declared here for TypeScript.
declare function require(name: string): any;

/**
 * Live distance sharing between partners.
 *
 * Realtime prerequisite (run once per project):
 *   alter publication supabase_realtime add table public.locations;
 *
 * Background location only works in a dev build or production build —
 * never in Expo Go. Foreground sharing works in Expo Go.
 */

const BG_TASK = 'pair-buddy-background-location';
const SHARING_KEY = 'pair-buddy:distance-sharing';
const UNIT_KEY = 'pair-buddy:distance-unit';

export type DistanceUnit = 'km' | 'mi';
export type Staleness = 'live' | 'recent' | 'stale';

export type PartnerLocation = {
  userId: string;
  name: string;
  lat: number;
  lng: number;
  updatedAt: string;
};

export type LatLng = { lat: number; lng: number };

let cachedClient: SupabaseClient | null | undefined;

/** Lazy Supabase access — never throws at import time when unconfigured. */
function getClient(): SupabaseClient | null {
  if (cachedClient !== undefined) return cachedClient;
  try {
    cachedClient = require('./supabase').supabase ?? null;
  } catch {
    cachedClient = null;
  }
  return cachedClient;
}

function getLocation(): any | null {
  try {
    return require('expo-location');
  } catch {
    return null;
  }
}

function getTaskManager(): any | null {
  try {
    return require('expo-task-manager');
  } catch {
    return null;
  }
}

function getStorage(): any | null {
  try {
    return require('@react-native-async-storage/async-storage').default;
  } catch {
    return null;
  }
}

function toMessage(e: unknown, fallback: string): string {
  if (e instanceof Error && e.message) return e.message;
  if (typeof e === 'string' && e.length > 0) return e;
  return fallback;
}

async function getUserId(client: SupabaseClient): Promise<string | null> {
  const { data } = await client.auth.getUser();
  return data.user?.id ?? null;
}

/** Background task: upserts the latest position. Registered once at module load. */
const TaskManager = getTaskManager();
if (TaskManager) {
  TaskManager.defineTask(BG_TASK, async ({ data, error }: any) => {
    if (error || !data?.locations?.length) return;
    try {
      const client: SupabaseClient | null = getClient();
      const storage = getStorage();
      if (!client || !storage) return;
      const uid = await storage.getItem(SHARING_KEY + ':uid');
      if (!uid) return;
      const last = data.locations[data.locations.length - 1];
      await client.from('locations').upsert({
        user_id: uid,
        lat: last.coords.latitude,
        lng: last.coords.longitude,
        updated_at: new Date().toISOString(),
      });
    } catch {
      // Background tasks must never throw; the OS will unregister them.
    }
  });
}

let foregroundWatch: { remove: () => void } | null = null;

/**
 * Ask for location permission. Foreground first, then background —
 * iOS requires foreground to be granted before background is requested.
 * Returns which level was granted.
 */
export async function requestPermissions(): Promise<PairResult<'foreground' | 'background'>> {
  const Location = getLocation();
  if (!Location) return { data: null, error: 'Location is not available on this device.' };
  try {
    const fg = await Location.requestForegroundPermissionsAsync();
    if (fg.status !== 'granted') {
      return { data: null, error: 'Location permission was denied.' };
    }
    const bg = await Location.requestBackgroundPermissionsAsync();
    if (bg.status !== 'granted') {
      return { data: 'foreground', error: null };
    }
    return { data: 'background', error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not request location permission.') };
  }
}

/** The partner: the other member of my couple, with their display name. */
export async function getPartner(): Promise<PairResult<{ userId: string; name: string }>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const uid = await getUserId(client);
    if (!uid) return { data: null, error: 'You are not signed in.' };
    const couple = await getMyCoupleId();
    if (couple.error || !couple.data) {
      return { data: null, error: couple.error ?? 'No couple found for this account yet.' };
    }
    const { data, error } = await client
      .from('couple_members')
      .select('user_id, profiles ( name )')
      .eq('couple_id', couple.data)
      .neq('user_id', uid)
      .limit(1)
      .maybeSingle();
    if (error) throw error;
    if (!data) return { data: null, error: 'Your partner has not joined yet.' };
    const row = data as { user_id: string; profiles: { name: string } | { name: string }[] | null };
    const name = Array.isArray(row.profiles) ? row.profiles[0]?.name : row.profiles?.name;
    return { data: { userId: row.user_id, name: name ?? 'Partner' }, error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not load your partner.') };
  }
}

/** Read the partner's latest shared position, if any. */
export async function getPartnerLocation(): Promise<PairResult<PartnerLocation>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const partner = await getPartner();
    if (partner.error || !partner.data) {
      return { data: null, error: partner.error ?? 'No partner found.' };
    }
    const { data, error } = await client
      .from('locations')
      .select('lat, lng, updated_at')
      .eq('user_id', partner.data.userId)
      .maybeSingle();
    if (error) throw error;
    if (!data) {
      return { data: null, error: `${partner.data.name} is not sharing location right now.` };
    }
    const row = data as { lat: number; lng: number; updated_at: string };
    return {
      data: {
        userId: partner.data.userId,
        name: partner.data.name,
        lat: row.lat,
        lng: row.lng,
        updatedAt: row.updated_at,
      },
      error: null,
    };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not load partner location.') };
  }
}

/** Realtime updates for the partner's position. Returns an unsubscribe function. */
export function subscribePartnerLocation(
  partnerUserId: string,
  onUpdate: (loc: { lat: number; lng: number; updatedAt: string }) => void,
): () => void {
  const client = getClient();
  if (!client) return () => {};
  const channel: RealtimeChannel = client
    .channel(`locations:${partnerUserId}`)
    .on(
      'postgres_changes',
      {
        event: '*',
        schema: 'public',
        table: 'locations',
        filter: `user_id=eq.${partnerUserId}`,
      },
      (payload: any) => {
        const row = payload.new as { lat: number; lng: number; updated_at: string } | undefined;
        if (row) onUpdate({ lat: row.lat, lng: row.lng, updatedAt: row.updated_at });
      },
    )
    .subscribe();
  return () => {
    client.removeChannel(channel);
  };
}

/** My current position, one shot. Used to compute the distance readout. */
export async function getMyPosition(): Promise<PairResult<LatLng>> {
  const Location = getLocation();
  if (!Location) return { data: null, error: 'Location is not available on this device.' };
  try {
    const pos = await Location.getCurrentPositionAsync({ accuracy: Location.Accuracy.Balanced });
    return {
      data: { lat: pos.coords.latitude, lng: pos.coords.longitude },
      error: null,
    };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not read your position.') };
  }
}

async function upsertMyRow(client: SupabaseClient, uid: string, lat: number, lng: number) {
  const { error } = await client.from('locations').upsert({
    user_id: uid,
    lat,
    lng,
    updated_at: new Date().toISOString(),
  });
  if (error) throw error;
}

/**
 * Start sharing my position. Foreground updates run while the app is open;
 * background updates keep the row fresh when the app is closed (dev build
 * or production only — Expo Go cannot run background location).
 */
export async function startSharing(): Promise<PairResult<null>> {
  const client = getClient();
  const Location = getLocation();
  const storage = getStorage();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  if (!Location || !storage) {
    return { data: null, error: 'Location is not available on this device.' };
  }
  try {
    const perm = await requestPermissions();
    if (perm.error) return { data: null, error: perm.error };
    const uid = await getUserId(client);
    if (!uid) return { data: null, error: 'You are not signed in.' };

    await storage.setItem(SHARING_KEY, 'on');
    await storage.setItem(SHARING_KEY + ':uid', uid);

    // Immediate first write so the partner sees something right away.
    const first = await getMyPosition();
    if (first.data) await upsertMyRow(client, uid, first.data.lat, first.data.lng);

    if (foregroundWatch) foregroundWatch.remove();
    foregroundWatch = await Location.watchPositionAsync(
      {
        accuracy: Location.Accuracy.Balanced,
        distanceInterval: 50,
        timeInterval: 60000,
      },
      async (pos: any) => {
        try {
          await upsertMyRow(client, uid, pos.coords.latitude, pos.coords.longitude);
        } catch {
          // Transient write failures are fine; the next tick retries.
        }
      },
    );

    if (perm.data === 'background') {
      const hasTask = await Location.hasStartedLocationUpdatesAsync(BG_TASK).catch(() => false);
      if (!hasTask) {
        await Location.startLocationUpdatesAsync(BG_TASK, {
          accuracy: Location.Accuracy.Balanced,
          distanceInterval: 100,
          timeInterval: 300000,
          showsBackgroundLocationIndicator: true,
          foregroundService: {
            notificationTitle: 'Pair Buddy',
            notificationBody: 'Sharing live distance with your partner.',
          },
        });
      }
    }
    return { data: null, error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not start sharing.') };
  }
}

/** Stop sharing: remove watchers and delete my row so I disappear for my partner. */
export async function stopSharing(): Promise<PairResult<null>> {
  const client = getClient();
  const Location = getLocation();
  const storage = getStorage();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    if (foregroundWatch) {
      foregroundWatch.remove();
      foregroundWatch = null;
    }
    if (Location) {
      const hasTask = await Location.hasStartedLocationUpdatesAsync(BG_TASK).catch(() => false);
      if (hasTask) {
        await Location.stopLocationUpdatesAsync(BG_TASK).catch(() => {});
      }
    }
    const uid = await getUserId(client);
    if (uid) {
      await client.from('locations').delete().eq('user_id', uid);
    }
    if (storage) {
      await storage.multiRemove([SHARING_KEY, SHARING_KEY + ':uid']);
    }
    return { data: null, error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not stop sharing.') };
  }
}

/** Whether sharing was left on (restored on app start). */
export async function isSharingEnabled(): Promise<boolean> {
  const storage = getStorage();
  if (!storage) return false;
  try {
    return (await storage.getItem(SHARING_KEY)) === 'on';
  } catch {
    return false;
  }
}

export async function getUnitPreference(): Promise<DistanceUnit> {
  const storage = getStorage();
  if (!storage) return 'km';
  try {
    return (await storage.getItem(UNIT_KEY)) === 'mi' ? 'mi' : 'km';
  } catch {
    return 'km';
  }
}

export async function setUnitPreference(unit: DistanceUnit): Promise<void> {
  const storage = getStorage();
  if (!storage) return;
  try {
    await storage.setItem(UNIT_KEY, unit);
  } catch {
    // Preference loss is harmless; the default applies.
  }
}

/** Great-circle distance in kilometres. */
export function haversineKm(a: LatLng, b: LatLng): number {
  const R = 6371;
  const dLat = ((b.lat - a.lat) * Math.PI) / 180;
  const dLng = ((b.lng - a.lng) * Math.PI) / 180;
  const sLat1 = Math.sin(dLat / 2);
  const sLng = Math.sin(dLng / 2);
  const h =
    sLat1 * sLat1 +
    Math.cos((a.lat * Math.PI) / 180) * Math.cos((b.lat * Math.PI) / 180) * sLng * sLng;
  return 2 * R * Math.asin(Math.sqrt(h));
}

export function formatDistance(km: number, unit: DistanceUnit): string {
  if (unit === 'mi') {
    const mi = km * 0.621371;
    if (mi < 0.1) return `${Math.max(1, Math.round(mi * 5280))} ft`;
    return `${mi < 10 ? mi.toFixed(1) : Math.round(mi)} mi`;
  }
  if (km < 1) return `${Math.max(1, Math.round(km * 1000))} m`;
  return `${km < 10 ? km.toFixed(1) : Math.round(km)} km`;
}

/** Freshness of a position: live under 2 min, recent under 15 min, else stale. */
export function getStaleness(updatedAtIso: string): Staleness {
  const ageMs = Date.now() - new Date(updatedAtIso).getTime();
  if (ageMs < 2 * 60 * 1000) return 'live';
  if (ageMs < 15 * 60 * 1000) return 'recent';
  return 'stale';
}
