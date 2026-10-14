import { useState } from 'react';
import {
  ActivityIndicator,
  KeyboardAvoidingView,
  Platform,
  Pressable,
  StyleSheet,
  Text,
  TextInput,
  View,
} from 'react-native';
import { router } from 'expo-router';
import { useAuth } from '../../src/lib/auth';
import type { AuthResult } from '../../src/lib/auth';
import { FONTS } from '../../src/theme';
import { useTheme } from '../../src/lib/theme-provider';

type Action = 'google' | 'apple' | 'phone';

export default function LoginScreen() {
  const { tokens } = useTheme();
  const { signInWithGoogle, signInWithApple, signInWithPhone } = useAuth();
  const [showPhoneInput, setShowPhoneInput] = useState(false);
  const [phone, setPhone] = useState('');
  const [busy, setBusy] = useState<Action | null>(null);
  const [error, setError] = useState<string | null>(null);

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
  ) => (
    <Pressable
      style={[
        styles.button,
        { backgroundColor: primary ? tokens.primary : tokens.card },
      ]}
      onPress={onPress}
      disabled={busy !== null}
    >
      {busy === key ? (
        <ActivityIndicator color={primary ? tokens.onPrimary : tokens.ink} />
      ) : (
        <Text
          style={[
            styles.buttonText,
            { color: primary ? tokens.onPrimary : tokens.ink },
          ]}
        >
          {label}
        </Text>
      )}
    </Pressable>
  );

  return (
    <KeyboardAvoidingView
      style={[styles.container, { backgroundColor: tokens.background }]}
      behavior={Platform.OS === 'ios' ? 'padding' : undefined}
    >
      <View style={styles.inner}>
        <Text style={[styles.title, { color: tokens.ink }]}>Pair Buddy</Text>
        <Text style={[styles.subtitle, { color: tokens.primary }]}>
          Sign in or create your account.
        </Text>

        <View style={styles.buttons}>
          {renderButton('google', 'Continue with Google', onGoogle, true)}
          {Platform.OS === 'ios' &&
            renderButton('apple', 'Continue with Apple', onApple)}
          {showPhoneInput ? (
            <View style={styles.phoneBlock}>
              <TextInput
                style={[
                  styles.input,
                  { backgroundColor: tokens.card, color: tokens.ink },
                ]}
                placeholder="+92 300 1234567"
                placeholderTextColor={tokens.muted}
                keyboardType="phone-pad"
                autoComplete="tel"
                value={phone}
                onChangeText={setPhone}
                editable={busy === null}
              />
              {renderButton('phone', 'Send code', onSendCode)}
              <Pressable onPress={() => setShowPhoneInput(false)} disabled={busy !== null}>
                <Text style={[styles.link, { color: tokens.ink }]}>
                  Back to other options
                </Text>
              </Pressable>
            </View>
          ) : (
            <Pressable
              style={styles.textButton}
              onPress={() => setShowPhoneInput(true)}
              disabled={busy !== null}
            >
              <Text style={[styles.link, { color: tokens.ink }]}>
                Continue with phone number
              </Text>
            </Pressable>
          )}
        </View>

        {error ? (
          <Text style={[styles.error, { color: tokens.danger }]}>{error}</Text>
        ) : null}

        <Text style={[styles.footnote, { color: tokens.muted }]}>
          By continuing you agree to keep things kind. Free forever, no paywalls.
        </Text>
      </View>
    </KeyboardAvoidingView>
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
    fontSize: 36,
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
    gap: 12,
  },
  button: {
    borderRadius: 14,
    paddingVertical: 15,
    alignItems: 'center',
  },
  buttonText: {
    fontFamily: FONTS.bodySemi,
    fontSize: 16,
  },
  textButton: {
    alignItems: 'center',
    paddingVertical: 10,
  },
  link: {
    fontFamily: FONTS.bodySemi,
    fontSize: 15,
    textDecorationLine: 'underline',
    textAlign: 'center',
  },
  phoneBlock: {
    gap: 12,
  },
  input: {
    fontFamily: FONTS.body,
    borderRadius: 14,
    paddingHorizontal: 16,
    paddingVertical: 14,
    fontSize: 16,
  },
  error: {
    fontFamily: FONTS.body,
    fontSize: 14,
    textAlign: 'center',
    marginTop: 16,
  },
  footnote: {
    fontFamily: FONTS.body,
    fontSize: 12,
    textAlign: 'center',
    marginTop: 32,
  },
});
