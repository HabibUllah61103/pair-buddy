import { useCallback, useEffect, useState } from 'react';
import {
  ActivityIndicator,
  Pressable,
  ScrollView,
  StyleSheet,
  Text,
  View,
} from 'react-native';
import { router, useLocalSearchParams } from 'expo-router';
import { answersMatch, getPackResults, packTitle, type QuestionResult } from '../src/lib/quiz';
import { COLORS } from '../src/theme';

const NAVY = COLORS.navy;
const CARD = '#1B3A5F';
const TEAL = COLORS.teal;
const CORAL = '#FF6B5E';
const WHITE = COLORS.white;
const MUTED = COLORS.muted;

function ResultRow({ item }: { item: QuestionResult }) {
  const matched = answersMatch(item.myAnswer, item.partnerAnswer);
  return (
    <View style={styles.card}>
      <Text style={styles.question}>{item.quiz.title}</Text>
      {matched ? (
        <View style={styles.matchChip}>
          <Text style={styles.matchText}>You matched!</Text>
        </View>
      ) : null}
      <View style={styles.answers}>
        <View style={styles.answerCol}>
          <Text style={styles.label}>You</Text>
          <Text style={styles.answer}>
            {item.myAnswer ?? 'No answer yet'}
          </Text>
        </View>
        <View style={styles.answerCol}>
          <Text style={styles.label}>{item.partnerName}</Text>
          <Text style={styles.answer}>
            {item.partnerAnswer ?? 'Waiting for answer'}
          </Text>
        </View>
      </View>
    </View>
  );
}

export default function QuizResultsScreen() {
  const { category } = useLocalSearchParams<{ category: string }>();
  const [results, setResults] = useState<QuestionResult[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const load = useCallback(async () => {
    if (!category) return;
    setLoading(true);
    setError(null);
    const res = await getPackResults(category);
    if (res.error || !res.data) {
      setError(res.error ?? 'Could not load results.');
    } else {
      setResults(res.data);
    }
    setLoading(false);
  }, [category]);

  useEffect(() => {
    void load();
  }, [load]);

  const matches = results.filter((r) => answersMatch(r.myAnswer, r.partnerAnswer)).length;

  return (
    <View style={styles.container}>
      <Text style={styles.header}>{packTitle(category ?? '')} — Results</Text>
      {loading ? (
        <ActivityIndicator color={TEAL} style={styles.loader} />
      ) : error ? (
        <View style={styles.center}>
          <Text style={styles.error}>{error}</Text>
          <Pressable style={styles.retry} onPress={() => void load()}>
            <Text style={styles.retryText}>Try again</Text>
          </Pressable>
        </View>
      ) : (
        <ScrollView contentContainerStyle={styles.list}>
          <Text style={styles.summary}>
            {matches} of {results.length} matched
          </Text>
          {results.map((r) => (
            <ResultRow key={r.quiz.id} item={r} />
          ))}
          <Pressable style={styles.back} onPress={() => router.replace('/(tabs)/quizzes')}>
            <Text style={styles.backText}>Back to packs</Text>
          </Pressable>
        </ScrollView>
      )}
    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1, backgroundColor: NAVY, paddingTop: 64, paddingHorizontal: 20 },
  header: { color: WHITE, fontSize: 24, fontWeight: '700', marginBottom: 16 },
  loader: { marginTop: 40 },
  center: { alignItems: 'center', marginTop: 40 },
  error: { color: CORAL, fontSize: 15, textAlign: 'center' },
  retry: {
    marginTop: 16,
    backgroundColor: TEAL,
    paddingHorizontal: 20,
    paddingVertical: 10,
    borderRadius: 8,
  },
  retryText: { color: NAVY, fontWeight: '700' },
  list: { paddingBottom: 32 },
  summary: { color: MUTED, fontSize: 14, marginBottom: 12 },
  card: { backgroundColor: CARD, borderRadius: 14, padding: 16, marginBottom: 12 },
  question: { color: WHITE, fontSize: 16, fontWeight: '600', lineHeight: 23 },
  matchChip: {
    alignSelf: 'flex-start',
    backgroundColor: TEAL,
    borderRadius: 12,
    paddingHorizontal: 10,
    paddingVertical: 4,
    marginTop: 8,
  },
  matchText: { color: NAVY, fontSize: 13, fontWeight: '700' },
  answers: { flexDirection: 'row', marginTop: 12 },
  answerCol: { flex: 1, paddingRight: 8 },
  label: { color: MUTED, fontSize: 12, fontWeight: '700', marginBottom: 4 },
  answer: { color: WHITE, fontSize: 14, lineHeight: 20 },
  back: {
    backgroundColor: TEAL,
    borderRadius: 12,
    paddingVertical: 14,
    alignItems: 'center',
    marginTop: 8,
  },
  backText: { color: NAVY, fontSize: 16, fontWeight: '700' },
});
