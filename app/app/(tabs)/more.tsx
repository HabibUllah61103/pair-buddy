import { useCallback, useEffect, useState } from 'react';
import { ActivityIndicator, Pressable, ScrollView, StyleSheet, Text, View } from 'react-native';
import { router, useFocusEffect } from 'expo-router';
import { useAuth } from '../../src/lib/auth';
import { getStreak } from '../../src/lib/sparks';
import {
  clearFailed,
  getFailedCount,
  getPendingCount,
  retryOutbox,
} from '../../src/lib/sync';

const NAVY = '#123B63';
const TEAL = '#14B8A6';
const MUTED = '#8AA0B8';
const CARD = '#1A3A5C';
const WARN = '#E8A13D';

export default function MoreScreen() {
  const { user, signOut } = useAuth();
  const [streak, setStreak] = useState<number | null>(null);
  const [pending, setPending] = useState(0);
  const [failed, setFailed] = useState(0);
  const [syncing, setSyncing] = useState(false);

  useEffect(() => {
    getStreak().then((r) => {
      if (r.data !== null) setStreak(r.data);
    });
  }, []);

  const refreshSync = useCallback(async () => {
    setPending(await getPendingCount());
    setFailed(await getFailedCount());
  }, []);

  useFocusEffect(
    useCallback(() => {
      void refreshSync();
    }, [refreshSync]),
  );

  const onRetry = useCallback(async () => {
    setSyncing(true);
    try {
      await retryOutbox();
    } finally {
      setSyncing(false);
      await refreshSync();
    }
  }, [refreshSync]);

  const onClearFailed = useCallback(async () => {
    await clearFailed();
    await refreshSync();
  }, [refreshSync]);

  return (
    <ScrollView style={styles.scroll} contentContainerStyle={styles.root}>
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
        onPress={() => router.push('/widget-settings')}
      >
        <Text style={styles.rowButtonText}>Home widgets</Text>
      </Pressable>

      <View style={styles.card}>
        <Text style={styles.cardLabel}>Pending sync</Text>
        {pending === 0 && failed === 0 ? (
          <Text style={styles.cardHint}>Everything is synced.</Text>
        ) : (
          <>
            {pending > 0 && (
              <Text style={styles.syncValue}>
                {pending} change{pending === 1 ? '' : 's'} waiting to send
              </Text>
            )}
            {failed > 0 && (
              <Text style={styles.syncFailed}>
                {failed} could not be sent after several tries
              </Text>
            )}
            <Pressable
              style={styles.retryButton}
              disabled={syncing}
              onPress={() => void onRetry()}
            >
              <Text style={styles.retryText}>
                {syncing ? 'Retrying...' : 'Retry now'}
              </Text>
            </Pressable>
            {failed > 0 && !syncing && (
              <Pressable onPress={() => void onClearFailed()}>
                <Text style={styles.clearText}>Discard failed changes</Text>
              </Pressable>
            )}
          </>
        )}
        <Text style={styles.cardHint}>
          Changes made while offline send automatically when you reconnect.
        </Text>
      </View>

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
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  scroll: { flex: 1, backgroundColor: NAVY },
  root: { padding: 20 },
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
  syncValue: { color: '#FFFFFF', fontSize: 20, fontWeight: '800' },
  syncFailed: { color: WARN, fontSize: 14, marginTop: 6, lineHeight: 20 },
  retryButton: {
    backgroundColor: TEAL,
    borderRadius: 12,
    paddingVertical: 12,
    alignItems: 'center',
    marginTop: 12,
  },
  retryText: { color: '#FFFFFF', fontSize: 15, fontWeight: '700' },
  clearText: {
    color: MUTED,
    fontSize: 14,
    textAlign: 'center',
    marginTop: 10,
    textDecorationLine: 'underline',
  },
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
