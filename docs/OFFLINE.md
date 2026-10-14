# Offline sync

Pair Buddy works offline for writes. When a write fails because the device
has no connection, the operation is queued on the device and replayed
automatically when connectivity returns.

## Design: outbox, not CRDT

Full two-way sync (conflict-free replicated data types, delta sync) is
overkill for a two-person app. Instead, `src/lib/offline.ts` implements a
simple FIFO **outbox queue** in AsyncStorage:

1. A lib write fails with a network error.
2. `runOrQueue(kind, payload, fn)` stores the op (`{ kind, payload, attempts }`).
3. `processOutbox()` replays queued ops in order when the device is back
   online (NetInfo listener), when the app returns to the foreground
   (AppState), at startup, or on manual "Retry now".
4. `src/lib/sync.ts` (`initSync()`) wires those triggers; it is started once
   from the root layout.

## Which ops are queued

Queued (idempotent writes — safe to replay):

- `discussion-send` — chat message (`sendMessage`)
- `spark-answer` — daily spark answer (`answerSpark`, upsert on
  `spark_id,user_id`)
- `quiz-answer` — quiz answer (`answerQuizQuestion`, upsert on
  `couple_id,quiz_id,user_id`)
- `plan-create` — date plan (`createPlan`)

Reserved kinds with no handler yet (`memory-meta`, `drawing-save`,
`location-stop`) stay queued until a handler is registered via
`ensureHandlers()` in `offline.ts`.

## Not queued

- **Reads.** A failed read just shows an error/empty state; there is nothing
  to replay.
- **Large media uploads** (memory photos). Retrying multi-megabyte uploads
  blindly wastes data; the add-memory flow surfaces the failure and the user
  retries explicitly.
- **Location streaming.** Location is ephemeral by design — the row is
  deleted when sharing stops, so replaying a stale position would be wrong.
- **Validation / server errors.** Only transport-level failures
  (`isNetworkError`: `TypeError: Network request failed`, offline, timeouts,
  DNS) are queued. A 400/409 or a validation message returns to the user
  immediately.

## Retry and backoff

- Each replay increments `attempts`. Network failures stay queued with
  exponential backoff: 1 min, 2 min, 4 min ... capped at 15 minutes
  (`nextRetryAt`).
- After `MAX_ATTEMPTS` (5), the op is kept but no longer auto-retried; the
  More tab shows it under "Pending sync" with **Retry now** (resets attempts
  and ignores backoff) and **Discard failed changes**.
- Non-network failures during replay are dropped — replaying would fail the
  same way.

## Conflict policy

Last-write-wins per op, server timestamps authoritative. Spark and quiz
answers are upserts keyed on `(spark_id, user_id)` /
`(couple_id, quiz_id, user_id)`, so a replayed answer simply overwrites.
Discussion messages and date plans are independent inserts, so replay cannot
clobber the partner's data.

## Adopting `runOrQueue` in a screen

```ts
import { runOrQueue } from '../src/lib/offline';

// before
const r = await sendMessage(body);
// after
const r = await runOrQueue('discussion-send', { body }, () => sendMessage(body));
if (r.queued) {
  // r.error is OFFLINE_QUEUED: tell the user it will send later
}
```

The four handlers above are wired; screens adopt `runOrQueue` per write path.

## Testing

1. Open the app signed in, turn on airplane mode.
2. Perform a queued write through `runOrQueue` (e.g. send a chat message).
3. Confirm the "Saved on this device" notice and the Pending sync badge in
   the More tab.
4. Turn airplane mode off: the op replays within seconds and the badge
   clears. Or tap **Retry now** while still offline and confirm the count
   does not change.
