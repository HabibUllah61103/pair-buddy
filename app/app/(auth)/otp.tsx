import { useEffect, useState } from 'react';
import {
  ActivityIndicator,
  Image,
  StyleSheet,
  Text,
  TextInput,
  View,
} from 'react-native';
import { useLocalSearchParams } from 'expo-router';
import { LinearGradient } from 'expo-linear-gradient';
import { useAuth } from '../../src/lib/auth';
import { FONTS } from '../../src/theme';
import { useTheme } from '../../src/lib/theme-provider';
import { FadeInView, SpringPress } from '../../src/components/animated';
import { RichIcon } from '../../src/components/rich-icon';

const RESEND_COOLDOWN_SECONDS = 30;

export default function OtpScreen() {
  const { tokens, mode } = useTheme();
  const { phone } = useLocalSearchParams<{ phone?: string }>();
  const phoneNumber = Array.isArray(phone) ? phone[0] : phone ?? '';
  const { verifyOtp, signInWithPhone } = useAuth();

  const [code, setCode] = useState('');
  const [busy, setBusy] = useState(false);
  const [resending, setResending] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [cooldown, setCooldown] = useState(RESEND_COOLDOWN_SECONDS);

  const bgSource =
    mode === 'dark'
      ? require('../../assets/bg-night-stars.png')
      : require('../../assets/bg-hearts-dreamy.png');

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

  const canVerify = code.length >= 6 && !busy;

  return (
    <View style={[styles.container, { backgroundColor: tokens.background }]}>
      <Image source={bgSource} style={styles.bg} resizeMode="cover" />
      <View style={styles.inner}>
        <FadeInView delay={0}>
          <View style={styles.iconWrap}>
            <RichIcon name="chatbubbles" size={28} tokens={tokens} variant="gradient" />
          </View>
          <Text style={[styles.title, { color: tokens.ink }]}>
            Check your messages
          </Text>
          <Text style={[styles.subtitle, { color: tokens.primary }]}>
            We sent a 6-digit code to {phoneNumber || 'your phone'}.
          </Text>
        </FadeInView>

        <FadeInView delay={120}>
          <View style={[styles.codeCard, styles.cardShadow, { backgroundColor: tokens.card }]}>
            <TextInput
              style={[styles.codeInput, { color: tokens.ink }]}
              value={code}
              onChangeText={(t) => setCode(t.replace(/[^0-9]/g, '').slice(0, 6))}
              keyboardType="number-pad"
              maxLength={6}
              autoFocus
              editable={!busy}
              placeholder="••••••"
              placeholderTextColor={tokens.muted}
            />
          </View>
        </FadeInView>

        <FadeInView delay={200}>
          <SpringPress onPress={canVerify ? onVerify : undefined}>
            <LinearGradient
              colors={tokens.gradient}
              start={{ x: 0, y: 0 }}
              end={{ x: 1, y: 0 }}
              style={[
                styles.button,
                styles.buttonShadow,
                !canVerify && styles.buttonDisabled,
              ]}
            >
              {busy ? (
                <ActivityIndicator color="#FFFFFF" />
              ) : (
                <Text style={styles.buttonText}>Verify</Text>
              )}
            </LinearGradient>
          </SpringPress>
        </FadeInView>

        <FadeInView delay={280}>
          <SpringPress
            onPress={resending || cooldown > 0 ? undefined : onResend}
          >
            <View style={styles.resendWrap}>
              {resending ? (
                <ActivityIndicator color={tokens.primary} />
              ) : (
                <Text
                  style={[
                    styles.link,
                    { color: cooldown > 0 ? tokens.muted : tokens.primary },
                  ]}
                >
                  {cooldown > 0 ? `Resend code in ${cooldown}s` : 'Resend code'}
                </Text>
              )}
            </View>
          </SpringPress>
        </FadeInView>

        {error ? (
          <FadeInView delay={0}>
            <View style={[styles.errorCard, { backgroundColor: tokens.card }]}>
              <Text style={[styles.error, { color: tokens.danger }]}>{error}</Text>
            </View>
          </FadeInView>
        ) : null}
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  bg: {
    ...StyleSheet.absoluteFillObject,
    opacity: 0.12,
  },
  inner: {
    flex: 1,
    justifyContent: 'center',
    padding: 28,
  },
  iconWrap: {
    alignSelf: 'center',
    marginBottom: 20,
  },
  title: {
    fontFamily: FONTS.headingBold,
    fontSize: 30,
    textAlign: 'center',
  },
  subtitle: {
    fontFamily: FONTS.body,
    fontSize: 15,
    textAlign: 'center',
    marginTop: 8,
    marginBottom: 32,
  },
  codeCard: {
    borderRadius: 24,
    paddingVertical: 8,
    paddingHorizontal: 16,
    marginBottom: 20,
  },
  cardShadow: {
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 4 },
    shadowOpacity: 0.08,
    shadowRadius: 12,
    elevation: 3,
  },
  codeInput: {
    fontFamily: FONTS.headingBold,
    fontSize: 30,
    textAlign: 'center',
    letterSpacing: 12,
    paddingVertical: 14,
  },
  button: {
    borderRadius: 20,
    paddingVertical: 16,
    alignItems: 'center',
    marginBottom: 8,
  },
  buttonShadow: {
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 6 },
    shadowOpacity: 0.18,
    shadowRadius: 12,
    elevation: 6,
  },
  buttonDisabled: {
    opacity: 0.5,
  },
  buttonText: {
    fontFamily: FONTS.bodySemi,
    fontSize: 16,
    color: '#FFFFFF',
  },
  resendWrap: {
    alignItems: 'center',
    paddingVertical: 12,
  },
  link: {
    fontFamily: FONTS.bodySemi,
    fontSize: 15,
    textAlign: 'center',
  },
  errorCard: {
    borderRadius: 18,
    padding: 16,
    marginTop: 16,
  },
  error: {
    fontFamily: FONTS.body,
    fontSize: 14,
    textAlign: 'center',
  },
});
