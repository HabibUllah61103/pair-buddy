import { useEffect, useState } from 'react';
import { ActivityIndicator, Pressable, StyleSheet, Text, View } from 'react-native';
import { router } from 'expo-router';
import { useAuth } from '../../src/lib/auth';
import { getStreak } from '../../src/lib/sparks';

const NAVY = '#123B63';
const TEAL = '#14B8A6';
const MUTED = '#8AA0B8';
const CARD = '#1A3A5C';

export default function MoreScreen() {
  const { user, signOut } = useAuth();
  const [streak, setStreak] = useState<number | null>(null);

  useEffect(() => {
    getStreak().then((r) => {
      if (r.data !== null) setStreak(r.data);
    });
  }, []);

  return (
    <View style={styles.root}>
      <Text style={styles.title}>More</Text>

      <View style={styles.card}>
        <Text style={styles.cardLabel}>Daily Spark streak</Text>
        {streak === null ? (
          <ActivityIndicator color={TEAL} />
        ) : (
          <Text style={styles.streakValue}>
            {streak} day{streak === 1 ? '' : 's'}
          </Text>
        )}
        <Text style={styles.cardHint}>
          Answer the spark together every day to keep it going.
        </Text>
      </View>

      <Pressable
        style={styles.rowButton}
        onPress={() => router.push('/date-ideas')}
      >
        <Text style={styles.rowButtonText}>Date ideas</Text>
      </Pressable>

      <Pressable
        style={styles.rowButton}
        onPress={() => router.push('/date-plans')}
      >
        <Text style={styles.rowButtonText}>My date plans</Text>
      </Pressable>

      <Pressable
        style={styles.rowButton}
        onPress={() => router.push('/discussion')}
      >
        <Text style={styles.rowButtonText}>Discussion</Text>
      </Pressable>

      <Pressable
        style={styles.rowButton}
        onPress={() => router.push('/(pairing)/invite')}
      >
        <Text style={styles.rowButtonText}>Invite partner</Text>
      </Pressable>

      <Text style={styles.signedInAs}>
        Signed in as {user?.email ?? user?.phone ?? 'you'}
      </Text>
      <Pressable style={styles.signOutButton} onPress={() => void signOut()}>
        <Text style={styles.signOutText}>Sign out</Text>
      </Pressable>
    </View>
  );
}

const styles = StyleSheet.create({
  root: { flex: 1, backgroundColor: NAVY, padding: 20 },
  title: { color: '#FFFFFF', fontSize: 24, fontWeight: '800', marginBottom: 16 },
  card: { backgroundColor: CARD, borderRadius: 16, padding: 18, marginBottom: 14 },
  cardLabel: {
    color: TEAL,
    fontSize: 12,
    fontWeight: '700',
    textTransform: 'uppercase',
    marginBottom: 8,
  },
  streakValue: { color: '#FFFFFF', fontSize: 28, fontWeight: '800' },
  cardHint: { color: MUTED, fontSize: 14, marginTop: 8, lineHeight: 20 },
  rowButton: {
    backgroundColor: CARD,
    borderRadius: 14,
    paddingVertical: 16,
    paddingHorizontal: 18,
    marginBottom: 12,
  },
  rowButtonText: { color: '#FFFFFF', fontSize: 16, fontWeight: '600' },
  signedInAs: { color: MUTED, fontSize: 14, textAlign: 'center', marginBottom: 16, marginTop: 12 },
  signOutButton: {
    borderWidth: 1.5,
    borderColor: '#3A5470',
    borderRadius: 14,
    paddingVertical: 12,
    alignItems: 'center',
  },
  signOutText: { color: '#FFFFFF', fontSize: 15, fontWeight: '600' },
});
