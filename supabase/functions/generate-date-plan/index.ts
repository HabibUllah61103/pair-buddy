// Pair Buddy generate-date-plan edge function.
//
// POST { mood?, budget?, location?, occasion?, preferences? } with the
// caller's Supabase JWT in the Authorization header. The function verifies
// the caller, checks their rate limit, then asks Mistral for one date idea
// tailored to the inputs and returns it as structured JSON for the app to
// display and save.
//
// Rate limit: 10 successful generations per user per rolling 24 hours,
// tracked in the ai_generations table (written with the service role; the
// client has no write policy on that table).
//
// The Mistral key lives server-side only, in the function's secrets:
//   Dashboard -> Edge Functions -> Manage secrets -> New secret
//   Name: MISTRAL_API_KEY
// or:  supabase secrets set MISTRAL_API_KEY=<key>
//
// Deploy:  supabase functions deploy generate-date-plan
// Secrets: SUPABASE_URL, SUPABASE_ANON_KEY, SUPABASE_SERVICE_ROLE_KEY,
//          MISTRAL_API_KEY

import { createClient } from "https://esm.sh/@supabase/supabase-js@2.44.4";

const MISTRAL_URL = "https://api.mistral.ai/v1/chat/completions";
const MISTRAL_MODEL = "mistral-small-latest";

// Successful generations allowed per user per rolling 24 hours.
const DAILY_GENERATION_LIMIT = 10;
const WINDOW_MS = 24 * 60 * 60 * 1000;

const VALID_CATEGORIES = ["food", "outdoors", "culture", "home", "adventure"] as const;

type PlannerInput = {
  mood?: string;
  budget?: string;
  location?: string;
  occasion?: string;
  preferences?: string;
};

type AiPlan = {
  title: string;
  description: string;
  category: string | null;
  estimated_cost: string;
  tips: string[];
};

const corsHeaders = {
  "Access-Control-Allow-Origin": "*",
  "Access-Control-Allow-Headers": "authorization, x-client-info, apikey, content-type",
  "Access-Control-Allow-Methods": "POST, OPTIONS",
};

function json(status: number, payload: unknown): Response {
  return new Response(JSON.stringify(payload), {
    status,
    headers: { "Content-Type": "application/json", ...corsHeaders },
  });
}

const SYSTEM_PROMPT = `You are a date-night planner for couples. Given the user's inputs, suggest exactly ONE date idea.

Respond with STRICT JSON only — no markdown fences, no commentary, no extra text. The JSON must have exactly these fields:
{
  "title": "short catchy name for the date",
  "description": "2-3 sentences describing the date, concrete and doable",
  "category": "one of: food, outdoors, culture, home, adventure",
  "estimated_cost": "a short cost hint like 'Free', 'Under $20', or '$30-60'",
  "tips": ["one practical tip", "another practical tip"]
}

Rules:
- Keep it family-friendly and realistic for an ordinary couple.
- Respect the budget: if it says free, the idea must cost nothing.
- Respect the mood and occasion if given.
- If a location is given, tailor the idea to that place; otherwise keep it location-neutral.
- tips must be an array of 2-3 short strings.`;

function buildUserMessage(input: PlannerInput): string {
  const parts: string[] = [];
  if (input.mood) parts.push(`Mood: ${input.mood}`);
  if (input.budget) parts.push(`Budget: ${input.budget}`);
  if (input.location) parts.push(`Location: ${input.location}`);
  if (input.occasion) parts.push(`Occasion: ${input.occasion}`);
  if (input.preferences) parts.push(`Preferences: ${input.preferences}`);
  if (parts.length === 0) parts.push("Surprise us with something nice.");
  return parts.join("\n");
}

/** Strip markdown fences and stray prose so we can parse the model's JSON. */
function extractJson(raw: string): string {
  let text = raw.trim();
  const fence = text.match(/```(?:json)?\s*([\s\S]*?)```/i);
  if (fence) text = fence[1].trim();
  const start = text.indexOf("{");
  const end = text.lastIndexOf("}");
  if (start !== -1 && end !== -1 && end > start) text = text.slice(start, end + 1);
  return text;
}

function validatePlan(value: unknown): AiPlan | null {
  if (typeof value !== "object" || value === null) return null;
  const v = value as Record<string, unknown>;
  if (typeof v.title !== "string" || !v.title.trim()) return null;
  if (typeof v.description !== "string" || !v.description.trim()) return null;
  const category =
    typeof v.category === "string" && (VALID_CATEGORIES as readonly string[]).includes(v.category)
      ? v.category
      : null;
  const tips = Array.isArray(v.tips)
    ? v.tips.filter((t): t is string => typeof t === "string" && t.trim().length > 0).slice(0, 4)
    : [];
  return {
    title: v.title.trim(),
    description: v.description.trim(),
    category,
    estimated_cost: typeof v.estimated_cost === "string" ? v.estimated_cost.trim() : "",
    tips,
  };
}

