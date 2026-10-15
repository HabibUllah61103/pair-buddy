/**
 * App-wide presence provider: shows the user as "online" whenever the app
 * is open and in the foreground (WhatsApp-style), on any screen.
 *
 * Single-owner design: this provider is the ONLY subscriber to the couple's
 * presence channel. `client.channel(topic)` reuses an existing channel for
 * the same topic, so two independent subscriptions (e.g. one here and one in
 * the Discussion screen) would share a single channel instance and one
 * screen's unmount cleanup would kill the other's tracking. Screens that need
 * presence state consume `usePresence()` instead of subscribing themselves.
 *
 * Tracking rules:
 * - Track only when the user is authenticated AND the app is in the
 *   foreground (`AppState === 'active'`).
 * - Stop tracking (channel removed -> partner sees a `leave`) when the app
 *   goes to the background, or on logout.
 * - Re-track when the app returns to the foreground.
 */

import {
  createContext,
  useContext,
  useEffect,
  useMemo,
  useState,
} from 'react';
import type { ReactNode } from 'react';
import { AppState } from 'react-native';
import type { AppStateStatus } from 'react-native';
import { useAuth } from './auth';
import { subscribePresence } from './discussion';

type PresenceContextValue = {
  /** User ids currently tracked as online on the couple's presence channel. */
  onlineIds: string[];
};

const PresenceContext = createContext<PresenceContextValue>({ onlineIds: [] });

/** Read the app-wide presence state. Must be used inside <PresenceProvider>. */
export function usePresence(): PresenceContextValue {
  return useContext(PresenceContext);
}

export function PresenceProvider({ children }: { children: ReactNode }) {
  const { session } = useAuth();
  const [onlineIds, setOnlineIds] = useState<string[]>([]);
  const [appState, setAppState] = useState<AppStateStatus>(
    AppState.currentState,
  );

  useEffect(() => {
    const sub = AppState.addEventListener('change', setAppState);
    return () => sub.remove();
  }, []);

  // Track only while signed in and the app is in the foreground.
  const shouldTrack = !!session && appState === 'active';

  useEffect(() => {
    if (!shouldTrack) {
      // Don't show a stale "partner online" list while we're not tracking:
      // any leave events we missed while backgrounded are resolved by the
      // fresh sync on re-subscribe.
      setOnlineIds([]);
      return;
    }
    let cancelled = false;
    let unsubscribe: (() => void) | null = null;
    void subscribePresence((ids) => {
      if (!cancelled) setOnlineIds(ids);
    }).then((res) => {
      if (cancelled) {
        // Effect already cleaned up (e.g. rapid background/foreground):
        // tear down the just-created subscription immediately.
        res.data?.();
        return;
      }
      if (res.data) {
        unsubscribe = res.data;
      } else {
        setOnlineIds([]);
      }
    });
    return () => {
      cancelled = true;
      unsubscribe?.();
      setOnlineIds([]);
    };
  }, [shouldTrack]);

  const value = useMemo<PresenceContextValue>(
    () => ({ onlineIds }),
    [onlineIds],
  );

  return (
    <PresenceContext.Provider value={value}>
      {children}
    </PresenceContext.Provider>
  );
}
