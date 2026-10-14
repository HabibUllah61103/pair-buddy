import type { SupabaseClient } from '@supabase/supabase-js';
import { NOT_CONFIGURED, type PairResult } from './pairing';
import { createPlan, type DatePlan } from './dates';

// Metro/Babel resolve this at runtime; declared here for TypeScript.
declare function require(name: string): any;

export type AiPlannerInput = {
  mood?: string | null;
  budget?: string | null;
  location?: string | null;
  occasion?: string | null;
  preferences?: string | null;
};

export type AiDatePlan = {
  title: string;
  description: string;
  category: string | null;
  estimatedCost: string;
  tips: string[];
};

export const AI_NOT_CONFIGURED =
  'The AI date planner is not set up yet. Add a Mistral API key in the Supabase dashboard to turn it on.';

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

function toAiPlan(row: any): AiDatePlan | null {
  if (!row || typeof row !== 'object') return null;
  const title = typeof row.title === 'string' ? row.title.trim() : '';
  if (!title) return null;
  const description = typeof row.description === 'string' ? row.description : '';
  const tips = Array.isArray(row.tips)
    ? row.tips.filter((t: unknown): t is string => typeof t === 'string' && t.trim().length > 0)
    : [];
  return {
    title,
    description,
    category: typeof row.category === 'string' ? row.category : null,
    estimatedCost: typeof row.estimated_cost === 'string' ? row.estimated_cost : '',
    tips,
  };
}

/**
 * Ask the AI planner for one date idea tailored to the inputs.
 * The Mistral key stays server-side in the edge function; this never sees it.
 */
export async function generateDatePlan(
  input: AiPlannerInput,
): Promise<PairResult<AiDatePlan>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  const body: Record<string, string> = {};
  if (input.mood?.trim()) body.mood = input.mood.trim();
  if (input.budget?.trim()) body.budget = input.budget.trim();
  if (input.location?.trim()) body.location = input.location.trim();
  if (input.occasion?.trim()) body.occasion = input.occasion.trim();
  if (input.preferences?.trim()) body.preferences = input.preferences.trim();
  try {
    const { data, error } = await client.functions.invoke('generate-date-plan', { body });
    if (error) {
      const msg = error.message ?? '';
      if (msg.includes('ai_not_configured')) return { data: null, error: AI_NOT_CONFIGURED };
      return { data: null, error: toMessage(msg, 'The AI planner could not generate a date.') };
    }
    if (data?.error === 'ai_not_configured') {
      return { data: null, error: AI_NOT_CONFIGURED };
    }
    const plan = toAiPlan(data?.plan);
    if (!plan) return { data: null, error: 'The AI planner returned an unusable idea. Try again.' };
    return { data: plan, error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'The AI planner could not generate a date.') };
  }
}

/** Save an AI-generated plan into the couple's date plans (same table as PR #13). */
export async function saveAiPlan(
  plan: AiDatePlan,
  plannedFor?: string | null,
): Promise<PairResult<DatePlan>> {
  return createPlan({
    title: plan.title,
    description: plan.description,
    category: plan.category,
    plannedFor: plannedFor ?? null,
  });
}
