import { useCallback, useEffect, useState } from 'react';
import {
  ActivityIndicator,
  FlatList,
  Pressable,
  StyleSheet,
  Text,
  View,
} from 'react-native';
import { Ionicons } from '@expo/vector-icons';
import { router } from 'expo-router';
import { getPacks, getPackProgress, type QuizPack } from '../../src/lib/quiz';
import { COLORS } from '../../src/theme';

const NAVY = COLORS.navy;
const CARD = '#1B3A5F';
const TEAL = COLORS.teal;
const CORAL = '#FF6B5E';
const WHITE = COLORS.white;
const MUTED = COLORS.muted;

const PACK_COLORS: Record<string, string> = {
  fun: CORAL,
  deep: '#7C6CF0',
  memories: '#F2A93B',
  dreams: TEAL,
  'daily-life': '#4FA3E3',
};

type PackWithProgress = QuizPack & { answeredBoth: number };

export default function QuizzesScreen() {
  const [packs, setPacks] = useState<PackWithProgress[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const load = useCallback(async () => {
    setLoading(true);
    setError(null);
    const res = await getPacks();
    if (res.error || !res.data) {
      setError(res.error ?? 'Could not load packs.');
      setLoading(false);
      return;
    }
    const withProgress: PackWithProgress[] = [];
    for (const pack of res.data) {
      const prog = await getPackProgress(pack.category);
      withProgress.push({
        ...pack,
        answeredBoth: prog.data?.answeredBoth ?? 0,
      });
    }
    setPacks(withProgress);
    setLoading(false);
  }, []);

  useEffect(() => {
    void load();
  }, [load]);

  const renderPack = ({ item }: { item: PackWithProgress }) => {
    const pct =
      item.questionCount > 0 ? item.answeredBoth / item.questionCount : 0;
    const color = PACK_COLORS[item.category] ?? TEAL;
    return (
      <Pressable
        style={styles.card}
        onPress={() =>
          router.push({ pathname: '/quiz-play', params: { category: item.category } })
        }
      >
        <View style={[styles.cover, { backgroundColor: color }]}>
          <Ionicons name="albums" size={28} color={WHITE} />
        </View>
        <View style={styles.info}>
          <Text style={styles.title}>{item.title}</Text>
          <Text style={styles.subtitle}>
            {item.questionCount} questions · {item.answeredBoth} answered together
          </Text>
          <View style={styles.barTrack}>
            <View style={[styles.barFill, { width: `${Math.round(pct * 100)}%` }]} />
          </View>
        </View>
        <Ionicons name="chevron-forward" size={20} color={MUTED} />
      </Pressable>
    );
  };

  return (
    <View style={styles.container}>
      <Text style={styles.header}>Quiz Packs</Text>
      <Text style={styles.lede}>
        Play through a pack together and compare answers.
      </Text>
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
        <FlatList
          data={packs}
          keyExtractor={(p) => p.category}
          renderItem={renderPack}
          contentContainerStyle={styles.list}
        />
      )}
    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1, backgroundColor: NAVY, paddingTop: 64, paddingHorizontal: 20 },
  header: { color: WHITE, fontSize: 28, fontWeight: '700' },
  lede: { color: MUTED, fontSize: 15, marginTop: 6, marginBottom: 20 },
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
  card: {
    flexDirection: 'row',
    alignItems: 'center',
    backgroundColor: CARD,
    borderRadius: 14,
    padding: 14,
    marginBottom: 12,
  },
  cover: {
    width: 52,
    height: 52,
    borderRadius: 12,
    alignItems: 'center',
    justifyContent: 'center',
    marginRight: 14,
  },
  info: { flex: 1 },
  title: { color: WHITE, fontSize: 17, fontWeight: '700' },
  subtitle: { color: MUTED, fontSize: 13, marginTop: 4 },
  barTrack: {
    height: 6,
    backgroundColor: NAVY,
    borderRadius: 3,
    marginTop: 8,
    overflow: 'hidden',
  },
  barFill: { height: 6, backgroundColor: TEAL, borderRadius: 3 },
});