Deno.serve(async (req: Request): Promise<Response> => {
  if (req.method === "OPTIONS") {
    return new Response("ok", { headers: corsHeaders });
  }
  if (req.method !== "POST") {
    return json(405, { error: "method not allowed" });
  }

  const supabaseUrl = Deno.env.get("SUPABASE_URL");
  const anonKey = Deno.env.get("SUPABASE_ANON_KEY");
  const serviceKey = Deno.env.get("SUPABASE_SERVICE_ROLE_KEY");
  if (!supabaseUrl || !anonKey || !serviceKey) {
    return json(500, { error: "server not configured" });
  }

  // Verify the caller's JWT so the function cannot be used anonymously.
  const authHeader = req.headers.get("Authorization") ?? "";
  const userClient = createClient(supabaseUrl, anonKey, {
    global: { headers: { Authorization: authHeader } },
  });
  const {
    data: { user },
    error: userError,
  } = await userClient.auth.getUser();
  if (userError || !user) {
    return json(401, { error: "unauthorized" });
  }

  // Rate limit: count this user's successful generations in the last 24h.
  // The service-role client bypasses RLS, which clients cannot write through.
  const adminClient = createClient(supabaseUrl, serviceKey);
  const windowStart = new Date(Date.now() - WINDOW_MS).toISOString();
  const { count, error: countError } = await adminClient
    .from("ai_generations")
    .select("id", { count: "exact", head: true })
    .eq("user_id", user.id)
    .gt("created_at", windowStart);
  if (countError) {
    console.error("rate limit check failed", countError.message);
    return json(500, { error: "server error" });
  }
  if ((count ?? 0) >= DAILY_GENERATION_LIMIT) {
    // Tell the client when the oldest counted generation leaves the window
    // so the app can show a useful "try again" time.
    const { data: oldest } = await adminClient
      .from("ai_generations")
      .select("created_at")
      .eq("user_id", user.id)
      .gt("created_at", windowStart)
      .order("created_at", { ascending: true })
      .limit(1)
      .maybeSingle();
    const retryAfter = oldest
      ? Math.max(
          0,
          Math.ceil(
            (new Date(oldest.created_at as string).getTime() + WINDOW_MS - Date.now()) / 1000
          )
        )
      : Math.ceil(WINDOW_MS / 1000);
    return json(429, { error: "rate_limited", retry_after: retryAfter });
  }

  let input: PlannerInput;
  try {
    input = (await req.json()) as PlannerInput;
  } catch {
    return json(400, { error: "invalid json body" });
  }

  const mistralKey = Deno.env.get("MISTRAL_API_KEY");
  if (!mistralKey) {
    return json(503, { error: "ai_not_configured" });
  }

  let plan: AiPlan | null = null;
  try {
    const res = await fetch(MISTRAL_URL, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer ${mistralKey}`,
      },
      body: JSON.stringify({
        model: MISTRAL_MODEL,
        messages: [
          { role: "system", content: SYSTEM_PROMPT },
          { role: "user", content: buildUserMessage(input) },
        ],
        response_format: { type: "json_object" },
        temperature: 0.8,
        max_tokens: 600,
      }),
    });
    if (!res.ok) {
      const detail = (await res.text()).slice(0, 200);
      // Never log the key; the detail carries only the API error message.
      console.error("mistral request failed", res.status, detail);
      return json(502, { error: "ai_provider_error" });
    }
    const body = (await res.json()) as {
      choices?: Array<{ message?: { content?: string } }>;
    };
    const content = body.choices?.[0]?.message?.content ?? "";
    plan = validatePlan(JSON.parse(extractJson(content)));
  } catch (e) {
    console.error("mistral call failed", e instanceof Error ? e.message : e);
    return json(502, { error: "ai_provider_error" });
  }

  if (!plan) {
    return json(502, { error: "ai_bad_response" });
  }

  // Log the generation AFTER a successful Mistral response, so failed
  // generations (provider errors, bad JSON) do not burn the user's quota.
  const { error: logError } = await adminClient.from("ai_generations").insert({
    user_id: user.id,
  });
  if (logError) {
    // Non-fatal: the plan was already generated, so still return it.
    console.error("failed to log ai generation", logError.message);
  }
  return json(200, { plan });
});
