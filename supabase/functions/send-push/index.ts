// Pair Buddy send-push edge function.
//
// POST { couple_id, title, body, data? } with the caller's Supabase JWT in
// the Authorization header. The function verifies the caller, confirms they
// belong to the couple, looks up the partner's Expo push token, and delivers
// one push via the Expo push API.
//
// Deploy:  supabase functions deploy send-push
// Secrets: SUPABASE_URL, SUPABASE_ANON_KEY, SUPABASE_SERVICE_ROLE_KEY
//          (set with: supabase secrets set --env-file ./supabase/.env)

import { createClient } from "https://esm.sh/@supabase/supabase-js@2.44.4";

const EXPO_PUSH_URL = "https://exp.host/--/api/v2/push/send";

type PushRequest = {
  couple_id?: string;
  title?: string;
  body?: string;
  data?: Record<string, unknown>;
};

function json(status: number, payload: unknown): Response {
  return new Response(JSON.stringify(payload), {
    status,
    headers: { "Content-Type": "application/json" },
  });
}

Deno.serve(async (req: Request): Promise<Response> => {
  if (req.method !== "POST") {
    return json(405, { error: "method not allowed" });
  }

  const supabaseUrl = Deno.env.get("SUPABASE_URL");
  const anonKey = Deno.env.get("SUPABASE_ANON_KEY");
  const serviceKey = Deno.env.get("SUPABASE_SERVICE_ROLE_KEY");
  if (!supabaseUrl || !anonKey || !serviceKey) {
    return json(500, { error: "server not configured" });
  }

  let payload: PushRequest;
  try {
    payload = await req.json();
  } catch {
    return json(400, { error: "invalid json body" });
  }
  const { couple_id, title, body, data } = payload;
  if (!couple_id || !title || !body) {
    return json(400, { error: "couple_id, title and body are required" });
  }

  // Verify the caller's JWT with the anon client.
  const authHeader = req.headers.get("Authorization") ?? "";
  const userClient = createClient(supabaseUrl, anonKey, {
    global: { headers: { Authorization: authHeader } },
  });
  const {
    data: { user },
    error: userError,
  } = await userClient.auth.getUser();
  if (userError || !user) {
    return json(401, { error: "invalid or missing token" });
  }

  const db = createClient(supabaseUrl, serviceKey);

  // Confirm the caller belongs to this couple.
  const { data: membership, error: membershipError } = await db
    .from("couple_members")
    .select("user_id")
    .eq("couple_id", couple_id);
  if (membershipError) {
    return json(500, { error: "membership lookup failed" });
  }
  const memberIds = (membership ?? []).map((m) => m.user_id as string);
  if (!memberIds.includes(user.id)) {
    return json(403, { error: "not a member of this couple" });
  }
  const partnerId = memberIds.find((id) => id !== user.id);
  if (!partnerId) {
    return json(200, { sent: false, reason: "no partner yet" });
  }

  // Fetch the partner's current push token.
  const { data: tokenRow, error: tokenError } = await db
    .from("push_tokens")
    .select("expo_push_token")
    .eq("user_id", partnerId)
    .maybeSingle();
  if (tokenError) {
    return json(500, { error: "token lookup failed" });
  }
  if (!tokenRow?.expo_push_token) {
    return json(200, { sent: false, reason: "partner has no push token" });
  }

  // Deliver through the Expo push API.
  const expoRes = await fetch(EXPO_PUSH_URL, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({
      to: tokenRow.expo_push_token,
      title,
      body,
      data: data ?? {},
      sound: "default",
    }),
  });
  if (!expoRes.ok) {
    return json(502, { error: "expo push api rejected the request" });
  }
  const expoBody = await expoRes.json().catch(() => null);
  const ticket = Array.isArray(expoBody?.data) ? expoBody.data[0] : null;
  if (ticket?.status !== "ok") {
    return json(200, { sent: false, reason: ticket?.message ?? "expo error" });
  }

  return json(200, { sent: true });
});
