import type { RealtimeChannel, SupabaseClient } from '@supabase/supabase-js';
import { getMyCoupleId, NOT_CONFIGURED, type PairResult } from './pairing';

// Metro/Babel resolve this at runtime; declared here for TypeScript.
declare function require(name: string): any;

let cachedClient: SupabaseClient | null | undefined;

/**
 * Lazy Supabase access — never throws at import time when unconfigured.
 * Every public function degrades to a clear error instead.
 */
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

export type DailySpark = {
  id: string;
  couple_id: string;
  quiz_id: string | null;
  question_text: string;
  spark_date: string;
};

export type SparkAnswer = {
  id: string;
  spark_id: string;
  user_id: string;
  answer_text: string;
  guess_partner_answer: string | null;
};

export type NamedAnswer = SparkAnswer & { userName: string };

export type SparkWithAnswers = {
  spark: DailySpark;
  answers: NamedAnswer[];
  myUserId: string | null;
};

function todayISO(): string {
  const d = new Date();
  const m = String(d.getMonth() + 1).padStart(2, '0');
  const day = String(d.getDate()).padStart(2, '0');
  return `${d.getFullYear()}-${m}-${day}`;
}

async function getUserId(client: SupabaseClient): Promise<string | null> {
  const { data } = await client.auth.getUser();
  return data.user?.id ?? null;
}

/**
 * Today's spark for the caller's couple, creating it from a random quiz
 * question when missing. Handles the two-devices-at-once race by re-reading
 * on unique violation.
 */
export async function getTodaySpark(): Promise<PairResult<DailySpark>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const couple = await getMyCoupleId();
    if (couple.error || !couple.data) {
      return { data: null, error: couple.error ?? 'No couple found.' };
    }
    const coupleId = couple.data;
    const date = todayISO();

    const existing = await client
      .from('daily_sparks')
      .select('*')
      .eq('couple_id', coupleId)
      .eq('spark_date', date)
      .maybeSingle();
    if (existing.error) throw existing.error;
    if (existing.data) return { data: existing.data as DailySpark, error: null };

    const bank = await client.from('quizzes').select('id,title').limit(200);
    if (bank.error) throw bank.error;
    const rows = (bank.data ?? []) as { id: string; title: string }[];
    if (rows.length === 0) {
      return { data: null, error: 'The question bank is empty. Seed it with supabase/seed/0001_quiz_bank.sql.' };
    }
    const pick = rows[Math.floor(Math.random() * rows.length)];

    const inserted = await client
      .from('daily_sparks')
      .insert({
        couple_id: coupleId,
        quiz_id: pick.id,
        question_text: pick.title,
        spark_date: date,
      })
      .select('*')
      .single();
    if (inserted.error) {
      if ((inserted.error as { code?: string }).code === '23505') {
        const retry = await client
          .from('daily_sparks')
          .select('*')
          .eq('couple_id', coupleId)
          .eq('spark_date', date)
          .single();
        if (retry.error) throw retry.error;
        return { data: retry.data as DailySpark, error: null };
      }
      throw inserted.error;
    }
    return { data: inserted.data as DailySpark, error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, "Could not load today's spark.") };
  }
}

/** Record my answer (and optional guess of my partner's answer). Upserts. */
export async function answerSpark(
  sparkId: string,
  answerText: string,
  guessPartnerAnswer?: string,
): Promise<PairResult<SparkAnswer>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const uid = await getUserId(client);
    if (!uid) return { data: null, error: 'You are not signed in.' };
    const guess = guessPartnerAnswer?.trim() ? guessPartnerAnswer.trim() : null;
    const { data, error } = await client
      .from('spark_answers')
      .upsert(
        {
          spark_id: sparkId,
          user_id: uid,
          answer_text: answerText.trim(),
          guess_partner_answer: guess,
        },
        { onConflict: 'spark_id,user_id' },
      )
      .select('*')
      .single();
    if (error) throw error;
    return { data: data as SparkAnswer, error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not save your answer.') };
  }
}

