import { useCallback, useEffect, useState } from 'react';
import {
  Image,
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
import GlassHeader from '../../src/components/glass-header';
import { LinearGradient } from 'expo-linear-gradient';
import { FadeInView, SpringPress } from '../../src/components/animated';
import { CelebrationBurst } from '../../src/components/celebration';
import { AnimatedCheck } from '../../src/components/success-check';
import { HeartsIllustration } from '../../src/components/hearts-illustration';
import { LoadingHeart } from '../../src/components/loading-heart';

type Phase = 'loading' | 'error' | 'answer' | 'waiting' | 'results';

function sameText(a: string, b: string): boolean {
  return a.trim().toLowerCase() === b.trim().toLowerCase();
}

export default function SparkScreen() {
  const { tokens, mode } = useTheme();
  const [phase, setPhase] = useState<Phase>('loading');
  const [spark, setSpark] = useState<DailySpark | null>(null);
  const [answers, setAnswers] = useState<NamedAnswer[]>([]);
  const [myUserId, setMyUserId] = useState<string | null>(null);
  const [answerText, setAnswerText] = useState('');
  const [guessText, setGuessText] = useState('');
  const [streak, setStreak] = useState(0);
  const [error, setError] = useState<string | null>(null);
  const [saving, setSaving] = useState(false);
  const [celebrate, setCelebrate] = useState(false);
  const bgSource =
    mode === 'dark'
      ? require('../../assets/bg-night-stars.png')
      : require('../../assets/bg-hearts-dreamy.png');

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

  useEffect(() => {
    setCelebrate(phase === 'results');
  }, [phase]);

  const handleRetry = () => {
    setPhase('loading');
    void load();
  };

  if (phase === 'loading') {
    return (
      <View style={[styles.center, { backgroundColor: tokens.background }]}>
        <LoadingHeart tokens={tokens} message="Loading today\u2019s spark\u2026" />
      </View>
    );
  }

  if (phase === 'error') {
    return (
      <View style={[styles.center, { backgroundColor: tokens.background }]}>
        <Image source={bgSource} style={styles.bg} resizeMode="cover" />
        <Text style={[styles.errorText, { color: tokens.danger }]}>{error ?? 'Something went wrong.'}</Text>
        <SpringPress onPress={handleRetry}>
          <LinearGradient
            colors={tokens.gradient}
            start={{ x: 0, y: 0 }}
            end={{ x: 1, y: 0 }}
            style={styles.button}
          >
            <Text style={styles.buttonText}>Try again</Text>
          </LinearGradient>
        </SpringPress>
      </View>
    );
  }

  const myAnswer = answers.find((a) => a.user_id === myUserId) ?? null;
  const partnerAnswer = answers.find((a) => a.user_id !== myUserId) ?? null;

  return (
    <View style={[styles.root, { backgroundColor: tokens.background }]}>
      <Image source={bgSource} style={styles.bg} resizeMode="cover" />
      <GlassHeader
        title="Daily Spark"
        subtitle="One question a day, answered together"
        tokens={tokens}
        right={
          streak > 0 ? (
            <View style={styles.streakBadge}>
              <Text style={styles.streakText}>
                {streak} day{streak === 1 ? '' : 's'} in a row
              </Text>
            </View>
          ) : undefined
        }
      />
    <ScrollView contentContainerStyle={styles.content}>
      <FadeInView delay={0}>
        <View style={[styles.questionCard, { backgroundColor: tokens.card }]}>
          <Text style={[styles.questionLabel, { color: tokens.primary }]}>Today&apos;s question</Text>
          <Text style={[styles.questionText, { color: tokens.ink }]}>{spark?.question_text}</Text>
        </View>
      </FadeInView>

      {phase === 'answer' && (
        <FadeInView delay={80}>
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
            <SpringPress
              onPress={handleSubmit}
              style={(!answerText.trim() || saving) ? styles.buttonDisabled : undefined}
            >
              <LinearGradient
                colors={tokens.gradient}
                start={{ x: 0, y: 0 }}
                end={{ x: 1, y: 0 }}
                style={styles.button}
              >
                {saving ? (
                  <LoadingHeart tokens={tokens} size={20} color="#FFFFFF" />
                ) : (
                  <Text style={styles.buttonText}>Send answer</Text>
                )}
              </LinearGradient>
            </SpringPress>
          </View>
        </FadeInView>
      )}

      {phase === 'waiting' && (
        <FadeInView delay={80}>
          <View style={[styles.card, { backgroundColor: tokens.card }]}>
            <HeartsIllustration expression="sleepy" variant="breathe" size={140} />
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
        </FadeInView>
      )}

      {phase === 'results' && (
        <View>
          {answers.map((a, idx) => {
            const other = answers.find((x) => x.user_id !== a.user_id);
            const guess = other?.guess_partner_answer;
            const guessedRight = guess ? sameText(guess, a.answer_text) : null;
            const isMe = a.user_id === myUserId;
            return (
              <FadeInView key={a.id} delay={idx * 80}>
                <View style={[styles.card, { backgroundColor: tokens.card }]}>
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
              </FadeInView>
            );
          })}
        </View>
      )}
    </ScrollView>
      {phase === 'results' && (
        <>
          <CelebrationBurst trigger={celebrate} colors={tokens.gradient} />
          <View style={styles.checkLayer} pointerEvents="none">
            <AnimatedCheck visible={celebrate} color={tokens.success} size={84} />
          </View>
        </>
      )}
    </View>
  );
}

const BUBBLY_SHADOW = {
  shadowColor: '#000',
  shadowOffset: { width: 0, height: 4 },
  shadowOpacity: 0.08,
  shadowRadius: 12,
  elevation: 3,
};

const styles = StyleSheet.create({
  root: { flex: 1 },
  checkLayer: {
    ...StyleSheet.absoluteFillObject,
    alignItems: 'center',
    justifyContent: 'center',
  },
  bg: {
    ...StyleSheet.absoluteFillObject,
    opacity: 0.12,
  },
  content: { padding: 20, paddingBottom: 40 },
  center: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
    padding: 24,
  },
  streakBadge: {
    backgroundColor: 'rgba(255,255,255,0.25)',
    borderRadius: 20,
    paddingHorizontal: 14,
    paddingVertical: 8,
  },
  streakText: { fontFamily: FONTS.bodyBold, fontSize: 13, color: '#FFFFFF' },
  questionCard: {
    borderRadius: 24,
    padding: 20,
    marginBottom: 16,
    ...BUBBLY_SHADOW,
  },
  questionLabel: {
    fontFamily: FONTS.bodyBold,
    fontSize: 12,
    textTransform: 'uppercase',
    marginBottom: 8,
  },
  questionText: { fontFamily: FONTS.bodySemi, fontSize: 19, lineHeight: 27 },
  card: {
    borderRadius: 24,
    padding: 20,
    marginBottom: 14,
    ...BUBBLY_SHADOW,
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
    borderRadius: 18,
    paddingVertical: 16,
    alignItems: 'center',
    marginTop: 8,
  },
  buttonDisabled: { opacity: 0.5 },
  buttonText: { fontFamily: FONTS.bodyBold, fontSize: 16, color: '#FFFFFF' },
  errorText: { fontFamily: FONTS.body, fontSize: 14, textAlign: 'center', marginBottom: 12 },
  mascot: { width: 140, height: 140, alignSelf: 'center', marginBottom: 8 },
  waitingTitle: { fontFamily: FONTS.headingBold, fontSize: 22, marginBottom: 8 },
  waitingText: { fontFamily: FONTS.body, fontSize: 15, lineHeight: 22 },
  answerBlock: { marginTop: 14 },
  answerName: { fontFamily: FONTS.bodyBold, fontSize: 13, marginBottom: 4 },
  answerValue: { fontFamily: FONTS.body, fontSize: 16, lineHeight: 24 },
  guessLine: { fontFamily: FONTS.body, fontSize: 14, marginTop: 10, lineHeight: 20 },
});
