import { Image, Pressable, StyleSheet, Text, View } from 'react-native';
import { Ionicons } from '@expo/vector-icons';
import type { Memory } from '../lib/memories';
import { FONTS } from '../theme';
import { useTheme } from '../lib/theme-provider';

export function formatMemoryDate(iso: string): string {
  const d = new Date(iso);
  if (Number.isNaN(d.getTime())) return '';
  return d.toLocaleDateString(undefined, {
    month: 'short',
    day: 'numeric',
    year: 'numeric',
  });
}

type Props = {
  memory: Memory;
  onPress: () => void;
};

export default function MemoryCard({ memory, onPress }: Props) {
  const { tokens } = useTheme();
  return (
    <Pressable
      style={[styles.card, { backgroundColor: tokens.card }]}
      onPress={onPress}
    >
      {memory.signed_url ? (
        <Image
          source={{ uri: memory.signed_url }}
          style={styles.image}
          resizeMode="cover"
        />
      ) : (
        <View
          style={[
            styles.image,
            styles.imageFallback,
            { backgroundColor: tokens.wash },
          ]}
        >
          <Ionicons name="image-outline" size={32} color={tokens.muted} />
        </View>
      )}
      <View style={styles.meta}>
        <Text style={[styles.caption, { color: tokens.ink }]} numberOfLines={1}>
          {memory.caption?.trim() ? memory.caption : 'Untitled memory'}
        </Text>
        <Text style={[styles.date, { color: tokens.muted }]}>
          {formatMemoryDate(memory.created_at)}
        </Text>
      </View>
    </Pressable>
  );
}

const styles = StyleSheet.create({
  card: {
    flex: 1,
    borderRadius: 14,
    overflow: 'hidden',
    margin: 6,
  },
  image: {
    width: '100%',
    aspectRatio: 1,
  },
  imageFallback: {
    alignItems: 'center',
    justifyContent: 'center',
  },
  meta: {
    paddingVertical: 8,
    paddingHorizontal: 10,
  },
  caption: {
    fontFamily: FONTS.body,
    fontSize: 13,
    fontWeight: '600',
  },
  date: {
    fontFamily: FONTS.body,
    fontSize: 11,
    marginTop: 2,
  },
});
