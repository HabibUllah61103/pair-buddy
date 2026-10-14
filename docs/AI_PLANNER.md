# AI Date Planner

One-tap date ideas from Mistral AI, saved into the same `date_plans` table as
the curated idea bank (PR #13). The AI is an upgrade path, not a separate
system: generated plans behave exactly like manually saved ones.

## Architecture

```
app/app/date-ai.tsx          form (mood, budget, location, occasion)
  -> app/src/lib/ai-dates.ts  generateDatePlan() / saveAiPlan()
  -> supabase/functions/generate-date-plan (Deno edge function)
  -> https://api.mistral.ai/v1/chat/completions (mistral-small-latest)
  -> date_plans (via createPlan from src/lib/dates.ts)
```

The Mistral API key lives **server-side only**, in the edge function's
secrets. The client never sees it: `generateDatePlan()` calls the function
through `supabase.functions.invoke()` with the user's JWT, and the function
makes the Mistral call.

## Rate limiting

Each user gets **10 successful generations per rolling 24 hours**. The
function counts rows in the `ai_generations` table
(`supabase/migrations/20261014000008_ai_usage.sql`) for that user with
`created_at` inside the last 24 hours, using the service-role client.

- Only clients with a valid JWT can call the function, so anonymous traffic
  cannot burn the Mistral key.
- Clients cannot write to `ai_generations` (no insert/update/delete RLS
  policies), so usage cannot be forged or erased from the app.
- The usage row is written **after** a successful Mistral response, so
  failed generations (provider errors, bad JSON) do not burn quota.
- When the limit is hit, the function answers
  `429 { error: "rate_limited", retry_after: <seconds> }`, where
  `retry_after` is when the oldest counted generation leaves the 24-hour
  window. The app should surface a "try again in X" message.

## Turning it on

The function degrades gracefully: if `MISTRAL_API_KEY` is not set, it answers
`503 { error: "ai_not_configured" }` and the app shows a friendly message
instead of a generated date.

Add the key in the Supabase dashboard:

1. Open the project in the Supabase dashboard.
2. Go to **Edge Functions** in the left sidebar.
3. Open **Manage secrets** (the "Secrets" tab on the functions page).
4. Click **New secret**, name it `MISTRAL_API_KEY`, paste the key, save.

Or from the CLI:

```
supabase secrets set MISTRAL_API_KEY=<your-key>
```

Get a key at https://console.mistral.ai (API keys section). The free tier is
enough for casual use.

Deploy the function (required after every change to `index.ts`, including
the rate-limiting update):

```
supabase functions deploy generate-date-plan
```

Apply the usage table migration before the first deploy that needs it:

```
supabase db push   # applies supabase/migrations/20261014000008_ai_usage.sql
```

## Prompt design

The system prompt (in `index.ts`) constrains the model to return strict JSON
only: `{ title, description, category, estimated_cost, tips[] }`. It also
asks for `response_format: { type: "json_object" }` on the request.

The response is parsed tolerantly (markdown fences stripped) and validated:
`title` and `description` are required non-empty strings; `category` must be
one of `food | outdoors | culture | home | adventure` or it becomes `null`;
`tips` is coerced to a string array. Anything unusable returns a 502 and the
app asks the user to try again.

## Graceful degradation

| Situation | Function response | App behavior |
|---|---|---|
| No key configured | 503 `ai_not_configured` | Friendly "not set up yet" message |
| Bad/expired JWT | 401 `unauthorized` | Generic failure message |
| Rate limit hit | 429 `rate_limited` + `retry_after` | "Daily limit reached, try again in X" |
| Mistral API error | 502 `ai_provider_error` | "Could not generate" message |
| Model returns bad JSON | 502 `ai_bad_response` | "Try again" message |

Only signed-in users can call the function (JWT verified with the anon
client), so the key cannot be burned by anonymous traffic.

## Cost note

`mistral-small-latest` is Mistral's cheap general-purpose model; a single
short plan costs a fraction of a cent. Temperature 0.8 and a 600-token cap
keep responses varied but short. The 10/day/user rate limit caps worst-case
spend at a few cents per user per day.
