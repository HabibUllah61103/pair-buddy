import { useEffect, useState } from 'react';
import {
  ActivityIndicator,
  Pressable,
  StyleSheet,
  Text,
  View,
} from 'react-native';
import { router } from 'expo-router';
import { useAuth } from '../src/lib/auth';
import { getOnboardingComplete } from '../src/lib/onboarding';

const NAVY = '#123B63';
const TEAL = '#14B8A6';
const MUTED = '#8AA0B8';

export default function HomeScreen() {
  const { user, loading: authLoading, signOut } = useAuth();
  const [checking, setChecking] = useState(true);
  const [onboarded, setOnboarded] = useState(false);

  useEffect(() => {
    getOnboardingComplete().then((done) => {
      setOnboarded(done);
      setChecking(false);
    });
  }, []);

  useEffect(() => {
    if (!authLoading && !checking && !onboarded) {
      router.replace('/(onboarding)');
    }
  }, [authLoading, checking, onboarded]);

  if (authLoading || checking || !onboarded) {
    return (
      <View style={styles.loading}>
        <ActivityIndicator color={TEAL} />
      </View>
    );
  }

  const handleSignOut = () => {
    void signOut();
  };

  return (
    <View style={styles.container}>
      <Text style={styles.title}>Pair Buddy</Text>
      <Text style={styles.subtitle}>
        Signed in as {user?.email ?? user?.phone ?? 'you'}
      </Text>
      <Text style={styles.hint}>
        Home screen lands here next: daily spark, memories, and your partner.
      </Text>
      <Pressable style={styles.signOutButton} onPress={handleSignOut}>
        <Text style={styles.signOutText}>Sign out</Text>
      </Pressable>
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
    marginBottom: 8,
  },
  subtitle: {
    color: TEAL,
    fontSize: 15,
    marginBottom: 16,
  },
  hint: {
    color: MUTED,
    fontSize: 14,
    textAlign: 'center',
    marginBottom: 32,
  },
  signOutButton: {
    borderWidth: 1.5,
    borderColor: '#3A5470',
    borderRadius: 14,
    paddingHorizontal: 28,
    paddingVertical: 12,
  },
  signOutText: {
    color: '#FFFFFF',
    fontSize: 15,
    fontWeight: '600',
  },
});
