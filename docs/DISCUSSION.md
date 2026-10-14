# Discussion chat

A simple realtime chat for the couple, reached from More > Discussion.

## Schema

`supabase/migrations/20261014000005_discussion.sql` creates `discussion_messages`:

- `id` uuid pk
- `couple_id` uuid, references couples (cascade)
- `sender_id` uuid, references profiles (cascade)
- `body` text
- `read_by` uuid[], default `'{}'` — uids that have seen the message
- `created_at` timestamptz

RLS follows the repo pattern: couple members read, members insert with
`sender_id = auth.uid()`, either member may update (read receipts only —
the client never rewrites `body`), senders delete their own messages.

A composite index on `(couple_id, created_at desc)` backs the paged read.

## Realtime

Run once per project:

```sql
alter publication supabase_realtime add table public.discussion_messages;
```

Without it, `subscribeMessages` degrades quietly and the screen only
refreshes on mount.

## Read receipts

`markRead(messages)` appends the reader's uid to `read_by` for the
partner's messages that do not already list it. It runs after the initial
load and on every realtime insert, as a best-effort background call —
it never blocks sending or rendering.

The UI shows "Seen" under the newest message I sent when the partner's
uid appears in its `read_by`. Only the non-sender marks a row read, so
the two partners touch disjoint row sets and concurrent appends do not
clobber each other.

## Limits

`getMessages` reads the newest 100 messages. History beyond that is kept
in the table but not paged in this version — pagination is a follow-up.
