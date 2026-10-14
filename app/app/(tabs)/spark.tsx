import { useCallback, useEffect, useState } from 'react';
import {
  ActivityIndicator,
  Image,
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
import { FONTS } from '../../src/theme';
import { useTheme } from '../../src/lib/theme-provider';

type Phase = 'loading' | 'error' | 'answer' | 'waiting' | 'results';

function sameText(a: string, b: string): boolean {
  return a.trim().toLowerCase() === b.trim().toLowerCase();
}

export default function SparkScreen() {
  const { tokens } = useTheme();
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
      <View style={[styles.center, { backgroundColor: tokens.background }]}>
        <ActivityIndicator color={tokens.primary} />
      </View>
    );
  }

  if (phase === 'error') {
    return (
      <View style={[styles.center, { backgroundColor: tokens.background }]}>
        <Text style={[styles.errorText, { color: tokens.danger }]}>{error ?? 'Something went wrong.'}</Text>
        <Pressable style={[styles.button, { backgroundColor: tokens.primary }]} onPress={handleRetry}>
          <Text style={[styles.buttonText, { color: tokens.onPrimary }]}>Try again</Text>
        </Pressable>
      </View>
    );
  }

  const myAnswer = answers.find((a) => a.user_id === myUserId) ?? null;
  const partnerAnswer = answers.find((a) => a.user_id !== myUserId) ?? null;

  return (
    <ScrollView style={[styles.root, { backgroundColor: tokens.background }]} contentContainerStyle={styles.content}>
      <View style={styles.headerRow}>
        <Text style={[styles.headerTitle, { color: tokens.ink }]}>Daily Spark</Text>
        {streak > 0 && (
          <View style={[styles.streakBadge, { backgroundColor: tokens.card }]}>
            <Text style={[styles.streakText, { color: tokens.primary }]}>
              {streak} day{streak === 1 ? '' : 's'} in a row
            </Text>
          </View>
        )}
      </View>

      <View style={[styles.questionCard, { backgroundColor: tokens.card }]}>
        <Text style={[styles.questionLabel, { color: tokens.primary }]}>Today&apos;s question</Text>
        <Text style={[styles.questionText, { color: tokens.ink }]}>{spark?.question_text}</Text>
      </View>

      {phase === 'answer' && (
        <View style={[styles.card, { backgroundColor: tokens.card }]}>
          <Text style={[styles.label, { color: tokens.muted }]}>Your answer</Text>
          <TextInput
            style={[styles.input, { backgroundColor: tokens.background, color: tokens.ink }]}
            value={answerText}
            onChangeText={setAnswerText}
            placeholder="Write honestly..."
            placeholderTextColor={tokens.muted}
            multiline
          />
          <Text style={[styles.label, { color: tokens.muted }]}>Guess your partner&apos;s answer</Text>
          <TextInput
            style={[styles.input, { backgroundColor: tokens.background, color: tokens.ink }]}
            value={guessText}
            onChangeText={setGuessText}
            placeholder="What will they say? (optional)"
            placeholderTextColor={tokens.muted}
            multiline
          />
          {error && <Text style={[styles.errorText, { color: tokens.danger }]}>{error}</Text>}
          <Pressable
            style={[styles.button, { backgroundColor: tokens.primary }, (!answerText.trim() || saving) && styles.buttonDisabled]}
            onPress={handleSubmit}
            disabled={!answerText.trim() || saving}
          >
            {saving ? (
              <ActivityIndicator color={tokens.onPrimary} />
            ) : (
              <Text style={[styles.buttonText, { color: tokens.onPrimary }]}>Send answer</Text>
            )}
          </Pressable>
        </View>
      )}

      {phase === 'waiting' && (
        <View style={[styles.card, { backgroundColor: tokens.card }]}>
          <Image
            source={require('../../assets/mascot-waiting.png')}
            style={styles.mascot}
            resizeMode="contain"
          />
          <Text style={[styles.waitingTitle, { color: tokens.ink }]}>Answer sent</Text>
          <Text style={[styles.waitingText, { color: tokens.muted }]}>
            Waiting for your partner. You will both see the answers as soon as
            they reply.
          </Text>
          {myAnswer && (
            <View style={styles.answerBlock}>
              <Text style={[styles.answerName, { color: tokens.primary }]}>You wrote</Text>
              <Text style={[styles.answerValue, { color: tokens.ink }]}>{myAnswer.answer_text}</Text>
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
              <View key={a.id} style={[styles.card, { backgroundColor: tokens.card }]}>
                <Text style={[styles.answerName, { color: tokens.primary }]}>{isMe ? 'You' : a.userName}</Text>
                <Text style={[styles.answerValue, { color: tokens.ink }]}>{a.answer_text}</Text>
                {guess && (
                  <Text
                    style={[
                      styles.guessLine,
                      guessedRight ? { color: tokens.success } : { color: tokens.muted },
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
  root: { flex: 1 },
  content: { padding: 20, paddingBottom: 40 },
  center: {
    flex: 1,
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
  headerTitle: { fontFamily: FONTS.headingBold, fontSize: 24 },
  streakBadge: {
    borderRadius: 20,
    paddingHorizontal: 12,
    paddingVertical: 6,
  },
  streakText: { fontFamily: FONTS.bodyBold, fontSize: 13 },
  questionCard: {
    borderRadius: 16,
    padding: 20,
    marginBottom: 16,
  },
  questionLabel: {
    fontFamily: FONTS.bodyBold,
    fontSize: 12,
    textTransform: 'uppercase',
    marginBottom: 8,
  },
  questionText: { fontFamily: FONTS.bodySemi, fontSize: 19, lineHeight: 27 },
  card: {
    borderRadius: 16,
    padding: 18,
    marginBottom: 14,
  },
  label: { fontFamily: FONTS.bodySemi, fontSize: 13, marginBottom: 8, marginTop: 4 },
  input: {
    borderRadius: 12,
    padding: 14,
    fontFamily: FONTS.body,
    fontSize: 16,
    minHeight: 52,
    marginBottom: 12,
    textAlignVertical: 'top',
  },
  button: {
    borderRadius: 14,
    paddingVertical: 14,
    alignItems: 'center',
    marginTop: 8,
  },
  buttonDisabled: { opacity: 0.5 },
  buttonText: { fontFamily: FONTS.bodyBold, fontSize: 16 },
  errorText: { fontFamily: FONTS.body, fontSize: 14, textAlign: 'center', marginBottom: 12 },
  mascot: { width: 140, height: 140, alignSelf: 'center', marginBottom: 8 },
  waitingTitle: { fontFamily: FONTS.heading, fontSize: 18, marginBottom: 8 },
  waitingText: { fontFamily: FONTS.body, fontSize: 15, lineHeight: 22 },
  answerBlock: { marginTop: 14 },
  answerName: { fontFamily: FONTS.bodyBold, fontSize: 13, marginBottom: 4 },
  answerValue: { fontFamily: FONTS.body, fontSize: 16, lineHeight: 24 },
  guessLine: { fontFamily: FONTS.body, fontSize: 14, marginTop: 10, lineHeight: 20 },
});
