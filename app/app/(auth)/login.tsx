import { useState } from 'react';
import {
  ActivityIndicator,
  Image,
  KeyboardAvoidingView,
  Platform,
  StyleSheet,
  Text,
  TextInput,
  View,
} from 'react-native';
import { router } from 'expo-router';
import { LinearGradient } from 'expo-linear-gradient';
import { useAuth } from '../../src/lib/auth';
import type { AuthResult } from '../../src/lib/auth';
import { FONTS } from '../../src/theme';
import { useTheme } from '../../src/lib/theme-provider';
import { FadeInView, SpringPress } from '../../src/components/animated';
import { RichIcon } from '../../src/components/rich-icon';

type Action = 'google' | 'apple' | 'phone';

export default function LoginScreen() {
  const { tokens, mode } = useTheme();
  const { signInWithGoogle, signInWithApple, signInWithPhone } = useAuth();
  const [showPhoneInput, setShowPhoneInput] = useState(false);
  const [phone, setPhone] = useState('');
  const [busy, setBusy] = useState<Action | null>(null);
  const [error, setError] = useState<string | null>(null);

  const bgSource =
    mode === 'dark'
      ? require('../../assets/bg-night-stars.png')
      : require('../../assets/bg-hearts-dreamy.png');

  const run = async (
    key: Action,
    fn: () => Promise<AuthResult>,
    onOk?: () => void
  ) => {
    setBusy(key);
    setError(null);
    try {
      const { error: fnError } = await fn();
      if (fnError) {
        setError(fnError);
      } else if (onOk) {
        onOk();
      }
    } finally {
      setBusy(null);
    }
  };

  const onGoogle = () => run('google', signInWithGoogle);
  const onApple = () => run('apple', signInWithApple);
  const onSendCode = () =>
    run('phone', () => signInWithPhone(phone), () => {
      router.push({ pathname: '/(auth)/otp', params: { phone: phone.trim() } });
    });

  const renderButton = (
    key: Action,
    label: string,
    onPress: () => void,
    primary = false
  ) => {
    const disabled = busy !== null;
    const content =
      busy === key ? (
        <ActivityIndicator color={primary ? tokens.onPrimary : tokens.ink} />
      ) : (
        <Text
          style={[
            styles.buttonText,
            { color: primary ? '#FFFFFF' : tokens.ink },
          ]}
        >
          {label}
        </Text>
      );
    return (
      <SpringPress onPress={disabled ? undefined : onPress}>
        {primary ? (
          <LinearGradient
            colors={tokens.gradient}
            start={{ x: 0, y: 0 }}
            end={{ x: 1, y: 0 }}
            style={[styles.button, styles.buttonShadow, disabled && styles.buttonDisabled]}
          >
            {content}
          </LinearGradient>
        ) : (
          <View
            style={[
              styles.button,
              styles.cardShadow,
              { backgroundColor: tokens.card },
              disabled && styles.buttonDisabled,
            ]}
          >
            {content}
          </View>
        )}
      </SpringPress>
    );
  };

  return (
    <KeyboardAvoidingView
      style={[styles.container, { backgroundColor: tokens.background }]}
      behavior={Platform.OS === 'ios' ? 'padding' : undefined}
    >
      <Image source={bgSource} style={styles.bg} resizeMode="cover" />
      <View style={styles.inner}>
        <FadeInView delay={0}>
          <View style={styles.logoWrap}>
            <RichIcon name="heart" size={28} tokens={tokens} variant="gradient" />
          </View>
          <Text style={[styles.title, { color: tokens.ink }]}>Pair Buddy</Text>
          <Text style={[styles.subtitle, { color: tokens.primary }]}>
            Your private space for two.
          </Text>
        </FadeInView>

        <View style={styles.buttons}>
          <FadeInView delay={120}>
            {renderButton('google', 'Continue with Google', onGoogle, true)}
          </FadeInView>
          {Platform.OS === 'ios' && (
            <FadeInView delay={200}>
              {renderButton('apple', 'Continue with Apple', onApple)}
            </FadeInView>
          )}
          <FadeInView delay={280}>
            {showPhoneInput ? (
              <View
                style={[
                  styles.phoneCard,
                  styles.cardShadow,
                  { backgroundColor: tokens.card },
                ]}
              >
                <View style={styles.phoneRow}>
                  <TextInput
                    style={[styles.input, { color: tokens.ink }]}
                    placeholder="+92 300 1234567"
                    placeholderTextColor={tokens.muted}
                    keyboardType="phone-pad"
                    autoComplete="tel"
                    value={phone}
                    onChangeText={setPhone}
                    editable={busy === null}
                  />
                </View>
                {renderButton('phone', 'Send code', onSendCode)}
                <SpringPress onPress={busy === null ? () => setShowPhoneInput(false) : undefined}>
                  <Text style={[styles.link, { color: tokens.ink }]}>
                    Back to other options
                  </Text>
                </SpringPress>
              </View>
            ) : (
              <SpringPress onPress={busy === null ? () => setShowPhoneInput(true) : undefined}>
                <View style={[styles.textButton, styles.cardShadow, { backgroundColor: tokens.card }]}>
                  <Text style={[styles.link, { color: tokens.ink }]}>
                    Continue with phone number
                  </Text>
                </View>
              </SpringPress>
            )}
          </FadeInView>
        </View>

        {error ? (
          <FadeInView delay={0}>
            <View style={[styles.errorCard, { backgroundColor: tokens.card }]}>
              <Text style={[styles.error, { color: tokens.danger }]}>{error}</Text>
            </View>
          </FadeInView>
        ) : null}

        <FadeInView delay={360}>
          <Text style={[styles.footnote, { color: tokens.muted }]}>
            By continuing you agree to keep things kind. Free forever, no paywalls.
          </Text>
        </FadeInView>
      </View>
    </KeyboardAvoidingView>
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
  logoWrap: {
    alignSelf: 'center',
    marginBottom: 16,
  },
  title: {
    fontFamily: FONTS.headingBold,
    fontSize: 40,
    textAlign: 'center',
  },
  subtitle: {
    fontFamily: FONTS.body,
    fontSize: 16,
    textAlign: 'center',
    marginTop: 8,
    marginBottom: 40,
  },
  buttons: {
    gap: 14,
  },
  button: {
    borderRadius: 20,
    paddingVertical: 16,
    alignItems: 'center',
    justifyContent: 'center',
  },
  buttonShadow: {
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 6 },
    shadowOpacity: 0.18,
    shadowRadius: 12,
    elevation: 6,
  },
  cardShadow: {
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 4 },
    shadowOpacity: 0.08,
    shadowRadius: 12,
    elevation: 3,
  },
  buttonDisabled: {
    opacity: 0.6,
  },
  buttonText: {
    fontFamily: FONTS.bodySemi,
    fontSize: 16,
  },
  textButton: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'center',
    gap: 10,
    borderRadius: 20,
    paddingVertical: 15,
  },
  link: {
    fontFamily: FONTS.bodySemi,
    fontSize: 15,
    textAlign: 'center',
  },
  phoneCard: {
    borderRadius: 24,
    padding: 20,
    gap: 14,
  },
  phoneRow: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 12,
  },
  input: {
    fontFamily: FONTS.body,
    fontSize: 16,
    flex: 1,
    paddingVertical: 10,
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
  footnote: {
    fontFamily: FONTS.body,
    fontSize: 12,
    textAlign: 'center',
    marginTop: 32,
  },
});
