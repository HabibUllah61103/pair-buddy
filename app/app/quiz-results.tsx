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
import { useTheme } from '../src/lib/theme-provider';
import { FONTS } from '../src/theme';
import { CelebrationBurst } from '../src/components/celebration';
import { HeartsIllustration } from '../src/components/hearts-illustration';

function ResultRow({ item }: { item: QuestionResult }) {
  const { tokens } = useTheme();
  const matched = answersMatch(item.myAnswer, item.partnerAnswer);
  return (
    <View style={[styles.card, { backgroundColor: tokens.card }]}>
      <Text style={[styles.question, { color: tokens.ink }]}>{item.quiz.title}</Text>
      {matched ? (
        <View style={[styles.matchChip, { backgroundColor: tokens.primary }]}>
          <Text style={[styles.matchText, { color: tokens.onPrimary }]}>You matched!</Text>
        </View>
      ) : null}
      <View style={styles.answers}>
        <View style={styles.answerCol}>
          <Text style={[styles.label, { color: tokens.muted }]}>You</Text>
          <Text style={[styles.answer, { color: tokens.ink }]}>
            {item.myAnswer ?? 'No answer yet'}
          </Text>
        </View>
        <View style={styles.answerCol}>
          <Text style={[styles.label, { color: tokens.muted }]}>{item.partnerName}</Text>
          <Text style={[styles.answer, { color: tokens.ink }]}>
            {item.partnerAnswer ?? 'Waiting for answer'}
          </Text>
        </View>
      </View>
    </View>
  );
}

export default function QuizResultsScreen() {
  const { tokens } = useTheme();
  const { category } = useLocalSearchParams<{ category: string }>();
  const [results, setResults] = useState<QuestionResult[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [celebrate, setCelebrate] = useState(false);

  const load = useCallback(async () => {
    if (!category) return;
    setLoading(true);
    setError(null);
    const res = await getPackResults(category);
    if (res.error || !res.data) {
      setError(res.error ?? 'Could not load results.');
      setCelebrate(false);
    } else {
      setResults(res.data);
      setCelebrate(true);
    }
    setLoading(false);
  }, [category]);

  useEffect(() => {
    void load();
  }, [load]);

  const matches = results.filter((r) => answersMatch(r.myAnswer, r.partnerAnswer)).length;

  return (
    <View style={[styles.container, { backgroundColor: tokens.background }]}>
      <CelebrationBurst trigger={celebrate} colors={tokens.gradient} />
      <Text style={[styles.header, { color: tokens.ink }]}>{packTitle(category ?? '')} — Results</Text>
      {loading ? (
        <ActivityIndicator color={tokens.primary} style={styles.loader} />
      ) : error ? (
        <View style={styles.center}>
          <Text style={[styles.error, { color: tokens.danger }]}>{error}</Text>
          <Pressable style={[styles.retry, { backgroundColor: tokens.primary }]} onPress={() => void load()}>
            <Text style={[styles.retryText, { color: tokens.onPrimary }]}>Try again</Text>
          </Pressable>
        </View>
      ) : (
        <ScrollView contentContainerStyle={styles.list}>
          <HeartsIllustration
            expression="excited"
            variant="celebrate"
            size={140}
            style={styles.celebrate}
          />
          <Text style={[styles.summary, { color: tokens.muted }]}>
            {matches} of {results.length} matched
          </Text>
          {results.map((r) => (
            <ResultRow key={r.quiz.id} item={r} />
          ))}
          <Pressable style={[styles.back, { backgroundColor: tokens.primary }]} onPress={() => router.replace('/(tabs)/quizzes')}>
            <Text style={[styles.backText, { color: tokens.onPrimary }]}>Back to packs</Text>
          </Pressable>
        </ScrollView>
      )}
    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1, paddingTop: 64, paddingHorizontal: 20 },
  header: { fontFamily: FONTS.heading, fontSize: 24, fontWeight: '700', marginBottom: 16 },
  loader: { marginTop: 40 },
  center: { alignItems: 'center', marginTop: 40 },
  error: { fontFamily: FONTS.body, fontSize: 15, textAlign: 'center' },
  retry: {
    marginTop: 16,
    paddingHorizontal: 20,
    paddingVertical: 10,
    borderRadius: 8,
  },
  retryText: { fontFamily: FONTS.body, fontWeight: '700' },
  list: { paddingBottom: 32 },
  celebrate: { alignSelf: 'center', marginBottom: 4 },
  summary: { fontFamily: FONTS.body, fontSize: 14, marginBottom: 12 },
  card: { borderRadius: 14, padding: 16, marginBottom: 12 },
  question: { fontFamily: FONTS.heading, fontSize: 16, fontWeight: '600', lineHeight: 23 },
  matchChip: {
    alignSelf: 'flex-start',
    borderRadius: 12,
    paddingHorizontal: 10,
    paddingVertical: 4,
    marginTop: 8,
  },
  matchText: { fontFamily: FONTS.body, fontSize: 13, fontWeight: '700' },
  answers: { flexDirection: 'row', marginTop: 12 },
  answerCol: { flex: 1, paddingRight: 8 },
  label: { fontFamily: FONTS.body, fontSize: 12, fontWeight: '700', marginBottom: 4 },
  answer: { fontFamily: FONTS.body, fontSize: 14, lineHeight: 20 },
  back: {
    borderRadius: 12,
    paddingVertical: 14,
    alignItems: 'center',
    marginTop: 8,
  },
  backText: { fontFamily: FONTS.body, fontSize: 16, fontWeight: '700' },
});
