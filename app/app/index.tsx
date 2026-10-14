import { useEffect, useState } from 'react';
import { ActivityIndicator, StyleSheet, Text, View } from 'react-native';
import { router } from 'expo-router';
import { useAuth } from '../src/lib/auth';
import { getOnboardingComplete } from '../src/lib/onboarding';
import { getMyCoupleId, NOT_CONFIGURED } from '../src/lib/pairing';
import { getCoupleMemberCount } from '../src/lib/sparks';

const NAVY = '#123B63';
const TEAL = '#14B8A6';
const MUTED = '#8AA0B8';

export default function HomeScreen() {
  const { loading: authLoading } = useAuth();
  const [checking, setChecking] = useState(true);
  const [unconfigured, setUnconfigured] = useState(false);

  useEffect(() => {
    void (async () => {
      const done = await getOnboardingComplete();
      if (!done) {
        router.replace('/(onboarding)');
        return;
      }
      const couple = await getMyCoupleId();
      if (couple.error === NOT_CONFIGURED) {
        setUnconfigured(true);
        setChecking(false);
        return;
      }
      if (!couple.data) {
        router.replace('/(pairing)/invite');
        return;
      }
      const members = await getCoupleMemberCount();
      if ((members.data ?? 0) < 2) {
        router.replace('/(pairing)/invite');
        return;
      }
      router.replace('/(tabs)/spark');
    })();
  }, []);

  if (authLoading || checking) {
    return (
      <View style={styles.loading}>
        <ActivityIndicator color={TEAL} />
      </View>
    );
  }

  if (unconfigured) {
    return (
      <View style={styles.container}>
        <Text style={styles.title}>Pair Buddy</Text>
        <Text style={styles.hint}>
          The backend is not configured yet. Add EXPO_PUBLIC_SUPABASE_URL and
          EXPO_PUBLIC_SUPABASE_ANON_KEY to app/.env — see supabase/README.md.
        </Text>
      </View>
    );
  }

  return (
    <View style={styles.loading}>
      <ActivityIndicator color={TEAL} />
    </View>
  );
}

const styles = StyleSheet.create({
  loading: {
    flex: 1,
    backgroundColor: NAVY,
    alignItems: 'center',
    justifyContent: 'center',
  },
  container: {
    flex: 1,
    backgroundColor: NAVY,
    alignItems: 'center',
    justifyContent: 'center',
    padding: 24,
  },
  title: {
    color: '#FFFFFF',
    fontSize: 32,
    fontWeight: '800',
    marginBottom: 12,
  },
  hint: {
    color: MUTED,
    fontSize: 14,
    textAlign: 'center',
    lineHeight: 22,
  },
});
