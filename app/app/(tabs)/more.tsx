import { useCallback, useEffect, useState } from 'react';
import { ActivityIndicator, Image, Pressable, ScrollView, StyleSheet, Text, View } from 'react-native';
import { router, useFocusEffect } from 'expo-router';
import { useAuth } from '../../src/lib/auth';
import { getStreak } from '../../src/lib/sparks';
import { getPartner } from '../../src/lib/location';
import { useTheme } from '../../src/lib/theme-provider';
import { FONTS } from '../../src/theme';
import { GradientHeader } from '../../src/components/gradient-header';
import { LinearGradient } from 'expo-linear-gradient';
import { FadeInView, SpringPress, PulseView } from '../../src/components/animated';
import { CelebrationBurst } from '../../src/components/celebration';
import { RewardPop } from '../../src/components/reward-pop';
import { RichIcon } from '../../src/components/rich-icon';
import {
  clearFailed,
  getFailedCount,
  getPendingCount,
  retryOutbox,
} from '../../src/lib/sync';

const ROW_LINKS = [
  { label: 'Date ideas', route: '/date-ideas', icon: 'bulb' },
  { label: 'AI date planner', route: '/date-ai', icon: 'sparkles' },
  { label: 'My date plans', route: '/date-plans', icon: 'calendar' },
  { label: 'Discussion', route: '/discussion', icon: 'chatbubbles' },
  { label: 'Home widgets', route: '/widget-settings', icon: 'grid' },
] as const;

