import type { SupabaseClient } from '@supabase/supabase-js';
import * as Notifications from 'expo-notifications';
import { router } from 'expo-router';
import { getMyCoupleId, NOT_CONFIGURED, type PairResult } from './pairing';

// Metro/Babel resolve this at runtime; declared here for TypeScript.
declare function require(name: string): any;

/**
 * Push notifications via Expo push tokens + the send-push edge function.
 *
 * Flow: initPush() (once per sign-in) -> permission prompt -> token saved to
 * push_tokens. notifyPartner() calls the edge function, which verifies the
 * caller's JWT, finds the partner's token, and delivers through Expo's API.
 *
 * Release note: getExpoPushTokenAsync needs the EAS project id. Add it under
 * expo.extra.eas.projectId in app.json during release setup (see docs/PUSH.md);
 * until then registration degrades to a clear error instead of crashing.
 * See docs/PUSH.md.
 */

let cachedClient: SupabaseClient | null | undefined;

/**
 * Lazy Supabase access — never throws at import time when unconfigured.
 * Every public function degrades to a clear error instead.
 */
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

async function getUserId(client: SupabaseClient): Promise<string | null> {
  try {
    const { data } = await client.auth.getUser();
    return data.user?.id ?? null;
  } catch {
    return null;
  }
}

/**
 * Configure how notifications behave while the app is in the foreground.
 * Safe to call multiple times.
 */
export function setupForegroundHandler(): void {
  try {
    Notifications.setNotificationHandler({
      handleNotification: async () => ({
        shouldShowBanner: true,
        shouldShowList: true,
        shouldPlaySound: true,
        shouldSetBadge: false,
      }),
    });
  } catch {
    // Native module unavailable (e.g. web preview) — notifications just skip.
  }
}

/**
 * Register this device's Expo push token in push_tokens (upsert).
 * Prompts for permission first; everything degrades gracefully.
 */
export async function registerPushToken(): Promise<PairResult<string>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  const userId = await getUserId(client);
  if (!userId) return { data: null, error: 'Not signed in.' };

  try {
    const existing = await Notifications.getPermissionsAsync();
    const granted =
      existing.granted ||
      (await Notifications.requestPermissionsAsync()).granted;
    if (!granted) {
      return { data: null, error: 'Push permission was not granted.' };
    }

    // Requires expo.extra.eas.projectId in app.json (release setup).
    const token = (await Notifications.getExpoPushTokenAsync()).data;
    const { error } = await client
      .from('push_tokens')
      .upsert(
        { user_id: userId, expo_push_token: token, updated_at: new Date().toISOString() },
        { onConflict: 'user_id' },
      );
    if (error) return { data: null, error: error.message };
    return { data: token, error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not register push token.') };
  }
}

/** Remove this user's push token row (call on sign-out). */
export async function unregisterPushToken(): Promise<PairResult<null>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  const userId = await getUserId(client);
  if (!userId) return { data: null, error: 'Not signed in.' };
  try {
    const { error } = await client.from('push_tokens').delete().eq('user_id', userId);
    if (error) return { data: null, error: error.message };
    return { data: null, error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not remove push token.') };
  }
}

/**
 * Ask the send-push edge function to notify the partner.
 * The function verifies our JWT and looks up the partner's token itself;
 * the client never sees the partner's token.
 */
export async function notifyPartner(input: {
  title: string;
  body: string;
  data?: Record<string, unknown>;
}): Promise<PairResult<boolean>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  const couple = await getMyCoupleId();
  if (couple.error || !couple.data) {
    return { data: null, error: couple.error ?? 'No couple found.' };
  }
  try {
    const { data, error } = await client.functions.invoke('send-push', {
      body: {
        couple_id: couple.data,
        title: input.title,
        body: input.body,
        data: input.data ?? {},
      },
    });
    if (error) return { data: null, error: error.message };
    return { data: data?.sent === true, error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not send the notification.') };
  }
}

let initialized = false;

/**
 * One-time push setup for a signed-in session: foreground handler,
 * token registration, and tap-to-open routing (data.url -> router.push).
 * Safe to call on every auth state change; only the first call acts.
 */
export function initPush(): void {
  if (initialized) return;
  initialized = true;

  setupForegroundHandler();

  try {
    Notifications.addNotificationResponseReceivedListener((response) => {
      const url = response.notification.request.content.data?.url;
      if (typeof url === 'string' && url.length > 0) {
        try {
          router.push(url as never);
        } catch {
          // Route unknown — ignore.
        }
      }
    });
  } catch {
    // Native module unavailable — skip listeners.
  }

  registerPushToken().catch(() => {
    // Registration failure is non-fatal; the app works without push.
  });
}

/** Reset init state (used on sign-out so the next sign-in re-registers). */
export function resetPushInit(): void {
  initialized = false;
}
