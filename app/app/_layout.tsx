import { useEffect, useRef } from 'react';
import type { ReactNode } from 'react';
import { ActivityIndicator, StyleSheet, Text, View } from 'react-native';
import { Stack, useRouter, useSegments } from 'expo-router';
import { useFonts } from 'expo-font';
import {
  Fredoka_600SemiBold,
  Fredoka_700Bold,
} from '@expo-google-fonts/fredoka';
import {
  Nunito_400Regular,
  Nunito_600SemiBold,
  Nunito_700Bold,
  Nunito_800ExtraBold,
} from '@expo-google-fonts/nunito';
import * as Linking from 'expo-linking';
import { AuthProvider, useAuth } from '../src/lib/auth';
import { ThemeProvider, useTheme } from '../src/lib/theme-provider';
import {
  extractInviteCode,
  setPendingInviteCode,
  takePendingInviteCode,
} from '../src/lib/deeplinks';
import { initPush, resetPushInit } from '../src/lib/push';
import { FONTS } from '../src/theme';

function AuthGuard({ children }: { children: ReactNode }) {
  const { session, loading } = useAuth();
  const segments = useSegments();
  const router = useRouter();
  // Read the current segments through a ref so the redirect effect below does
  // NOT subscribe to navigation state. Subscribing (segments in the dep array)
  // creates a feedback loop: router.replace() mutates the navigation state,
  // which re-renders this guard, which re-runs the effect, which calls
  // router.replace() again -> "Maximum update depth exceeded".
  const segmentsRef = useRef(segments);
  segmentsRef.current = segments;

  useEffect(() => {
    if (loading) return;
    const inAuthGroup = segmentsRef.current[0] === '(auth)';
    if (!session && !inAuthGroup) {
      router.replace('/(auth)/login');
    } else if (session && inAuthGroup) {
      router.replace('/');
    }
  }, [session, loading, router]);

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
    return <ThemedSplash />;
  }

  return <>{children}</>;
}

function ThemedSplash() {
  const { tokens } = useTheme();
  return (
    <View style={[styles.splash, { backgroundColor: tokens.background }]}>
      <Text style={[styles.splashTitle, { color: tokens.ink, fontFamily: FONTS.headingBold }]}>
        Pair Buddy
      </Text>
      <ActivityIndicator color={tokens.primary} />
    </View>
  );
}

export default function RootLayout() {
  const [fontsLoaded, fontError] = useFonts({
    Fredoka_600SemiBold,
    Fredoka_700Bold,
    Nunito_400Regular,
    Nunito_600SemiBold,
    Nunito_700Bold,
    Nunito_800ExtraBold,
  });

  // If font loading fails, log it and proceed with system fonts rather than
  // hanging on the splash forever.
  useEffect(() => {
    if (fontError) {
      console.warn('Font loading failed, falling back to system fonts:', fontError);
    }
  }, [fontError]);

  const ready = fontsLoaded || !!fontError;

  return (
    <ThemeProvider>
      {!ready ? (
        <ThemedSplash />
      ) : (
        <AuthProvider>
          <AuthGuard>
            <Stack screenOptions={{ headerShown: false }}>
              <Stack.Screen name="index" />
              <Stack.Screen name="(auth)" />
              <Stack.Screen name="auth" />
              <Stack.Screen name="(onboarding)" />
              <Stack.Screen name="(pairing)" />
              <Stack.Screen name="(tabs)" />
              <Stack.Screen name="date-ai" />
              <Stack.Screen name="date-ideas" />
              <Stack.Screen name="date-plans" />
              <Stack.Screen name="discussion" />
              <Stack.Screen name="quiz-play" />
              <Stack.Screen name="quiz-results" />
              <Stack.Screen name="widget-settings" />
            </Stack>
          </AuthGuard>
        </AuthProvider>
      )}
    </ThemeProvider>
  );
}

const styles = StyleSheet.create({
  splash: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
    gap: 16,
  },
  splashTitle: {
    fontSize: 32,
  },
});
