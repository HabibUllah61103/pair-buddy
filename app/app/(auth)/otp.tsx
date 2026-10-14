import { useEffect, useState } from 'react';
import {
  ActivityIndicator,
  Pressable,
  StyleSheet,
  Text,
  TextInput,
  View,
} from 'react-native';
import { useLocalSearchParams } from 'expo-router';
import { useAuth } from '../src/lib/auth';
import { COLORS } from '../../src/theme';

const NAVY = COLORS.navy;
const TEAL = COLORS.teal;
const RESEND_COOLDOWN_SECONDS = 30;

export default function OtpScreen() {
  const { phone } = useLocalSearchParams<{ phone?: string }>();
  const phoneNumber = Array.isArray(phone) ? phone[0] : phone ?? '';
  const { verifyOtp, signInWithPhone } = useAuth();

  const [code, setCode] = useState('');
  const [busy, setBusy] = useState(false);
  const [resending, setResending] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [cooldown, setCooldown] = useState(RESEND_COOLDOWN_SECONDS);

  useEffect(() => {
    if (cooldown <= 0) return;
    const timer = setInterval(() => setCooldown((c) => c - 1), 1000);
    return () => clearInterval(timer);
  }, [cooldown]);

  const onVerify = async () => {
    setBusy(true);
    setError(null);
    try {
      const { error: verifyError } = await verifyOtp(phoneNumber, code);
      if (verifyError) setError(verifyError);
      // On success the auth state listener fires and the root guard routes home.
    } finally {
      setBusy(false);
    }
  };

  const onResend = async () => {
    if (cooldown > 0 || !phoneNumber) return;
    setResending(true);
    setError(null);
    try {
      const { error: resendError } = await signInWithPhone(phoneNumber);
      if (resendError) {
        setError(resendError);
      } else {
        setCooldown(RESEND_COOLDOWN_SECONDS);
      }
    } finally {
      setResending(false);
    }
  };

  return (
    <View style={styles.container}>
      <View style={styles.inner}>
        <Text style={styles.title}>Check your messages</Text>
        <Text style={styles.subtitle}>
          We sent a 6-digit code to {phoneNumber || 'your phone'}.
        </Text>

        <TextInput
          style={styles.codeInput}
          value={code}
          onChangeText={(t) => setCode(t.replace(/[^0-9]/g, '').slice(0, 6))}
          keyboardType="number-pad"
          maxLength={6}
          autoFocus
          editable={!busy}
          placeholder="••••••"
          placeholderTextColor={COLORS.muted}
        />

        <Pressable
          style={[styles.button, code.length < 6 && styles.buttonDisabled]}
          onPress={onVerify}
          disabled={busy || code.length < 6}
        >
          {busy ? (
            <ActivityIndicator color={COLORS.white} />
          ) : (
            <Text style={styles.buttonText}>Verify</Text>
          )}
        </Pressable>

        <Pressable onPress={onResend} disabled={resending || cooldown > 0}>
          {resending ? (
            <ActivityIndicator color={TEAL} />
          ) : (
            <Text style={[styles.link, cooldown > 0 && styles.linkDisabled]}>
              {cooldown > 0 ? `Resend code in ${cooldown}s` : 'Resend code'}
            </Text>
          )}
        </Pressable>

        {error ? <Text style={styles.error}>{error}</Text> : null}
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: NAVY,
  },
  inner: {
    flex: 1,
    justifyContent: 'center',
    padding: 28,
  },
  title: {
    color: COLORS.white,
    fontSize: 28,
    fontWeight: '700',
    textAlign: 'center',
  },
  subtitle: {
    color: TEAL,
    fontSize: 15,
    textAlign: 'center',
    marginTop: 8,
    marginBottom: 32,
  },
  codeInput: {
    backgroundColor: COLORS.white,
    borderRadius: 14,
    paddingVertical: 16,
    fontSize: 28,
    fontWeight: '700',
    color: NAVY,
    textAlign: 'center',
    letterSpacing: 12,
    marginBottom: 20,
  },
  button: {
    backgroundColor: TEAL,
    borderRadius: 14,
    paddingVertical: 15,
    alignItems: 'center',
    marginBottom: 16,
  },
  buttonDisabled: {
    opacity: 0.5,
  },
  buttonText: {
    color: COLORS.white,
    fontSize: 16,
    fontWeight: '600',
  },
  link: {
    color: COLORS.white,
    fontSize: 15,
    fontWeight: '500',
    textDecorationLine: 'underline',
    textAlign: 'center',
  },
  linkDisabled: {
    color: COLORS.muted,
    textDecorationLine: 'none',
  },
  error: {
    color: '#FF9D9D',
    fontSize: 14,
    textAlign: 'center',
    marginTop: 16,
  },
});
