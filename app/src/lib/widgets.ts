import { NativeModules } from 'react-native';
import type { SupabaseClient } from '@supabase/supabase-js';
import { getMyCoupleId, NOT_CONFIGURED, type PairResult } from './pairing';
import { formatPlanDate, getPlans, todayIso } from './dates';
import { getTodaySpark } from './sparks';
import {
  formatDistance,
  getMyPosition,
  getPartner,
  getPartnerLocation,
  getStaleness,
  getUnitPreference,
  haversineKm,
} from './location';

// Metro/Babel resolve this at runtime; declared here for TypeScript.
declare function require(name: string): any;

export const WIDGET_TYPES = ['countdown', 'spark', 'distance', 'draw'] as const;
export type WidgetType = (typeof WIDGET_TYPES)[number];

export const WIDGET_LABELS: Record<WidgetType, string> = {
  countdown: 'Countdown',
  spark: 'Daily Spark',
  distance: 'Distance',
  draw: 'Draw',
};

export const WIDGET_DESCRIPTIONS: Record<WidgetType, string> = {
  countdown: 'Days left until your next planned date.',
  spark: "Today's Daily Spark question at a glance.",
  distance: 'How far apart you and your partner are right now.',
  draw: 'Jump straight into the drawing canvas together.',
};

/** The payload the native widget binds into its views (Android RemoteViews / iOS WidgetKit). */
export type WidgetPayload = {
  type: WidgetType;
  title: string;
  line1: string;
  line2?: string;
  updatedAt: number;
  /**
   * ISO date (yyyy-MM-dd) behind a countdown payload. The Android periodic
   * worker uses it to recompute the days-left label locally so the countdown
   * rolls over at midnight without opening the app. Absent for other types.
   */
  targetDate?: string;
};

export type WidgetConfig = {
  id: string;
  coupleId: string;
  userId: string;
  widgetType: WidgetType;
  config: Record<string, unknown>;
  updatedAt: string;
};

let cachedClient: SupabaseClient | null | undefined;

/** Lazy Supabase access — never throws at import time when unconfigured. */
function getClient(): SupabaseClient | null {
  if (cachedClient !== undefined) return cachedClient;
  try {
    cachedClient = require('./supabase').supabase ?? null;
  } catch {
    cachedClient = null;
  }
  return cachedClient ?? null;
}

function toMessage(e: unknown, fallback: string): string {
  if (e instanceof Error && e.message) return e.message;
  if (typeof e === 'string' && e.length > 0) return e;
  return fallback;
}

function toConfig(row: any): WidgetConfig {
  return {
    id: row.id,
    coupleId: row.couple_id,
    userId: row.user_id,
    widgetType: row.widget_type,
    config: row.config ?? {},
    updatedAt: row.updated_at,
  };
}

/**
 * The native module exists only in a dev build (prebuild applied).
 * Android exposes PairWidgetModule (SharedPreferences + RemoteViews);
 * iOS exposes PairWidgetDataModule (App Group container + WidgetKit).
 */
function getNativeModule(): { setWidgetData: (json: string) => void } | null {
  try {
    const modules = NativeModules as any;
    for (const name of ['PairWidgetModule', 'PairWidgetDataModule']) {
      const mod = modules[name];
      if (mod && typeof mod.setWidgetData === 'function') return mod;
    }
    return null;
  } catch {
    return null;
  }
}

/** True when the widget native module is present (not in Expo Go). */
export function isWidgetNativeAvailable(): boolean {
  return getNativeModule() !== null;
}

/**
 * Push a payload to the installed widgets: Android re-renders its RemoteViews
 * instances, iOS reloads the WidgetKit timelines.
 * No-op with a friendly error when running without the native module.
 */
export async function setWidgetData(payload: WidgetPayload): Promise<PairResult<null>> {
  const mod = getNativeModule();
  if (!mod) {
    return {
      data: null,
      error: 'Home widgets need a development build. Run npx expo prebuild first.',
    };
  }
  try {
    mod.setWidgetData(JSON.stringify(payload));
    return { data: null, error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not update the widget.') };
  }
}

/** My saved widget choice, or null when I have not picked one yet. */
export async function getWidgetConfig(): Promise<PairResult<WidgetConfig | null>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const { data: auth } = await client.auth.getUser();
    const uid = auth.user?.id;
    if (!uid) return { data: null, error: 'You are not signed in.' };
    const { data, error } = await client
      .from('widget_configs')
      .select('id, couple_id, user_id, widget_type, config, updated_at')
      .eq('user_id', uid)
      .maybeSingle();
    if (error) throw error;
    return { data: data ? toConfig(data) : null, error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not load your widget settings.') };
  }
}

