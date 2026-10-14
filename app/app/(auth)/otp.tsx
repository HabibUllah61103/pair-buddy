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
import { useAuth } from '../../src/lib/auth';
import { FONTS } from '../../src/theme';
import { useTheme } from '../../src/lib/theme-provider';
const RESEND_COOLDOWN_SECONDS = 30;

export default function OtpScreen() {
  const { tokens } = useTheme();
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
    <View style={[styles.container, { backgroundColor: tokens.background }]}>
      <View style={styles.inner}>
        <Text style={[styles.title, { color: tokens.ink }]}>
          Check your messages
        </Text>
        <Text style={[styles.subtitle, { color: tokens.primary }]}>
          We sent a 6-digit code to {phoneNumber || 'your phone'}.
        </Text>

        <TextInput
          style={[
            styles.codeInput,
            { backgroundColor: tokens.card, color: tokens.ink },
          ]}
          value={code}
          onChangeText={(t) => setCode(t.replace(/[^0-9]/g, '').slice(0, 6))}
          keyboardType="number-pad"
          maxLength={6}
          autoFocus
          editable={!busy}
          placeholder="••••••"
          placeholderTextColor={tokens.muted}
        />

        <Pressable
          style={[
            styles.button,
            { backgroundColor: tokens.primary },
            code.length < 6 && styles.buttonDisabled,
          ]}
          onPress={onVerify}
          disabled={busy || code.length < 6}
        >
          {busy ? (
            <ActivityIndicator color={tokens.onPrimary} />
          ) : (
            <Text style={[styles.buttonText, { color: tokens.onPrimary }]}>
              Verify
            </Text>
          )}
        </Pressable>

        <Pressable onPress={onResend} disabled={resending || cooldown > 0}>
          {resending ? (
            <ActivityIndicator color={tokens.primary} />
          ) : (
            <Text
              style={[
                styles.link,
                { color: cooldown > 0 ? tokens.muted : tokens.ink },
                cooldown > 0 && styles.linkNoUnderline,
              ]}
            >
              {cooldown > 0 ? `Resend code in ${cooldown}s` : 'Resend code'}
            </Text>
          )}
        </Pressable>

        {error ? (
          <Text style={[styles.error, { color: tokens.danger }]}>{error}</Text>
        ) : null}
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  inner: {
    flex: 1,
    justifyContent: 'center',
    padding: 28,
  },
  title: {
    fontFamily: FONTS.headingBold,
    fontSize: 28,
    textAlign: 'center',
  },
  subtitle: {
    fontFamily: FONTS.body,
    fontSize: 15,
    textAlign: 'center',
    marginTop: 8,
    marginBottom: 32,
  },
  codeInput: {
    fontFamily: FONTS.headingBold,
    borderRadius: 14,
    paddingVertical: 16,
    fontSize: 28,
    textAlign: 'center',
    letterSpacing: 12,
    marginBottom: 20,
  },
  button: {
    borderRadius: 14,
    paddingVertical: 15,
    alignItems: 'center',
    marginBottom: 16,
  },
  buttonDisabled: {
    opacity: 0.5,
  },
  buttonText: {
    fontFamily: FONTS.bodySemi,
    fontSize: 16,
  },
  link: {
    fontFamily: FONTS.bodySemi,
    fontSize: 15,
    textDecorationLine: 'underline',
    textAlign: 'center',
  },
  linkNoUnderline: {
    textDecorationLine: 'none',
  },
  error: {
    fontFamily: FONTS.body,
    fontSize: 14,
    textAlign: 'center',
    marginTop: 16,
  },
});
