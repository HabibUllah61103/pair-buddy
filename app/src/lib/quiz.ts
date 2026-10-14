import type { SupabaseClient } from '@supabase/supabase-js';
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
  return cachedClient ?? null;
}

function toMessage(e: unknown, fallback: string): string {
  if (e instanceof Error && e.message) return e.message;
  if (typeof e === 'string' && e.length > 0) return e;
  return fallback;
}

export type Quiz = {
  id: string;
  title: string;
  category: string;
};

export type QuizPack = {
  category: string;
  title: string;
  questionCount: number;
};

export type QuizAnswer = {
  id: string;
  couple_id: string;
  quiz_id: string;
  user_id: string;
  answer_text: string;
};

export type QuestionResult = {
  quiz: Quiz;
  myAnswer: string | null;
  partnerAnswer: string | null;
  partnerName: string;
};

/** Human-friendly pack titles per category. */
export function packTitle(category: string): string {
  const map: Record<string, string> = {
    fun: 'Just for Fun',
    deep: 'Go Deep',
    memories: 'Memory Lane',
    dreams: 'Dreams & Plans',
    'daily-life': 'Daily Life',
  };
  return map[category] ?? category;
}

async function getUserId(client: SupabaseClient): Promise<string | null> {
  const { data } = await client.auth.getUser();
  return data.user?.id ?? null;
}

async function getMemberIds(
  client: SupabaseClient,
  coupleId: string,
): Promise<string[]> {
  const { data, error } = await client
    .from('couple_members')
    .select('user_id')
    .eq('couple_id', coupleId);
  if (error) throw error;
  return ((data ?? []) as { user_id: string }[]).map((m) => m.user_id);
}

/**
 * The five categories treated as packs, with live question counts.
 * Aggregated client-side from the quizzes table.
 */
export async function getPacks(): Promise<PairResult<QuizPack[]>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const { data, error } = await client.from('quizzes').select('category');
    if (error) throw error;
    const counts = new Map<string, number>();
    for (const row of (data ?? []) as { category: string }[]) {
      counts.set(row.category, (counts.get(row.category) ?? 0) + 1);
    }
    const packs: QuizPack[] = [...counts.entries()]
      .map(([category, questionCount]) => ({
        category,
        title: packTitle(category),
        questionCount,
      }))
      .sort((a, b) => a.title.localeCompare(b.title));
    return { data: packs, error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not load quiz packs.') };
  }
}

/** A random sample of questions from a pack (default 10). */
export async function getPackQuestions(
  category: string,
  limit = 10,
): Promise<PairResult<Quiz[]>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const { data, error } = await client
      .from('quizzes')
      .select('id,title,category')
      .eq('category', category)
      .limit(200);
    if (error) throw error;
    const rows = ((data ?? []) as Quiz[]).slice();
    for (let i = rows.length - 1; i > 0; i -= 1) {
      const j = Math.floor(Math.random() * (i + 1));
      [rows[i], rows[j]] = [rows[j], rows[i]];
    }
    return { data: rows.slice(0, limit), error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not load questions.') };
  }
}

/**
 * Record my answer to a quiz question. Upserts on (couple, quiz, user).
 * Direct write — used by the outbox replay. Screens should call
 * answerQuizQuestion(), which queues this when offline.
 */
export async function answerQuizQuestionRaw(
  quizId: string,
  answerText: string,
): Promise<PairResult<QuizAnswer>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const couple = await getMyCoupleId();
    if (couple.error || !couple.data) {
      return { data: null, error: couple.error ?? 'No couple found.' };
    }
    const uid = await getUserId(client);
    if (!uid) return { data: null, error: 'You are not signed in.' };
    const { data, error } = await client
      .from('quiz_answers')
      .upsert(
        {
          couple_id: couple.data,
          quiz_id: quizId,
          user_id: uid,
          answer_text: answerText.trim(),
        },
        { onConflict: 'couple_id,quiz_id,user_id' },
      )
      .select('*')
      .single();
    if (error) throw error;
    return { data: data as QuizAnswer, error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not save your answer.') };
  }
}

/**
 * Record my answer to a quiz question. Upserts on (couple, quiz, user).
 * When the device is offline the answer is queued on this device and sent
 * when you reconnect (see docs/OFFLINE.md): the result then carries
 * `queued: true` and a friendly `error` message, which screens already
 * display through their existing error paths.
 */
export async function answerQuizQuestion(
  quizId: string,
  answerText: string,
): Promise<PairResult<QuizAnswer> & { queued: boolean }> {
  const { runOrQueue } = require('./offline') as typeof import('./offline');
  return runOrQueue(
    'quiz-answer',
    { quizId, answerText },
    () => answerQuizQuestionRaw(quizId, answerText),
  );
}

