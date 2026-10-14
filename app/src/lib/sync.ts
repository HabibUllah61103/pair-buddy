// Pair Buddy sync wiring: replay the offline outbox when the device comes
// back online or the app returns to the foreground.

import { AppState } from 'react-native';
import { processOutbox, retryFailed, listPending, MAX_ATTEMPTS } from './offline';

declare function require(name: string): any;

let started = false;

/**
 * Subscribe to connectivity + foreground transitions. Safe to call more than
 * once; subsequent calls are no-ops. Never throws.
 */
export function initSync(): void {
  if (started) return;
  started = true;
  try {
    const NetInfo = require('@react-native-community/netinfo').default as {
      addEventListener(
        listener: (state: { isConnected: boolean | null }) => void,
      ): () => void;
    };
    // Fires immediately with the current state, so this also covers startup.
    NetInfo.addEventListener((state) => {
      if (state.isConnected) void processOutbox();
    });
  } catch {
    // NetInfo unavailable (e.g. web without the native module); AppState
    // listener below still retries on foreground.
  }
  AppState.addEventListener('change', (s) => {
    if (s === 'active') void processOutbox();
  });
  // In case ops were queued while the app was closed.
  void processOutbox();
}

/** Ops still waiting for a successful replay (excludes exhausted ones). */
export async function getPendingCount(): Promise<number> {
  try {
    const ops = await listPending();
    return ops.filter((o) => o.attempts < MAX_ATTEMPTS).length;
  } catch {
    return 0;
  }
}

/** Ops that exhausted their attempts and need manual attention. */
export async function getFailedCount(): Promise<number> {
  try {
    const ops = await listPending();
    return ops.filter((o) => o.attempts >= MAX_ATTEMPTS).length;
  } catch {
    return 0;
  }
}

/** Manual "Retry now": reset exhausted ops and replay everything, ignoring backoff. */
export function retryOutbox() {
  return retryFailed();
}

export { clearFailed } from './offline';
