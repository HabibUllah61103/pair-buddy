import { useCallback, useEffect, useState } from 'react';
import {
  ActivityIndicator,
  FlatList,
  Image,
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
import { GradientHeader } from '../../src/components/gradient-header';
import { LinearGradient } from 'expo-linear-gradient';
import { FadeInView, SpringPress } from '../../src/components/animated';
import { RichIcon } from '../../src/components/rich-icon';

const PACK_COLORS: Record<string, string> = {
  fun: '#FF6B5E',
  deep: '#7C6CF0',
  memories: '#F2A93B',
  dreams: '#14B8A6',
  'daily-life': '#4FA3E3',
};

type PackWithProgress = QuizPack & { answeredBoth: number };

export default function QuizzesScreen() {
  const { tokens, mode } = useTheme();
  const [packs, setPacks] = useState<PackWithProgress[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const bgSource =
    mode === 'dark'
      ? require('../../assets/bg-night-stars.png')
      : require('../../assets/bg-hearts-dreamy.png');

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

  const renderPack = ({ item, index }: { item: PackWithProgress; index: number }) => {
    const pct =
      item.questionCount > 0 ? item.answeredBoth / item.questionCount : 0;
    const color = PACK_COLORS[item.category] ?? tokens.primary;
    return (
      <FadeInView delay={index * 80}>
        <Pressable
          style={[styles.card, { backgroundColor: tokens.card }]}
          onPress={() =>
            router.push({ pathname: '/quiz-play', params: { category: item.category } })
          }
        >
          <LinearGradient
            colors={[color, color + 'CC']}
            start={{ x: 0, y: 0 }}
            end={{ x: 1, y: 1 }}
            style={styles.cover}
          >
            <Ionicons name="albums" size={28} color="#FFFFFF" />
          </LinearGradient>
          <View style={styles.info}>
            <Text style={[styles.title, { color: tokens.ink }]}>{item.title}</Text>
            <Text style={[styles.subtitle, { color: tokens.muted }]}>
              {item.questionCount} questions · {item.answeredBoth} answered together
            </Text>
            <View style={[styles.barTrack, { backgroundColor: tokens.background }]}>
              <View style={[styles.barFill, { backgroundColor: tokens.primary, width: `${Math.round(pct * 100)}%` }]} />
            </View>
          </View>
          <RichIcon name="chevron-forward" size={14} tokens={tokens} variant="soft" />
        </Pressable>
      </FadeInView>
    );
  };

  return (
    <View style={[styles.container, { backgroundColor: tokens.background }]}>
      <Image source={bgSource} style={styles.bg} resizeMode="cover" />
      <GradientHeader
        title="Quiz Packs"
        subtitle="Play through a pack together and compare answers"
        tokens={tokens}
      />
      {loading ? (
        <ActivityIndicator color={tokens.primary} style={styles.loader} />
      ) : error ? (
        <View style={styles.center}>
          <Text style={[styles.error, { color: tokens.danger }]}>{error}</Text>
          <SpringPress onPress={() => void load()} style={styles.retryWrap}>
            <LinearGradient
              colors={tokens.gradient}
              start={{ x: 0, y: 0 }}
              end={{ x: 1, y: 0 }}
              style={styles.retry}
            >
              <Text style={styles.retryText}>Try again</Text>
            </LinearGradient>
          </SpringPress>
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

const BUBBLY_SHADOW = {
  shadowColor: '#000',
  shadowOffset: { width: 0, height: 4 },
  shadowOpacity: 0.08,
  shadowRadius: 12,
  elevation: 3,
};

const styles = StyleSheet.create({
  container: { flex: 1 },
  bg: {
    ...StyleSheet.absoluteFillObject,
    opacity: 0.12,
  },
  loader: { marginTop: 40 },
  center: { alignItems: 'center', marginTop: 40 },
  error: { fontFamily: FONTS.body, fontSize: 15, textAlign: 'center' },
  retryWrap: { marginTop: 16 },
  retry: {
    paddingHorizontal: 24,
    paddingVertical: 14,
    borderRadius: 18,
    alignItems: 'center',
  },
  retryText: { fontFamily: FONTS.bodyBold, color: '#FFFFFF', fontSize: 16 },
  list: { paddingBottom: 32, paddingTop: 20 },
  card: {
    flexDirection: 'row',
    alignItems: 'center',
    borderRadius: 24,
    padding: 20,
    marginBottom: 14,
    marginHorizontal: 20,
    ...BUBBLY_SHADOW,
  },
  cover: {
    width: 56,
    height: 56,
    borderRadius: 18,
    alignItems: 'center',
    justifyContent: 'center',
    marginRight: 14,
  },
  info: { flex: 1 },
  title: { fontFamily: FONTS.headingBold, fontSize: 19 },
  subtitle: { fontFamily: FONTS.body, fontSize: 13, marginTop: 4 },
  barTrack: {
    height: 6,
    borderRadius: 3,
    marginTop: 8,
    overflow: 'hidden',
  },
  barFill: { height: 6, borderRadius: 3 },
});
