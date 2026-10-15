import { useEffect } from 'react';
import { StyleSheet, View } from 'react-native';
import { useRouter } from 'expo-router';
import { useAuth } from '../../src/lib/auth';
import { useTheme } from '../../src/lib/theme-provider';
import { LoadingHeart } from '../../src/components/loading-heart';

/**
 * OAuth callback route: catches the `pairbuddy://auth/callback` deep link
 * that Supabase redirects to after Google/Apple sign-in.
 *
 * The actual token exchange happens in `AuthProvider` via its Linking
 * listener; this screen just needs to EXIST so expo-router doesn't show
 * "Unmatched Route", then hands off to the root router once the session
 * is ready.
 */
export default function AuthCallbackScreen() {
  const router = useRouter();
  const { tokens } = useTheme();
  const { session, loading } = useAuth();

  useEffect(() => {
    if (loading) return;
    // Session set (or failed) — let the root index decide where to go.
    router.replace('/');
  }, [session, loading]);

  return (
    <View style={[styles.container, { backgroundColor: tokens.background }]}>
      <LoadingHeart tokens={tokens} message="Signing you in…" />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
});