/** Spark plus both partners' answers with display names. */
export async function getSparkWithAnswers(
  sparkId: string,
): Promise<PairResult<SparkWithAnswers>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const uid = await getUserId(client);
    const sparkRes = await client.from('daily_sparks').select('*').eq('id', sparkId).single();
    if (sparkRes.error) throw sparkRes.error;
    const ansRes = await client.from('spark_answers').select('*').eq('spark_id', sparkId);
    if (ansRes.error) throw ansRes.error;
    const answers = (ansRes.data ?? []) as SparkAnswer[];
    const ids = [...new Set(answers.map((a) => a.user_id))];
    const names: Record<string, string> = {};
    if (ids.length > 0) {
      const profRes = await client.from('profiles').select('id,name').in('id', ids);
      if (!profRes.error) {
        for (const p of (profRes.data ?? []) as { id: string; name: string }[]) {
          names[p.id] = p.name;
        }
      }
    }
    return {
      data: {
        spark: sparkRes.data as DailySpark,
        answers: answers.map((a) => ({ ...a, userName: names[a.user_id] ?? 'Partner' })),
        myUserId: uid,
      },
      error: null,
    };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not load answers.') };
  }
}

/** Number of members in the caller's couple. */
export async function getCoupleMemberCount(): Promise<PairResult<number>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const couple = await getMyCoupleId();
    if (couple.error || !couple.data) {
      return { data: null, error: couple.error ?? 'No couple found.' };
    }
    const { count, error } = await client
      .from('couple_members')
      .select('user_id', { count: 'exact', head: true })
      .eq('couple_id', couple.data);
    if (error) throw error;
    return { data: count ?? 0, error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not check pairing status.') };
  }
}

/**
 * Consecutive days ending today (or yesterday when today is incomplete)
 * on which both partners answered the spark.
 */
export async function getStreak(): Promise<PairResult<number>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const couple = await getMyCoupleId();
    if (couple.error || !couple.data) {
      return { data: null, error: couple.error ?? 'No couple found.' };
    }
    const coupleId = couple.data;

    const memRes = await client
      .from('couple_members')
      .select('user_id')
      .eq('couple_id', coupleId);
    if (memRes.error) throw memRes.error;
    const memberIds = ((memRes.data ?? []) as { user_id: string }[]).map((m) => m.user_id);
    if (memberIds.length < 2) return { data: 0, error: null };

    const sparksRes = await client
      .from('daily_sparks')
      .select('id,spark_date')
      .eq('couple_id', coupleId)
      .order('spark_date', { ascending: false })
      .limit(60);
    if (sparksRes.error) throw sparksRes.error;
    const sparks = (sparksRes.data ?? []) as { id: string; spark_date: string }[];
    if (sparks.length === 0) return { data: 0, error: null };

    const ansRes = await client
      .from('spark_answers')
      .select('spark_id,user_id')
      .in(
        'spark_id',
        sparks.map((s) => s.id),
      );
    if (ansRes.error) throw ansRes.error;
    const bySpark = new Map<string, Set<string>>();
    for (const a of (ansRes.data ?? []) as { spark_id: string; user_id: string }[]) {
      if (!bySpark.has(a.spark_id)) bySpark.set(a.spark_id, new Set());
      bySpark.get(a.spark_id)!.add(a.user_id);
    }
    const complete = new Map<string, boolean>();
    for (const s of sparks) {
      const set = bySpark.get(s.id) ?? new Set<string>();
      complete.set(s.spark_date, memberIds.every((id) => set.has(id)));
    }

    const iso = (d: Date) =>
      `${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2, '0')}-${String(
        d.getDate(),
      ).padStart(2, '0')}`;
    const cursor = new Date();
    if (!complete.get(iso(cursor))) cursor.setDate(cursor.getDate() - 1);
    let streak = 0;
    while (complete.get(iso(cursor))) {
      streak += 1;
      cursor.setDate(cursor.getDate() - 1);
    }
    return { data: streak, error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not load streak.') };
  }
}

/**
 * Realtime updates for a spark's answers. Returns an unsubscribe function.
 * Requires `spark_answers` in the supabase_realtime publication (see docs/SPARK.md).
 */
export function subscribeSpark(sparkId: string, onChange: () => void): () => void {
  const client = getClient();
  if (!client) return () => {};
  const channel: RealtimeChannel = client
    .channel(`spark:${sparkId}`)
    .on(
      'postgres_changes',
      {
        event: '*',
        schema: 'public',
        table: 'spark_answers',
        filter: `spark_id=eq.${sparkId}`,
      },
      () => onChange(),
    )
    .subscribe();
  return () => {
    void client.removeChannel(channel);
  };
}