/**
 * Progress for a pack: how many of its questions both partners answered,
 * out of the pack's total question count.
 */
export async function getPackProgress(
  category: string,
): Promise<PairResult<{ answeredBoth: number; total: number }>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const couple = await getMyCoupleId();
    if (couple.error || !couple.data) {
      return { data: null, error: couple.error ?? 'No couple found.' };
    }
    const coupleId = couple.data;

    const qRes = await client
      .from('quizzes')
      .select('id')
      .eq('category', category);
    if (qRes.error) throw qRes.error;
    const quizIds = ((qRes.data ?? []) as { id: string }[]).map((q) => q.id);
    if (quizIds.length === 0) return { data: { answeredBoth: 0, total: 0 }, error: null };

    const memberIds = await getMemberIds(client, coupleId);
    const aRes = await client
      .from('quiz_answers')
      .select('quiz_id,user_id')
      .eq('couple_id', coupleId)
      .in('quiz_id', quizIds);
    if (aRes.error) throw aRes.error;
    const byQuiz = new Map<string, Set<string>>();
    for (const a of (aRes.data ?? []) as { quiz_id: string; user_id: string }[]) {
      if (!byQuiz.has(a.quiz_id)) byQuiz.set(a.quiz_id, new Set());
      byQuiz.get(a.quiz_id)!.add(a.user_id);
    }
    let answeredBoth = 0;
    for (const id of quizIds) {
      const set = byQuiz.get(id) ?? new Set<string>();
      if (memberIds.length >= 2 && memberIds.every((m) => set.has(m))) {
        answeredBoth += 1;
      }
    }
    return { data: { answeredBoth, total: quizIds.length }, error: null };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not load progress.') };
  }
}

/**
 * Per-question results for a pack: every question with my answer and my
 * partner's answer (null when not answered yet), plus the partner's name.
 */
export async function getPackResults(
  category: string,
): Promise<PairResult<QuestionResult[]>> {
  const client = getClient();
  if (!client) return { data: null, error: NOT_CONFIGURED };
  try {
    const couple = await getMyCoupleId();
    if (couple.error || !couple.data) {
      return { data: null, error: couple.error ?? 'No couple found.' };
    }
    const coupleId = couple.data;
    const uid = await getUserId(client);

    const qRes = await client
      .from('quizzes')
      .select('id,title,category')
      .eq('category', category)
      .order('title');
    if (qRes.error) throw qRes.error;
    const quizzes = (qRes.data ?? []) as Quiz[];
    if (quizzes.length === 0) return { data: [], error: null };

    const aRes = await client
      .from('quiz_answers')
      .select('quiz_id,user_id,answer_text')
      .eq('couple_id', coupleId)
      .in(
        'quiz_id',
        quizzes.map((q) => q.id),
      );
    if (aRes.error) throw aRes.error;
    const answers = (aRes.data ?? []) as {
      quiz_id: string;
      user_id: string;
      answer_text: string;
    }[];

    const partnerIds = [...new Set(answers.map((a) => a.user_id))].filter(
      (id) => id !== uid,
    );
    const names: Record<string, string> = {};
    if (partnerIds.length > 0) {
      const pRes = await client.from('profiles').select('id,name').in('id', partnerIds);
      if (!pRes.error) {
        for (const p of (pRes.data ?? []) as { id: string; name: string }[]) {
          names[p.id] = p.name;
        }
      }
    }
    const partnerName =
      partnerIds.length > 0 ? (names[partnerIds[0]] ?? 'Partner') : 'Partner';

    const byQuiz = new Map<string, { mine: string | null; partner: string | null }>();
    for (const a of answers) {
      if (!byQuiz.has(a.quiz_id)) byQuiz.set(a.quiz_id, { mine: null, partner: null });
      const entry = byQuiz.get(a.quiz_id)!;
      if (a.user_id === uid) entry.mine = a.answer_text;
      else entry.partner = a.answer_text;
    }

    return {
      data: quizzes.map((quiz) => {
        const entry = byQuiz.get(quiz.id);
        return {
          quiz,
          myAnswer: entry?.mine ?? null,
          partnerAnswer: entry?.partner ?? null,
          partnerName,
        };
      }),
      error: null,
    };
  } catch (e) {
    return { data: null, error: toMessage(e, 'Could not load results.') };
  }
}

/** Loose similarity check for the "You matched!" highlight. */
export function answersMatch(a: string | null, b: string | null): boolean {
  if (!a || !b) return false;
  const norm = (s: string) => s.toLowerCase().trim().replace(/[^\p{L}\p{N}\s]/gu, '');
  const na = norm(a);
  const nb = norm(b);
  return na.length > 0 && na === nb;
}
