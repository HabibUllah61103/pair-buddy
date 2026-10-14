import { Image, Pressable, StyleSheet, Text, View } from 'react-native';
import { Ionicons } from '@expo/vector-icons';
import type { Memory } from '../lib/memories';

const CARD = '#1A3A5C';
const WHITE = '#FFFFFF';
const MUTED = '#8AA0B8';

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
  return (
    <Pressable style={styles.card} onPress={onPress}>
      {memory.signed_url ? (
        <Image
          source={{ uri: memory.signed_url }}
          style={styles.image}
          resizeMode="cover"
        />
      ) : (
        <View style={[styles.image, styles.imageFallback]}>
          <Ionicons name="image-outline" size={32} color={MUTED} />
        </View>
      )}
      <View style={styles.meta}>
        <Text style={styles.caption} numberOfLines={1}>
          {memory.caption?.trim() ? memory.caption : 'Untitled memory'}
        </Text>
        <Text style={styles.date}>{formatMemoryDate(memory.created_at)}</Text>
      </View>
    </Pressable>
  );
}

const styles = StyleSheet.create({
  card: {
    flex: 1,
    backgroundColor: CARD,
    borderRadius: 14,
    overflow: 'hidden',
    margin: 6,
  },
  image: {
    width: '100%',
    aspectRatio: 1,
    backgroundColor: '#14283F',
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
    color: WHITE,
    fontSize: 13,
    fontWeight: '600',
  },
  date: {
    color: MUTED,
    fontSize: 11,
    marginTop: 2,
  },
});
