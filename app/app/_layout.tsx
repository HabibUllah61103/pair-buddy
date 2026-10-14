import { useEffect } from 'react';
import type { ReactNode } from 'react';
import { ActivityIndicator, StyleSheet, Text, View } from 'react-native';
import { Stack, useRouter, useSegments } from 'expo-router';
import * as Linking from 'expo-linking';
import { AuthProvider, useAuth } from '../src/lib/auth';
import { ThemeProvider } from '../src/lib/theme-provider';
import {
  extractInviteCode,
  setPendingInviteCode,
  takePendingInviteCode,
} from '../src/lib/deeplinks';
import { initPush, resetPushInit } from '../src/lib/push';
import { COLORS } from '../src/theme';

const NAVY = COLORS.navy;
const TEAL = COLORS.teal;

function AuthGuard({ children }: { children: ReactNode }) {
  const { session, loading } = useAuth();
  const segments = useSegments();
  const router = useRouter();

  useEffect(() => {
    if (loading) return;
    const inAuthGroup = segments[0] === '(auth)';
    if (!session && !inAuthGroup) {
      router.replace('/(auth)/login');
    } else if (session && inAuthGroup) {
      router.replace('/');
    }
  }, [session, loading, segments, router]);

  // Push setup: register the device token once per signed-in session so the
  // partner can be notified; reset on sign-out so the next sign-in re-registers.
  useEffect(() => {
    if (loading) return;
    if (session) {
      initPush();
    } else {
      resetPushInit();
    }
  }, [session, loading]);

  // Invite deep links: pairbuddy://invite/ABC123 (and https://<domain>/invite/ABC123
  // once the universal-link domain is chosen). Signed-in users go straight to
  // the join screen; signed-out users get the code stashed until sign-in.
  useEffect(() => {
    const handleUrl = (url: string | null) => {
      if (!url) return;
      const code = extractInviteCode(url);
      if (!code) return;
      if (loading) return;
      if (!session) {
        setPendingInviteCode(code);
        return;
      }
      router.push({ pathname: '/(pairing)/join', params: { code } });
    };

    Linking.getInitialURL()
      .then(handleUrl)
      .catch(() => {});
    const subscription = Linking.addEventListener('url', ({ url }) => handleUrl(url));
    return () => subscription.remove();
  }, [session, loading, router]);

  // Consume a code that arrived while signed out, now that a session exists.
  useEffect(() => {
    if (loading || !session) return;
    const code = takePendingInviteCode();
    if (code) {
      router.push({ pathname: '/(pairing)/join', params: { code } });
    }
  }, [session, loading, router]);

  if (loading) {
    return (
      <View style={styles.splash}>
        <Text style={styles.splashTitle}>Pair Buddy</Text>
        <ActivityIndicator color={TEAL} />
      </View>
    );
  }

  return <>{children}</>;
}

export default function RootLayout() {
  return (
    <ThemeProvider>
      <AuthProvider>
        <AuthGuard>
          <Stack screenOptions={{ headerShown: false }}>
            <Stack.Screen name="index" />
            <Stack.Screen name="(auth)" />
            <Stack.Screen name="(onboarding)" />
            <Stack.Screen name="(pairing)" />
            <Stack.Screen name="(tabs)" />
          </Stack>
        </AuthGuard>
      </AuthProvider>
    </ThemeProvider>
  );
}

const styles = StyleSheet.create({
  splash: {
    flex: 1,
    backgroundColor: NAVY,
    alignItems: 'center',
    justifyContent: 'center',
    gap: 16,
  },
  splashTitle: {
    color: COLORS.white,
    fontSize: 32,
    fontWeight: '800',
  },
});
