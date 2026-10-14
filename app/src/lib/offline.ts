// Pair Buddy offline outbox: queue failed writes, retry when back online.
//
// Design: a simple FIFO outbox in AsyncStorage, not full CRDT sync. When a
// lib write fails with a network error, the op is queued (via runOrQueue)
// and replayed later when connectivity returns (see sync.ts) or on manual
// retry. Only idempotent writes are queued: every handler below maps to an
// upsert or an insert of an independent row, so replaying twice is safe.

import type { PairResult } from './pairing';

declare function require(name: string): any;

export type OutboxKind =
  | 'spark-answer'
  | 'quiz-answer'
  | 'discussion-send'
  | 'memory-meta'
  | 'plan-create'
  | 'drawing-save'
  | 'location-stop';

export type OutboxOp = {
  id: string;
  kind: OutboxKind;
  payload: Record<string, unknown>;
  attempts: number;
  createdAt: number; // epoch ms
  nextRetryAt: number | null; // epoch ms; null = retry whenever
  lastError: string | null;
};

export const MAX_ATTEMPTS = 5;
export const OFFLINE_QUEUED =
  'You are offline. Saved on this device and will send when you reconnect.';

const STORAGE_KEY = '@pairbuddy/outbox/v1';
const BASE_BACKOFF_MS = 60_000; // 1 minute, doubling per attempt
const MAX_BACKOFF_MS = 15 * 60_000; // 15 minutes

function getStorage() {
  return require('@react-native-async-storage/async-storage').default as {
    getItem(key: string): Promise<string | null>;
    setItem(key: string, value: string): Promise<void>;
  };
}

async function readOps(): Promise<OutboxOp[]> {
  try {
    const raw = await getStorage().getItem(STORAGE_KEY);
    if (!raw) return [];
    const parsed = JSON.parse(raw) as OutboxOp[];
    return Array.isArray(parsed) ? parsed : [];
  } catch {
    return [];
  }
}

async function writeOps(ops: OutboxOp[]): Promise<void> {
  await getStorage().setItem(STORAGE_KEY, JSON.stringify(ops));
}

/**
 * True for transport-level failures (the device is offline, the request
 * never reached Supabase). Server/validation errors are NOT network errors
 * and must surface to the user immediately instead of being queued.
 *
 * Accepts the raw thrown value or the error string that lib functions return.
 */
export function isNetworkError(err: unknown): boolean {
  if (!err) return false;
  // In React Native, fetch failures surface as TypeError ("Network request
  // failed"). Treat any TypeError from a network call as a network error.
  if (err instanceof TypeError) return true;
  const message =
    typeof err === 'string'
      ? err
      : String((err as { message?: unknown }).message ?? '');
  return /network request failed|failed to fetch|networkerror|offline|econn|etimedout|enotfound|enobufs|socket|request timeout|timed out/i.test(
    message,
  );
}

export async function enqueue(
  kind: OutboxKind,
  payload: Record<string, unknown>,
): Promise<PairResult<OutboxOp>> {
  try {
    const ops = await readOps();
    const op: OutboxOp = {
      id: `${Date.now()}-${Math.random().toString(36).slice(2)}`,
      kind,
      payload,
      attempts: 0,
      createdAt: Date.now(),
      nextRetryAt: null,
      lastError: null,
    };
    ops.push(op);
    await writeOps(ops);
    return { data: op, error: null };
  } catch {
    return { data: null, error: 'Could not save this for later.' };
  }
}

export async function dequeue(id: string): Promise<void> {
  const ops = await readOps();
  await writeOps(ops.filter((o) => o.id !== id));
}

export async function listPending(): Promise<OutboxOp[]> {
  const ops = await readOps();
  return ops.sort((a, b) => a.createdAt - b.createdAt);
}

/**
 * Run a write; if it fails with a network error, queue it for later instead
 * of losing it. Returns { queued: true } when the op was stored in the
 * outbox. Non-network errors are returned untouched.
 *
 * Adoption: replace `const r = await sendMessage(body)` with
 * `const r = await runOrQueue('discussion-send', { body }, () => sendMessage(body))`.
 */
export async function runOrQueue<T>(
  kind: OutboxKind,
  payload: Record<string, unknown>,
  fn: () => Promise<PairResult<T>>,
): Promise<PairResult<T> & { queued: boolean }> {
  const r = await fn();
  if (!r.error) return { data: r.data, error: null, queued: false };
  if (!isNetworkError(r.error)) return { data: null, error: r.error, queued: false };
  const q = await enqueue(kind, payload);
  if (q.error || !q.data) return { data: null, error: r.error, queued: false };
  return { data: null, error: OFFLINE_QUEUED, queued: true };
}

