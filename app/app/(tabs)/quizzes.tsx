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
import { FONTS } from '../../src/theme';
import { useTheme } from '../../src/lib/theme-provider';

const PACK_COLORS: Record<string, string> = {
  fun: '#FF6B5E',
  deep: '#7C6CF0',
  memories: '#F2A93B',
  dreams: '#14B8A6',
  'daily-life': '#4FA3E3',
};

type PackWithProgress = QuizPack & { answeredBoth: number };

export default function QuizzesScreen() {
  const { tokens } = useTheme();
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
    const color = PACK_COLORS[item.category] ?? tokens.primary;
    return (
      <Pressable
        style={[styles.card, { backgroundColor: tokens.card }]}
        onPress={() =>
          router.push({ pathname: '/quiz-play', params: { category: item.category } })
        }
      >
        <View style={[styles.cover, { backgroundColor: color }]}>
          <Ionicons name="albums" size={28} color={tokens.white} />
        </View>
        <View style={styles.info}>
          <Text style={[styles.title, { color: tokens.ink }]}>{item.title}</Text>
          <Text style={[styles.subtitle, { color: tokens.muted }]}>
            {item.questionCount} questions · {item.answeredBoth} answered together
          </Text>
          <View style={[styles.barTrack, { backgroundColor: tokens.background }]}>
            <View style={[styles.barFill, { backgroundColor: tokens.primary, width: `${Math.round(pct * 100)}%` }]} />
          </View>
        </View>
        <Ionicons name="chevron-forward" size={20} color={tokens.muted} />
      </Pressable>
    );
  };

  return (
    <View style={[styles.container, { backgroundColor: tokens.background }]}>
      <Text style={[styles.header, { color: tokens.ink }]}>Quiz Packs</Text>
      <Text style={[styles.lede, { color: tokens.muted }]}>
        Play through a pack together and compare answers.
      </Text>
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
  container: { flex: 1, paddingTop: 64, paddingHorizontal: 20 },
  header: { fontFamily: FONTS.headingBold, fontSize: 28 },
  lede: { fontFamily: FONTS.body, fontSize: 15, marginTop: 6, marginBottom: 20 },
  loader: { marginTop: 40 },
  center: { alignItems: 'center', marginTop: 40 },
  error: { fontFamily: FONTS.body, fontSize: 15, textAlign: 'center' },
  retry: {
    marginTop: 16,
    paddingHorizontal: 20,
    paddingVertical: 10,
    borderRadius: 8,
  },
  retryText: { fontFamily: FONTS.bodyBold },
  list: { paddingBottom: 32 },
  card: {
    flexDirection: 'row',
    alignItems: 'center',
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
  title: { fontFamily: FONTS.bodyBold, fontSize: 17 },
  subtitle: { fontFamily: FONTS.body, fontSize: 13, marginTop: 4 },
  barTrack: {
    height: 6,
    borderRadius: 3,
    marginTop: 8,
    overflow: 'hidden',
  },
  barFill: { height: 6, borderRadius: 3 },
});
