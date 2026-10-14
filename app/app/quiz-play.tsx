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
import { router, useLocalSearchParams } from 'expo-router';
import {
  answerQuizQuestion,
  getPackQuestions,
  getPackResults,
  packTitle,
  type Quiz,
} from '../src/lib/quiz';

const NAVY = '#123B63';
const CARD = '#1B3A5F';
const TEAL = '#14B8A6';
const CORAL = '#FF6B5E';
const WHITE = '#FFFFFF';
const MUTED = '#8AA0B8';

export default function QuizPlayScreen() {
  const { category } = useLocalSearchParams<{ category: string }>();
  const [questions, setQuestions] = useState<Quiz[]>([]);
  const [index, setIndex] = useState(0);
  const [answer, setAnswer] = useState('');
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [saved, setSaved] = useState(false);
  const [partnerAnswered, setPartnerAnswered] = useState<boolean | null>(null);

  const load = useCallback(async () => {
    if (!category) return;
    setLoading(true);
    setError(null);
    const res = await getPackQuestions(category, 10);
    if (res.error || !res.data) {
      setError(res.error ?? 'Could not load questions.');
    } else if (res.data.length === 0) {
      setError('This pack has no questions yet.');
    } else {
      setQuestions(res.data);
    }
    setLoading(false);
  }, [category]);

  useEffect(() => {
    void load();
  }, [load]);

  const refreshPartnerStatus = useCallback(async () => {
    if (!category) return;
    const res = await getPackResults(category);
    const q = questions[index];
    if (res.data && q) {
      const row = res.data.find((r) => r.quiz.id === q.id);
      setPartnerAnswered(row ? row.partnerAnswer !== null : null);
    }
  }, [category, questions, index]);

  useEffect(() => {
    setSaved(false);
    setAnswer('');
    setPartnerAnswered(null);
  }, [index]);

  const submit = async () => {
    const q = questions[index];
    if (!q || !answer.trim() || saving) return;
    setSaving(true);
    setError(null);
    const res = await answerQuizQuestion(q.id, answer);
    setSaving(false);
    if (res.error) {
      setError(res.error);
      return;
    }
    setSaved(true);
    await refreshPartnerStatus();
  };

  const next = () => {
    if (index + 1 >= questions.length) {
      router.replace({ pathname: '/quiz-results', params: { category } });
    } else {
      setIndex(index + 1);
    }
  };

  const current = questions[index];

  return (
    <View style={styles.container}>
      <Text style={styles.packName}>{packTitle(category ?? '')}</Text>
      {loading ? (
        <ActivityIndicator color={TEAL} style={styles.loader} />
      ) : error && questions.length === 0 ? (
        <View style={styles.center}>
          <Text style={styles.error}>{error}</Text>
          <Pressable style={styles.retry} onPress={() => void load()}>
            <Text style={styles.retryText}>Try again</Text>
          </Pressable>
        </View>
      ) : current ? (
        <ScrollView contentContainerStyle={styles.body}>
          <View style={styles.dots}>
            {questions.map((q, i) => (
              <View
                key={q.id}
                style={[styles.dot, i === index && styles.dotActive]}
              />
            ))}
          </View>
          <Text style={styles.counter}>
            Question {index + 1} of {questions.length}
          </Text>
          <View style={styles.card}>
            <Text style={styles.question}>{current.title}</Text>
          </View>
          {saved ? (
            <View style={styles.savedBox}>
              <Text style={styles.savedText}>Answer saved.</Text>
              <Text style={styles.partnerStatus}>
                {partnerAnswered === null
                  ? ''
                  : partnerAnswered
                    ? 'Your partner answered this one too.'
                    : 'Waiting for your partner\u2019s answer.'}
              </Text>
            </View>
          ) : (
            <>
              <TextInput
                style={styles.input}
                placeholder="Your answer"
                placeholderTextColor={MUTED}
                value={answer}
                onChangeText={setAnswer}
                multiline
              />
              {error ? <Text style={styles.error}>{error}</Text> : null}
            </>
          )}
          <View style={styles.actions}>
            {saved ? (
              <Pressable style={styles.primary} onPress={next}>
                <Text style={styles.primaryText}>
                  {index + 1 >= questions.length ? 'See results' : 'Next'}
                </Text>
              </Pressable>
            ) : (
              <>
                <Pressable
                  style={[styles.primary, saving && styles.disabled]}
                  onPress={() => void submit()}
                  disabled={saving}
                >
                  <Text style={styles.primaryText}>
                    {saving ? 'Saving...' : 'Save answer'}
                  </Text>
                </Pressable>
                <Pressable style={styles.skip} onPress={next}>
                  <Text style={styles.skipText}>Skip</Text>
                </Pressable>
              </>
            )}
          </View>
        </ScrollView>
      ) : null}
    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1, backgroundColor: NAVY, paddingTop: 64, paddingHorizontal: 20 },
  packName: { color: WHITE, fontSize: 24, fontWeight: '700', marginBottom: 16 },
  loader: { marginTop: 40 },
  center: { alignItems: 'center', marginTop: 40 },
  error: { color: CORAL, fontSize: 15, textAlign: 'center', marginTop: 8 },
  retry: {
    marginTop: 16,
    backgroundColor: TEAL,
    paddingHorizontal: 20,
    paddingVertical: 10,
    borderRadius: 8,
  },
  retryText: { color: NAVY, fontWeight: '700' },
  body: { paddingBottom: 32 },
  dots: { flexDirection: 'row', marginBottom: 12 },
  dot: {
    width: 8,
    height: 8,
    borderRadius: 4,
    backgroundColor: '#1E3A5C',
    marginRight: 6,
  },
  dotActive: { backgroundColor: TEAL },
  counter: { color: MUTED, fontSize: 13, marginBottom: 12 },
  card: { backgroundColor: CARD, borderRadius: 14, padding: 20, marginBottom: 16 },
  question: { color: WHITE, fontSize: 19, fontWeight: '600', lineHeight: 27 },
  input: {
    backgroundColor: CARD,
    borderRadius: 12,
    color: WHITE,
    fontSize: 16,
    minHeight: 100,
    padding: 14,
    textAlignVertical: 'top',
  },
  savedBox: { backgroundColor: CARD, borderRadius: 12, padding: 16 },
  savedText: { color: TEAL, fontSize: 16, fontWeight: '700' },
  partnerStatus: { color: MUTED, fontSize: 14, marginTop: 6 },
  actions: { flexDirection: 'row', marginTop: 20 },
  primary: {
    flex: 1,
    backgroundColor: TEAL,
    borderRadius: 12,
    paddingVertical: 14,
    alignItems: 'center',
  },
  disabled: { opacity: 0.6 },
  primaryText: { color: NAVY, fontSize: 16, fontWeight: '700' },
  skip: { marginLeft: 12, justifyContent: 'center', paddingHorizontal: 16 },
  skipText: { color: MUTED, fontSize: 16 },
});
