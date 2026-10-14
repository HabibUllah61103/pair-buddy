import type { SupabaseClient } from '@supabase/supabase-js';
import { getMyCoupleId, NOT_CONFIGURED, type PairResult } from './pairing';

// Metro/Babel resolve this at runtime; declared here for TypeScript.
declare function require(name: string): any;

export const DATE_CATEGORIES = ['food', 'outdoors', 'culture', 'home', 'adventure'] as const;
export type DateCategory = (typeof DATE_CATEGORIES)[number];

export type DateIdea = {
  id: string;
  title: string;
  description: string;
  category: string;
};

export type DatePlan = {
  id: string;
  coupleId: string;
  title: string;
  description: string | null;
  category: string | null;
  plannedFor: string | null; // YYYY-MM-DD
  createdBy: string;
  createdAt: string;
};

export type NewPlan = {
  title: string;
  description?: string | null;
  category?: string | null;
  plannedFor?: string | null; // YYYY-MM-DD
};

export type PlanPatch = Partial<NewPlan>;

let cachedClient: SupabaseClient | null | undefined;

/** Lazy Supabase access — never throws at import time when unconfigured. */
function getClient(): SupabaseClient | null {
  if (cachedClient !== undefined) return cachedClient;
  try {
    cachedClient = require('./supabase').supabase ?? null;
  } catch {
    cachedClient = null;
  }
  return cachedClient;
}

function toMessage(e: unknown, fallback: string): string {
  if (e instanceof Error && e.message) return e.message;
  if (typeof e === 'string' && e.length > 0) return e;
  return fallback;
}

async function getUserId(client: SupabaseClient): Promise<string | null> {
  const { data } = await client.auth.getUser();
  return data.user?.id ?? null;
}

function toIdea(row: any): DateIdea {
  return {
    id: row.id,
    title: row.title,
    description: row.description,
    category: row.category,
  };
}

function toPlan(row: any): DatePlan {
  return {
    id: row.id,
    coupleId: row.couple_id,
    title: row.title,
    description: row.description ?? null,
    category: row.category ?? null,
    plannedFor: row.planned_for ?? null,
    createdBy: row.created_by,
    createdAt: row.created_at,
  };
}

/** The curated idea bank, optionally filtered by category. Client read-only. */
export async function getIdeas(category?: string | null): Promise<PairResult<DateIdea[]>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    let query = client.from('date_ideas').select('id, title, description, category').order('title');
    if (category) query = query.eq('category', category);
    const { data, error } = await query;
    if (error) throw error;
    return { data: (data ?? []).map(toIdea), error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not load date ideas.') };
  }
}

/** My couple's saved plans, soonest first; unscheduled plans last. */
export async function getPlans(): Promise<PairResult<DatePlan[]>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const couple = await getMyCoupleId();
    if (couple.error || !couple.data) {
      return { data: null, error: couple.error ?? 'No couple found for this account yet.' };
    }
    const { data, error } = await client
      .from('date_plans')
      .select('id, couple_id, title, description, category, planned_for, created_by, created_at')
      .eq('couple_id', couple.data)
      .order('planned_for', { ascending: true, nullsFirst: false })
      .order('created_at', { ascending: false });
    if (error) throw error;
    return { data: (data ?? []).map(toPlan), error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not load your date plans.') };
  }
}

/**
 * Save a new plan for my couple.
 * Direct write — used by the outbox replay. Callers should use
 * createPlan(), which queues this when offline.
 */
export async function createPlanRaw(plan: NewPlan): Promise<PairResult<DatePlan>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  const title = plan.title.trim();
  if (!title) return { data: null, error: 'Give your plan a title first.' };
  try {
    const uid = await getUserId(client);
    if (!uid) return { data: null, error: 'You are not signed in.' };
    const couple = await getMyCoupleId();
    if (couple.error || !couple.data) {
      return { data: null, error: couple.error ?? 'No couple found for this account yet.' };
    }
    const { data, error } = await client
      .from('date_plans')
      .insert({
        couple_id: couple.data,
        title,
        description: plan.description?.trim() || null,
        category: plan.category || null,
        planned_for: plan.plannedFor || null,
        created_by: uid,
      })
      .select('id, couple_id, title, description, category, planned_for, created_by, created_at')
      .single();
    if (error) throw error;
    return { data: toPlan(data), error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not save your plan.') };
  }
}

