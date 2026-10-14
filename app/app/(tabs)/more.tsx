import { useCallback, useEffect, useState } from 'react';
import { ActivityIndicator, Pressable, ScrollView, StyleSheet, Text, View } from 'react-native';
import { router, useFocusEffect } from 'expo-router';
import { useAuth } from '../../src/lib/auth';
import { getStreak } from '../../src/lib/sparks';
import { getPartner } from '../../src/lib/location';
import { useTheme } from '../../src/lib/theme-provider';
import { FONTS } from '../../src/theme';
import {
  clearFailed,
  getFailedCount,
  getPendingCount,
  retryOutbox,
} from '../../src/lib/sync';

export default function MoreScreen() {
  const { user, signOut } = useAuth();
  const [streak, setStreak] = useState<number | null>(null);
  const [pending, setPending] = useState(0);
  const [failed, setFailed] = useState(0);
  const [syncing, setSyncing] = useState(false);
  const [partnerName, setPartnerName] = useState<string | null>(null);
  const [partnerLoading, setPartnerLoading] = useState(true);
  const { theme, themes, modeSetting, setThemeId, setModeSetting, tokens } = useTheme();

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
      setPartnerLoading(true);
      getPartner().then((r) => {
        setPartnerName(r.data?.name ?? null);
        setPartnerLoading(false);
      });
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
    <ScrollView style={[styles.scroll, { backgroundColor: tokens.background }]} contentContainerStyle={styles.root}>
      <Text style={[styles.title, { color: tokens.ink }]}>More</Text>

      <View style={[styles.card, { backgroundColor: tokens.card }]}>
        <Text style={[styles.cardLabel, { color: tokens.primary }]}>Daily Spark streak</Text>
        {streak === null ? (
          <ActivityIndicator color={tokens.primary} />
        ) : (
          <Text style={[styles.streakValue, { color: tokens.ink }]}>
            {streak} day{streak === 1 ? '' : 's'}
          </Text>
        )}
        <Text style={[styles.cardHint, { color: tokens.muted }]}>
          Answer the spark together every day to keep it going.
        </Text>
      </View>

      <Pressable
        style={[styles.rowButton, { backgroundColor: tokens.card }]}
        onPress={() => router.push('/date-ideas')}
      >
        <Text style={[styles.rowButtonText, { color: tokens.ink }]}>Date ideas</Text>
      </Pressable>

      <Pressable
        style={[styles.rowButton, { backgroundColor: tokens.card }]}
        onPress={() => router.push('/date-ai')}
      >
        <Text style={[styles.rowButtonText, { color: tokens.ink }]}>AI date planner</Text>
      </Pressable>

      <Pressable
        style={[styles.rowButton, { backgroundColor: tokens.card }]}
        onPress={() => router.push('/date-plans')}
      >
        <Text style={[styles.rowButtonText, { color: tokens.ink }]}>My date plans</Text>
      </Pressable>

      <Pressable
        style={[styles.rowButton, { backgroundColor: tokens.card }]}
        onPress={() => router.push('/discussion')}
      >
        <Text style={[styles.rowButtonText, { color: tokens.ink }]}>Discussion</Text>
      </Pressable>

      <Pressable
        style={[styles.rowButton, { backgroundColor: tokens.card }]}
        onPress={() => router.push('/widget-settings')}
      >
        <Text style={[styles.rowButtonText, { color: tokens.ink }]}>Home widgets</Text>
      </Pressable>

      <View style={[styles.card, { backgroundColor: tokens.card }]}>
        <Text style={[styles.cardLabel, { color: tokens.primary }]}>Pending sync</Text>
        {pending === 0 && failed === 0 ? (
          <Text style={[styles.cardHint, { color: tokens.muted }]}>Everything is synced.</Text>
        ) : (
          <>
            {pending > 0 && (
              <Text style={[styles.syncValue, { color: tokens.ink }]}>
                {pending} change{pending === 1 ? '' : 's'} waiting to send
              </Text>
            )}
            {failed > 0 && (
              <Text style={[styles.syncFailed, { color: tokens.warning }]}>
                {failed} could not be sent after several tries
              </Text>
            )}
            <Pressable
              style={[styles.retryButton, { backgroundColor: tokens.primary }]}
              disabled={syncing}
              onPress={() => void onRetry()}
            >
              <Text style={[styles.retryText, { color: tokens.onPrimary }]}>
                {syncing ? 'Retrying...' : 'Retry now'}
              </Text>
            </Pressable>
            {failed > 0 && !syncing && (
              <Pressable onPress={() => void onClearFailed()}>
                <Text style={[styles.clearText, { color: tokens.muted }]}>Discard failed changes</Text>
              </Pressable>
            )}
          </>
        )}
        <Text style={[styles.cardHint, { color: tokens.muted }]}>
          Changes made while offline send automatically when you reconnect.
        </Text>
      </View>

      {partnerLoading ? (
        <View style={[styles.card, { backgroundColor: tokens.card }]}>
          <ActivityIndicator color={tokens.primary} />
        </View>
      ) : partnerName ? (
        <View style={[styles.card, { backgroundColor: tokens.card }]}>
          <Text style={[styles.cardLabel, { color: tokens.primary }]}>Your partner</Text>
          <Text style={[styles.partnerName, { color: tokens.ink }]}>{partnerName}</Text>
          <Text style={[styles.cardHint, { color: tokens.muted }]}>Paired and sharing Pair Buddy together.</Text>
        </View>
      ) : (
        <Pressable
          style={[styles.rowButton, { backgroundColor: tokens.card }]}
          onPress={() => router.push('/(pairing)/invite')}
        >
          <Text style={[styles.rowButtonText, { color: tokens.ink }]}>Invite partner</Text>
        </Pressable>
      )}

      <View style={[styles.card, { backgroundColor: tokens.card }]}>
        <Text style={[styles.cardLabel, { color: tokens.primary }]}>Theme</Text>
        <View style={styles.themeGrid}>
          {themes.map((td) => (
            <Pressable
              key={td.id}
              onPress={() => setThemeId(td.id)}
              style={[
                styles.themeDot,
                { backgroundColor: td.primary },
                td.id === theme.id && { borderColor: tokens.ink },
              ]}
              accessibilityLabel={td.name}
            >
              {td.id === theme.id && <Text style={styles.themeDotCheck}>✓</Text>}
            </Pressable>
          ))}
        </View>
        <Text style={[styles.themeName, { color: tokens.ink }]}>{theme.name}</Text>
        <View style={styles.modeRow}>
          {(['light', 'dark', 'system'] as const).map((m) => (
            <Pressable
              key={m}
              onPress={() => setModeSetting(m)}
              style={[
                styles.modePill,
                { borderColor: tokens.border },
                modeSetting === m && { backgroundColor: tokens.primary, borderColor: tokens.primary },
              ]}
            >
              <Text
                style={[
                  styles.modePillText,
                  { color: modeSetting === m ? tokens.onPrimary : tokens.muted },
                ]}
              >
                {m[0].toUpperCase() + m.slice(1)}
              </Text>
            </Pressable>
          ))}
        </View>
      </View>

      <Text style={[styles.signedInAs, { color: tokens.muted }]}>
        Signed in as {user?.email ?? user?.phone ?? 'you'}
      </Text>
      <Pressable style={[styles.signOutButton, { borderColor: tokens.border }]} onPress={() => void signOut()}>
        <Text style={[styles.signOutText, { color: tokens.ink }]}>Sign out</Text>
      </Pressable>
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  scroll: { flex: 1 },
  root: { padding: 20 },
  title: { fontFamily: FONTS.heading, fontSize: 24, fontWeight: '800', marginBottom: 16 },
  card: { borderRadius: 16, padding: 18, marginBottom: 14 },
  cardLabel: {
    fontFamily: FONTS.body,
    fontSize: 12,
    fontWeight: '700',
    textTransform: 'uppercase',
    marginBottom: 8,
  },
  streakValue: { fontFamily: FONTS.heading, fontSize: 28, fontWeight: '800' },
  partnerName: { fontFamily: FONTS.heading, fontSize: 22, fontWeight: '800' },
  cardHint: { fontFamily: FONTS.body, fontSize: 14, marginTop: 8, lineHeight: 20 },
  syncValue: { fontFamily: FONTS.heading, fontSize: 20, fontWeight: '800' },
  syncFailed: { fontFamily: FONTS.body, fontSize: 14, marginTop: 6, lineHeight: 20 },
  retryButton: {
    borderRadius: 12,
    paddingVertical: 12,
    alignItems: 'center',
    marginTop: 12,
  },
  retryText: { fontFamily: FONTS.body, fontSize: 15, fontWeight: '700' },
  clearText: {
    fontFamily: FONTS.body,
    fontSize: 14,
    textAlign: 'center',
    marginTop: 10,
    textDecorationLine: 'underline',
  },
  rowButton: {
    borderRadius: 14,
    paddingVertical: 16,
    paddingHorizontal: 18,
    marginBottom: 12,
  },
  rowButtonText: { fontFamily: FONTS.body, fontSize: 16, fontWeight: '600' },
  signedInAs: { fontFamily: FONTS.body, fontSize: 14, textAlign: 'center', marginBottom: 16, marginTop: 12 },
  themeGrid: { flexDirection: 'row', flexWrap: 'wrap', gap: 12, marginTop: 4 },
  themeDot: {
    width: 44, height: 44, borderRadius: 22,
    alignItems: 'center', justifyContent: 'center',
    borderWidth: 2, borderColor: 'transparent',
  },

  themeDotCheck: { color: '#FFFFFF', fontSize: 18, fontWeight: '800' },
  themeName: { fontFamily: FONTS.body, fontSize: 15, fontWeight: '700', marginTop: 12 },
  modeRow: { flexDirection: 'row', gap: 8, marginTop: 12 },
  modePill: {
    paddingVertical: 8, paddingHorizontal: 16, borderRadius: 999,
    borderWidth: 1,
  },
  modePillText: { fontFamily: FONTS.body, fontSize: 14, fontWeight: '600' },
  signOutButton: {
    borderWidth: 1.5,
    borderRadius: 14,
    paddingVertical: 12,
    alignItems: 'center',
  },
  signOutText: { fontFamily: FONTS.body, fontSize: 15, fontWeight: '600' },
});