/** Save my widget choice (one row per user; upserts on user_id). */
export async function saveWidgetConfig(
  type: WidgetType,
  config: Record<string, unknown> = {}
): Promise<PairResult<WidgetConfig>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const { data: auth } = await client.auth.getUser();
    const uid = auth.user?.id;
    if (!uid) return { data: null, error: 'You are not signed in.' };
    const couple = await getMyCoupleId();
    if (couple.error || !couple.data) {
      return { data: null, error: couple.error ?? 'No couple found for this account yet.' };
    }
    const { data, error } = await client
      .from('widget_configs')
      .upsert(
        {
          couple_id: couple.data,
          user_id: uid,
          widget_type: type,
          config,
          updated_at: new Date().toISOString(),
        },
        { onConflict: 'user_id' }
      )
      .select('id, couple_id, user_id, widget_type, config, updated_at')
      .single();
    if (error) throw error;
    return { data: toConfig(data), error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not save your widget settings.') };
  }
}

function daysUntil(iso: string): number {
  const target = new Date(`${iso}T12:00:00`).getTime();
  const now = new Date();
  const todayNoon = new Date(now.getFullYear(), now.getMonth(), now.getDate(), 12).getTime();
  return Math.round((target - todayNoon) / 86400000);
}

async function buildCountdownPayload(): Promise<WidgetPayload> {
  const fallback: WidgetPayload = {
    type: 'countdown',
    title: 'Countdown',
    line1: 'No upcoming dates',
    line2: 'Save a plan in Date ideas',
    updatedAt: Date.now(),
  };
  const plans = await getPlans();
  if (plans.error || !plans.data) return fallback;
  const upcoming = plans.data
    .filter((p) => p.plannedFor && p.plannedFor >= todayIso())
    .sort((a, b) => (a.plannedFor! < b.plannedFor! ? -1 : 1));
  const next = upcoming[0];
  if (!next?.plannedFor) return fallback;
  const days = daysUntil(next.plannedFor);
  return {
    type: 'countdown',
    title: next.title,
    line1: days <= 0 ? 'Today!' : `${days} day${days === 1 ? '' : 's'} to go`,
    line2: formatPlanDate(next.plannedFor),
    updatedAt: Date.now(),
    targetDate: next.plannedFor,
  };
}

async function buildSparkPayload(): Promise<WidgetPayload> {
  const fallback: WidgetPayload = {
    type: 'spark',
    title: 'Daily Spark',
    line1: 'Open the app for today\u2019s question',
    updatedAt: Date.now(),
  };
  const spark = await getTodaySpark();
  if (spark.error || !spark.data) return fallback;
  return {
    type: 'spark',
    title: 'Daily Spark',
    line1: spark.data.question_text,
    line2: 'Answer it together in the app',
    updatedAt: Date.now(),
  };
}

async function buildDrawPayload(): Promise<WidgetPayload> {
  return {
    type: 'draw',
    title: 'Draw together',
    line1: 'Sketch something sweet',
    line2: 'Tap to open the canvas',
    updatedAt: Date.now(),
  };
}

async function buildDistancePayload(): Promise<WidgetPayload> {  const fallback: WidgetPayload = {
    type: 'distance',
    title: 'Distance',
    line1: 'Location not shared',
    line2: 'Turn on sharing in the Distance tab',
    updatedAt: Date.now(),
  };
  const [partner, partnerLoc, mine, unit] = await Promise.all([
    getPartner(),
    getPartnerLocation(),
    getMyPosition(),
    getUnitPreference(),
  ]);
  if (partnerLoc.error || !partnerLoc.data || mine.error || !mine.data) return fallback;
  const km = haversineKm(mine.data, {
    lat: partnerLoc.data.lat,
    lng: partnerLoc.data.lng,
  });
  const name = partner.data?.name ?? 'Partner';
  const staleness = getStaleness(partnerLoc.data.updatedAt);
  const stalenessLabel =
    staleness === 'live' ? 'updated just now' : staleness === 'recent' ? 'updated recently' : 'may be outdated';
  return {
    type: 'distance',
    title: `${name}`,
    line1: formatDistance(km, unit),
    line2: stalenessLabel,
    updatedAt: Date.now(),
  };
}

/**
 * Re-render installed widgets from the user's saved widget choice.
 * Call after anything the widget shows changes (new plan date, spark
 * answered, location update) and from the widget settings screen.
 */
export async function refreshWidgets(): Promise<PairResult<null>> {
  const saved = await getWidgetConfig();
  const type: WidgetType = saved.data?.widgetType ?? 'countdown';
  let payload: WidgetPayload;
  if (type === 'spark') payload = await buildSparkPayload();
  else if (type === 'distance') payload = await buildDistancePayload();
  else if (type === 'draw') payload = await buildDrawPayload();
  else payload = await buildCountdownPayload();
  return setWidgetData(payload);
}
