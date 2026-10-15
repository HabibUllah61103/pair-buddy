import { useEffect, useState } from 'react';
import { StyleSheet, Text, View } from 'react-native';
import { useRouter } from 'expo-router';
import type { SupabaseClient } from '@supabase/supabase-js';
import { useAuth } from '../src/lib/auth';
import { getOnboardingComplete, markOnboardingComplete } from '../src/lib/onboarding';
import { getMyCoupleId, NOT_CONFIGURED } from '../src/lib/pairing';
import { getCoupleMemberCount } from '../src/lib/sparks';
import { useTheme } from '../src/lib/theme-provider';
import { FONTS } from '../src/theme';
import { LoadingHeart } from '../src/components/loading-heart';

// Metro/Babel resolve this at runtime; declared here for TypeScript.
declare function require(name: string): any;

let cachedClient: SupabaseClient | null | undefined;

/** Lazy Supabase access — never throws at import time when unconfigured. */
function getClient(): SupabaseClient | null {
  if (cachedClient !== undefined) return cachedClient;
  try {
    cachedClient = require('../src/lib/supabase').supabase ?? null;
  } catch {
    cachedClient = null;
  }
  return cachedClient ?? null;
}

export default function HomeScreen() {
  const router = useRouter();
  const { tokens } = useTheme();
  const { session, user, loading: authLoading } = useAuth();
  const [checking, setChecking] = useState(true);
  const [unconfigured, setUnconfigured] = useState(false);

  useEffect(() => {
    if (authLoading) return;
    // Signed-out users must sign in before anything else — otherwise they'd
    // reach onboarding with no session and get stuck at "Finish".
    if (!session) {
      router.replace('/(auth)/login');
      return;
    }
    void (async () => {
      const done = await getOnboardingComplete();
      if (!done) {
        // The local flag may be missing on a fresh install even for existing
        // users — check the server before sending them through onboarding.
        const client = getClient();
        const userId = user?.id;
        if (client && userId) {
          try {
            const { data } = await client
              .from('profiles')
              .select('id')
              .eq('id', userId)
              .limit(1)
              .maybeSingle();
            if (data) {
              // Profile exists: onboarding was completed on another device.
              // Sync the local flag and continue to the couple check.
              await markOnboardingComplete();
            } else {
              router.replace('/(onboarding)');
              return;
            }
          } catch {
            // Server unreachable — fall through to onboarding, which handles
            // the offline path itself.
            router.replace('/(onboarding)');
            return;
          }
        } else {
          router.replace('/(onboarding)');
          return;
        }
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
  }, [session, user, authLoading]);

  if (authLoading || checking) {
    return (
      <View style={[styles.loading, { backgroundColor: tokens.background }]}>
        <LoadingHeart tokens={tokens} size={56} message="Getting things ready…" />
      </View>
    );
  }

  if (unconfigured) {
    return (
      <View style={[styles.container, { backgroundColor: tokens.background }]}>
        <Text style={[styles.title, { color: tokens.ink }]}>Pair Buddy</Text>
        <Text style={[styles.hint, { color: tokens.muted }]}>
          The backend is not configured yet. Add EXPO_PUBLIC_SUPABASE_URL and
          EXPO_PUBLIC_SUPABASE_ANON_KEY to app/.env — see supabase/README.md.
        </Text>
      </View>
    );
  }

  return (
    <View style={[styles.loading, { backgroundColor: tokens.background }]}>
      <LoadingHeart tokens={tokens} />
    </View>
  );
}

const styles = StyleSheet.create({
  loading: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
    padding: 24,
  },
  title: {
    fontFamily: FONTS.headingBold,
    fontSize: 32,
    marginBottom: 12,
  },
  hint: {
    fontFamily: FONTS.body,
    fontSize: 14,
    textAlign: 'center',
    lineHeight: 22,
  },
});