/**
 * Save a new plan for my couple.
 * When the device is offline the plan is queued on this device and saved
 * when you reconnect (see docs/OFFLINE.md): the result then carries
 * `queued: true` and a friendly `error` message, which screens already
 * display through their existing error paths.
 */
export async function createPlan(
  plan: NewPlan,
): Promise<PairResult<DatePlan> & { queued: boolean }> {
  const { runOrQueue } = require('./offline') as typeof import('./offline');
  return runOrQueue('plan-create', { plan }, () => createPlanRaw(plan));
}

/** Update a plan I created (RLS: authors only). */
export async function updatePlan(id: string, patch: PlanPatch): Promise<PairResult<DatePlan>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const row: Record<string, string | null> = {};
    if (patch.title !== undefined) {
      const title = patch.title.trim();
      if (!title) return { data: null, error: 'Give your plan a title first.' };
      row.title = title;
    }
    if (patch.description !== undefined) row.description = patch.description?.trim() || null;
    if (patch.category !== undefined) row.category = patch.category || null;
    if (patch.plannedFor !== undefined) row.planned_for = patch.plannedFor || null;
    const { data, error } = await client
      .from('date_plans')
      .update(row)
      .eq('id', id)
      .select('id, couple_id, title, description, category, planned_for, created_by, created_at')
      .single();
    if (error) throw error;
    return { data: toPlan(data), error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not update your plan.') };
  }
}

/** Delete a plan I created (RLS: authors only). */
export async function deletePlan(id: string): Promise<PairResult<null>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const { error } = await client.from('date_plans').delete().eq('id', id);
    if (error) throw error;
    return { data: null, error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not delete your plan.') };
  }
}

/**
 * Turn an idea from the bank into a saved plan, optionally with a date.
 * Direct write — used by the outbox replay (the idea is re-fetched then,
 * when the device is back online). Screens should call saveIdeaAsPlan(),
 * which queues this when offline.
 */
export async function saveIdeaAsPlanRaw(
  ideaId: string,
  plannedFor?: string | null,
): Promise<PairResult<DatePlan>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const { data, error } = await client
      .from('date_ideas')
      .select('title, description, category')
      .eq('id', ideaId)
      .single();
    if (error) throw error;
    if (!data) return { data: null, error: 'That idea no longer exists.' };
    const idea = data as { title: string; description: string; category: string };
    return createPlanRaw({
      title: idea.title,
      description: idea.description,
      category: idea.category,
      plannedFor: plannedFor ?? null,
    });
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not save that idea.') };
  }
}

/**
 * Turn an idea from the bank into a saved plan, optionally with a date.
 * When the device is offline the idea id is queued on this device; at
 * replay time the idea is re-fetched and saved as a plan (see
 * docs/OFFLINE.md). The result carries `queued: true` and a friendly
 * `error` message when queued.
 */
export async function saveIdeaAsPlan(
  ideaId: string,
  plannedFor?: string | null,
): Promise<PairResult<DatePlan> & { queued: boolean }> {
  const { runOrQueue } = require('./offline') as typeof import('./offline');
  return runOrQueue(
    'idea-plan',
    { ideaId, plannedFor: plannedFor ?? null },
    () => saveIdeaAsPlanRaw(ideaId, plannedFor),
  );
}

/** Today as YYYY-MM-DD in local time, for splitting upcoming vs past plans. */
export function todayIso(): string {
  const d = new Date();
  const m = `${d.getMonth() + 1}`.padStart(2, '0');
  const day = `${d.getDate()}`.padStart(2, '0');
  return `${d.getFullYear()}-${m}-${day}`;
}

/** Human date like "Sat, 18 Oct". Null-safe. */
export function formatPlanDate(iso: string | null): string {
  if (!iso) return 'No date set';
  const d = new Date(`${iso}T12:00:00`);
  if (Number.isNaN(d.getTime())) return iso;
  return d.toLocaleDateString('en-GB', { weekday: 'short', day: 'numeric', month: 'short' });
}