export default function MoreScreen() {
  const { user, signOut } = useAuth();
  const [streak, setStreak] = useState<number | null>(null);
  const [pending, setPending] = useState(0);
  const [failed, setFailed] = useState(0);
  const [syncing, setSyncing] = useState(false);
  const [partnerName, setPartnerName] = useState<string | null>(null);
  const [partnerLoading, setPartnerLoading] = useState(true);
  const { theme, themes, modeSetting, setThemeId, setModeSetting, tokens, mode } = useTheme();
  const isStreakMilestone = streak !== null && streak >= 7;

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
    <View style={{ flex: 1, backgroundColor: tokens.background }}>
      <Image
        source={
          mode === 'dark'
            ? require('../../assets/bg-night-stars.png')
            : require('../../assets/bg-hearts-dreamy.png')
        }
        style={styles.bg}
        resizeMode="cover"
      />
      <ScrollView style={styles.scroll} contentContainerStyle={styles.root}>
        <GradientHeader
          title="More"
          subtitle="Settings, themes & your partner"
          tokens={tokens}
        />

        <FadeInView delay={0}>
          <LinearGradient
            colors={tokens.gradientSoft}
            start={{ x: 0, y: 0 }}
            end={{ x: 1, y: 1 }}
            style={[styles.card, styles.streakCard]}
          >
            <Text style={[styles.cardLabel, { color: tokens.primary }]}>Daily Spark streak</Text>
            {streak === null ? (
              <ActivityIndicator color={tokens.primary} />
            ) : isStreakMilestone ? (
              <RewardPop visible>
                <Text style={[styles.streakValue, { color: tokens.ink }]}>
                  {streak} day{streak === 1 ? '' : 's'}
                </Text>
              </RewardPop>
            ) : (
              <PulseView>
                <Text style={[styles.streakValue, { color: tokens.ink }]}>
                  {streak} day{streak === 1 ? '' : 's'}
                </Text>
              </PulseView>
            )}
            {isStreakMilestone && (
              <CelebrationBurst trigger colors={tokens.gradient} />
            )}
            {streak !== null && streak >= 7 && (
              <Image
                source={require('../../assets/mascot-celebration.png')}
                style={styles.mascot}
                resizeMode="contain"
              />
            )}
            <Text style={[styles.cardHint, { color: tokens.muted }]}>
              Answer the spark together every day to keep it going.
            </Text>
          </LinearGradient>
        </FadeInView>

        {ROW_LINKS.map((row, idx) => (
          <FadeInView key={row.route} delay={(idx + 1) * 80}>
            <SpringPress
              onPress={() => router.push(row.route)}
              style={[styles.rowButton, { backgroundColor: tokens.card }]}
            >
              <RichIcon name={row.icon} size={18} tokens={tokens} variant="gradient" />
              <Text style={[styles.rowButtonText, { color: tokens.ink }]}>{row.label}</Text>
            </SpringPress>
          </FadeInView>
        ))}

        <FadeInView delay={480}>
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
                <SpringPress
                  onPress={() => void onRetry()}
                >
                  <LinearGradient
                    colors={tokens.gradient}
                    start={{ x: 0, y: 0 }}
                    end={{ x: 1, y: 0 }}
                    style={styles.retryButton}
                  >
                    <Text style={styles.retryText}>
                      {syncing ? 'Retrying...' : 'Retry now'}
                    </Text>
                  </LinearGradient>
                </SpringPress>
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
        </FadeInView>

        <FadeInView delay={560}>
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
            <SpringPress
              onPress={() => router.push('/(pairing)/invite')}
              style={[styles.rowButton, { backgroundColor: tokens.card }]}
            >
              <RichIcon name="person-add" size={18} tokens={tokens} variant="gradient" />
              <Text style={[styles.rowButtonText, { color: tokens.ink }]}>Invite partner</Text>
            </SpringPress>
          )}
        </FadeInView>

        <FadeInView delay={640}>
          <View style={[styles.card, { backgroundColor: tokens.card }]}>
            <Text style={[styles.cardLabel, { color: tokens.primary }]}>Theme</Text>
            <View style={styles.themeGrid}>
              {themes.map((td) => (
                <SpringPress
                  key={td.id}
                  onPress={() => setThemeId(td.id)}
                  style={[
                    styles.themeDot,
                    { backgroundColor: td.primary },
                    td.id === theme.id && { borderColor: tokens.ink },
                  ]}
                >
                  {td.id === theme.id && <Text style={styles.themeDotCheck}>✓</Text>}
                </SpringPress>
              ))}
            </View>
            <Text style={[styles.themeName, { color: tokens.ink }]}>{theme.name}</Text>
            <View style={styles.modeRow}>
              {(['light', 'dark', 'system'] as const).map((m) => (
                <SpringPress
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
                </SpringPress>
              ))}
            </View>
          </View>
        </FadeInView>

        <Text style={[styles.signedInAs, { color: tokens.muted }]}>
          Signed in as {user?.email ?? user?.phone ?? 'you'}
        </Text>
        <SpringPress style={[styles.signOutButton, { borderColor: tokens.border }]} onPress={() => void signOut()}>
          <Text style={[styles.signOutText, { color: tokens.ink }]}>Sign out</Text>
        </SpringPress>
      </ScrollView>
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
  scroll: { flex: 1 },
  bg: {
    ...StyleSheet.absoluteFillObject,
    opacity: 0.12,
  },
  root: { padding: 20, paddingTop: 20 },
  card: {
    borderRadius: 24,
    padding: 20,
    marginBottom: 14,
    backgroundColor: undefined,
    ...BUBBLY_SHADOW,
  },
  streakCard: { borderWidth: 0 },
  cardLabel: {
    fontFamily: FONTS.body,
    fontSize: 12,
    fontWeight: '700',
    textTransform: 'uppercase',
    marginBottom: 8,
  },
  streakValue: { fontFamily: FONTS.headingBold, fontSize: 32 },
  mascot: { width: 120, height: 120, alignSelf: 'center', marginTop: 8 },
  partnerName: { fontFamily: FONTS.headingBold, fontSize: 24 },
  cardHint: { fontFamily: FONTS.body, fontSize: 14, marginTop: 8, lineHeight: 20 },
  syncValue: { fontFamily: FONTS.heading, fontSize: 20, fontWeight: '800' },
  syncFailed: { fontFamily: FONTS.body, fontSize: 14, marginTop: 6, lineHeight: 20 },
  retryButton: {
    borderRadius: 18,
    paddingVertical: 14,
    alignItems: 'center',
    marginTop: 12,
  },
  retryText: { fontFamily: FONTS.body, fontSize: 15, fontWeight: '700', color: '#FFFFFF' },
  clearText: {
    fontFamily: FONTS.body,
    fontSize: 14,
    textAlign: 'center',
    marginTop: 10,
    textDecorationLine: 'underline',
  },
  rowButton: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 14,
    borderRadius: 20,
    paddingVertical: 16,
    paddingHorizontal: 20,
    marginBottom: 12,
    ...BUBBLY_SHADOW,
  },
  rowButtonText: { fontFamily: FONTS.body, fontSize: 16, fontWeight: '600', flex: 1 },
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