type OutboxHandler = (payload: Record<string, unknown>) => Promise<PairResult<unknown>>;

const handlers = new Map<OutboxKind, OutboxHandler>();
let handlersReady = false;

/**
 * Wire each queued kind to its lib write. Lazy-required so importing
 * offline.ts never pulls the network stack (or creates import cycles) until
 * a replay actually runs.
 */
function ensureHandlers(): void {
  if (handlersReady) return;
  handlersReady = true;
  const { sendMessage } = require('./discussion') as typeof import('./discussion');
  const { answerSpark } = require('./sparks') as typeof import('./sparks');
  const { answerQuizQuestion } = require('./quiz') as typeof import('./quiz');
  const { createPlan } = require('./dates') as typeof import('./dates');
  handlers.set('discussion-send', (p) => sendMessage(String(p.body ?? '')));
  handlers.set('spark-answer', (p) =>
    answerSpark(
      String(p.sparkId ?? ''),
      String(p.answerText ?? ''),
      p.guessPartnerAnswer == null ? undefined : String(p.guessPartnerAnswer),
    ),
  );
  handlers.set('quiz-answer', (p) =>
    answerQuizQuestion(String(p.quizId ?? ''), String(p.answerText ?? '')),
  );
  handlers.set('plan-create', (p) =>
    createPlan(p.plan as Parameters<typeof createPlan>[0]),
  );
  // 'memory-meta', 'drawing-save', 'location-stop' are reserved kinds for
  // future handlers; ops of those kinds stay queued until one is registered.
}

function backoffFor(attempts: number): number {
  return Math.min(BASE_BACKOFF_MS * 2 ** Math.max(0, attempts - 1), MAX_BACKOFF_MS);
}

export type OutboxReport = {
  processed: number;
  failed: number; // permanent (non-network) failures; dropped
  remaining: number; // still queued (backing off, unhandled, or out of attempts)
};

/**
 * Replay queued ops in FIFO order. Network failures stay queued with
 * exponential backoff; ops past MAX_ATTEMPTS are kept for manual retry;
 * non-network failures are dropped (replaying would fail the same way).
 * With force=true, backoff timers are ignored (manual "Retry now").
 */
export async function processOutbox(
  opts: { force?: boolean } = {},
): Promise<OutboxReport> {
  ensureHandlers();
  const now = Date.now();
  const remaining: OutboxOp[] = [];
  let processed = 0;
  let failed = 0;

  for (const op of await readOps()) {
    if (op.attempts >= MAX_ATTEMPTS) {
      remaining.push(op); // kept for manual retry; see retryFailed()
      continue;
    }
    if (!opts.force && op.nextRetryAt != null && op.nextRetryAt > now) {
      remaining.push(op);
      continue;
    }
    const handler = handlers.get(op.kind);
    if (!handler) {
      remaining.push(op); // no handler registered yet; keep
      continue;
    }
    op.attempts += 1;
    try {
      const r = await handler(op.payload);
      if (!r.error) {
        processed += 1;
      } else if (isNetworkError(r.error)) {
        op.lastError = r.error;
        op.nextRetryAt = now + backoffFor(op.attempts);
        remaining.push(op);
      } else {
        failed += 1; // permanent: drop it
      }
    } catch (e) {
      op.lastError = e instanceof Error ? e.message : 'Network error';
      op.nextRetryAt = now + backoffFor(op.attempts);
      remaining.push(op);
    }
  }

  try {
    await writeOps(remaining);
  } catch {
    // Storage write failed; report against what we computed.
  }
  return { processed, failed, remaining: remaining.length };
}

/**
 * Manual retry: reset attempts/backoff on exhausted ops and run everything.
 */
export async function retryFailed(): Promise<OutboxReport> {
  const ops = await readOps();
  const reset = ops.map((o) =>
    o.attempts >= MAX_ATTEMPTS
      ? { ...o, attempts: 0, nextRetryAt: null, lastError: null }
      : o,
  );
  try {
    await writeOps(reset);
  } catch {
    // fall through; processOutbox reads fresh anyway
  }
  return processOutbox({ force: true });
}

/** Drop ops that exhausted their attempts. */
export async function clearFailed(): Promise<number> {
  const ops = await readOps();
  const kept = ops.filter((o) => o.attempts < MAX_ATTEMPTS);
  const dropped = ops.length - kept.length;
  try {
    await writeOps(kept);
  } catch {
    return 0;
  }
  return dropped;
}
