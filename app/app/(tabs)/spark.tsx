import { useCallback, useEffect, useState } from 'react';
import {
  ActivityIndicator,
  Pressable,
  ScrollView,
  StyleSheet,
  Text,
  TextInput,
  View,
} from 'react-native';
import {
  answerSpark,
  getSparkWithAnswers,
  getStreak,
  getTodaySpark,
  subscribeSpark,
  type DailySpark,
  type NamedAnswer,
} from '../../src/lib/sparks';
import { COLORS } from '../../src/theme';

const NAVY = COLORS.navy;
const TEAL = COLORS.teal;
const MUTED = COLORS.muted;
const CARD = '#1A3A5C';
const CORAL = '#FF6B5E';
const WHITE = COLORS.white;

type Phase = 'loading' | 'error' | 'answer' | 'waiting' | 'results';

function sameText(a: string, b: string): boolean {
  return a.trim().toLowerCase() === b.trim().toLowerCase();
}

export default function SparkScreen() {
  const [phase, setPhase] = useState<Phase>('loading');
  const [spark, setSpark] = useState<DailySpark | null>(null);
  const [answers, setAnswers] = useState<NamedAnswer[]>([]);
  const [myUserId, setMyUserId] = useState<string | null>(null);
  const [answerText, setAnswerText] = useState('');
  const [guessText, setGuessText] = useState('');
  const [streak, setStreak] = useState(0);
  const [error, setError] = useState<string | null>(null);
  const [saving, setSaving] = useState(false);

  const load = useCallback(async (sparkId?: string): Promise<string | null> => {
    try {
      let id = sparkId;
      if (!id) {
        const today = await getTodaySpark();
        if (today.error || !today.data) throw new Error(today.error ?? 'No spark today.');
        id = today.data.id;
      }
      const [withAnswers, streakRes] = await Promise.all([
        getSparkWithAnswers(id),
        getStreak(),
      ]);
      if (withAnswers.error || !withAnswers.data) {
        throw new Error(withAnswers.error ?? 'Could not load answers.');
      }
      const { spark: s, answers: a, myUserId: uid } = withAnswers.data;
      setSpark(s);
      setAnswers(a);
      setMyUserId(uid);
      if (streakRes.data !== null) setStreak(streakRes.data);
      const mine = a.find((x) => x.user_id === uid);
      if (!mine) setPhase('answer');
      else if (a.length >= 2) setPhase('results');
      else setPhase('waiting');
      setError(null);
      return id;
    } catch (e) {
      setError(e instanceof Error ? e.message : 'Something went wrong.');
      setPhase('error');
      return null;
    }
  }, []);

  useEffect(() => {
    let unsub: (() => void) | null = null;
    let cancelled = false;
    void (async () => {
      setPhase('loading');
      const id = await load();
      if (id && !cancelled) {
        unsub = subscribeSpark(id, () => {
          void load(id);
        });
      }
    })();
    return () => {
      cancelled = true;
      unsub?.();
    };
  }, [load]);

  const handleSubmit = async () => {
    if (!spark || !answerText.trim() || saving) return;
    setSaving(true);
    const res = await answerSpark(spark.id, answerText, guessText);
    setSaving(false);
    if (res.error) {
      setError(res.error);
      return;
    }
    setAnswerText('');
    setGuessText('');
    await load(spark.id);
  };

  const handleRetry = () => {
    setPhase('loading');
    void load();
  };

  if (phase === 'loading') {
    return (
      <View style={styles.center}>
        <ActivityIndicator color={TEAL} />
      </View>
    );
  }

  if (phase === 'error') {
    return (
      <View style={styles.center}>
        <Text style={styles.errorText}>{error ?? 'Something went wrong.'}</Text>
        <Pressable style={styles.button} onPress={handleRetry}>
          <Text style={styles.buttonText}>Try again</Text>
        </Pressable>
      </View>
    );
  }

  const myAnswer = answers.find((a) => a.user_id === myUserId) ?? null;
  const partnerAnswer = answers.find((a) => a.user_id !== myUserId) ?? null;

  return (
    <ScrollView style={styles.root} contentContainerStyle={styles.content}>
      <View style={styles.headerRow}>
        <Text style={styles.headerTitle}>Daily Spark</Text>
        {streak > 0 && (
          <View style={styles.streakBadge}>
            <Text style={styles.streakText}>
              {streak} day{streak === 1 ? '' : 's'} in a row
            </Text>
          </View>
        )}
      </View>

      <View style={styles.questionCard}>
        <Text style={styles.questionLabel}>Today&apos;s question</Text>
        <Text style={styles.questionText}>{spark?.question_text}</Text>
      </View>

      {phase === 'answer' && (
        <View style={styles.card}>
          <Text style={styles.label}>Your answer</Text>
          <TextInput
            style={styles.input}
            value={answerText}
            onChangeText={setAnswerText}
            placeholder="Write honestly..."
            placeholderTextColor={MUTED}
            multiline
          />
          <Text style={styles.label}>Guess your partner&apos;s answer</Text>
          <TextInput
            style={styles.input}
            value={guessText}
            onChangeText={setGuessText}
            placeholder="What will they say? (optional)"
            placeholderTextColor={MUTED}
            multiline
          />
          {error && <Text style={styles.errorText}>{error}</Text>}
          <Pressable
            style={[styles.button, (!answerText.trim() || saving) && styles.buttonDisabled]}
            onPress={handleSubmit}
            disabled={!answerText.trim() || saving}
          >
            {saving ? (
              <ActivityIndicator color={WHITE} />
            ) : (
              <Text style={styles.buttonText}>Send answer</Text>
            )}
          </Pressable>
        </View>
      )}

      {phase === 'waiting' && (
        <View style={styles.card}>
          <Text style={styles.waitingTitle}>Answer sent</Text>
          <Text style={styles.waitingText}>
            Waiting for your partner. You will both see the answers as soon as
            they reply.
          </Text>
          {myAnswer && (
            <View style={styles.answerBlock}>
              <Text style={styles.answerName}>You wrote</Text>
              <Text style={styles.answerValue}>{myAnswer.answer_text}</Text>
            </View>
          )}
        </View>
      )}

      {phase === 'results' && (
        <View>
          {answers.map((a) => {
            const other = answers.find((x) => x.user_id !== a.user_id);
            const guess = other?.guess_partner_answer;
            const guessedRight = guess ? sameText(guess, a.answer_text) : null;
            const isMe = a.user_id === myUserId;
            return (
              <View key={a.id} style={styles.card}>
                <Text style={styles.answerName}>{isMe ? 'You' : a.userName}</Text>
                <Text style={styles.answerValue}>{a.answer_text}</Text>
                {guess && (
                  <Text
                    style={[
                      styles.guessLine,
                      guessedRight ? styles.guessRight : styles.guessWrong,
                    ]}
                  >
                    {isMe ? 'Your partner' : 'You'} guessed &ldquo;{guess}&rdquo; —{' '}
                    {guessedRight ? 'spot on!' : 'not quite.'}
                  </Text>
                )}
              </View>
            );
          })}
        </View>
      )}
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  root: { flex: 1, backgroundColor: NAVY },
  content: { padding: 20, paddingBottom: 40 },
  center: {
    flex: 1,
    backgroundColor: NAVY,
    alignItems: 'center',
    justifyContent: 'center',
    padding: 24,
  },
  headerRow: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    marginBottom: 16,
  },
  headerTitle: { color: WHITE, fontSize: 24, fontWeight: '800' },
  streakBadge: {
    backgroundColor: CARD,
    borderRadius: 20,
    paddingHorizontal: 12,
    paddingVertical: 6,
  },
  streakText: { color: CORAL, fontSize: 13, fontWeight: '700' },
  questionCard: {
    backgroundColor: CARD,
    borderRadius: 16,
    padding: 20,
    marginBottom: 16,
  },
  questionLabel: {
    color: TEAL,
    fontSize: 12,
    fontWeight: '700',
    textTransform: 'uppercase',
    marginBottom: 8,
  },
  questionText: { color: WHITE, fontSize: 19, fontWeight: '600', lineHeight: 27 },
  card: {
    backgroundColor: CARD,
    borderRadius: 16,
    padding: 18,
    marginBottom: 14,
  },
  label: { color: MUTED, fontSize: 13, fontWeight: '600', marginBottom: 8, marginTop: 4 },
  input: {
    backgroundColor: NAVY,
    borderRadius: 12,
    padding: 14,
    color: WHITE,
    fontSize: 16,
    minHeight: 52,
    marginBottom: 12,
    textAlignVertical: 'top',
  },
  button: {
    backgroundColor: TEAL,
    borderRadius: 14,
    paddingVertical: 14,
    alignItems: 'center',
    marginTop: 8,
  },
  buttonDisabled: { opacity: 0.5 },
  buttonText: { color: WHITE, fontSize: 16, fontWeight: '700' },
  errorText: { color: CORAL, fontSize: 14, textAlign: 'center', marginBottom: 12 },
  waitingTitle: { color: WHITE, fontSize: 18, fontWeight: '700', marginBottom: 8 },
  waitingText: { color: MUTED, fontSize: 15, lineHeight: 22 },
  answerBlock: { marginTop: 14 },
  answerName: { color: TEAL, fontSize: 13, fontWeight: '700', marginBottom: 4 },
  answerValue: { color: WHITE, fontSize: 16, lineHeight: 24 },
  guessLine: { fontSize: 14, marginTop: 10, lineHeight: 20 },
  guessRight: { color: TEAL },
  guessWrong: { color: MUTED },
});
