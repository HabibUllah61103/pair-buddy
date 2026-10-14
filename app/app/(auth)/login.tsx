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
import { useAuth } from '../src/lib/auth';
import type { AuthResult } from '../src/lib/auth';
import { COLORS } from '../../src/theme';

const NAVY = COLORS.navy;
const TEAL = COLORS.teal;

type Action = 'google' | 'apple' | 'phone';

export default function LoginScreen() {
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
      style={[styles.button, primary ? styles.primaryButton : styles.secondaryButton]}
      onPress={onPress}
      disabled={busy !== null}
    >
      {busy === key ? (
        <ActivityIndicator color={primary ? COLORS.white : NAVY} />
      ) : (
        <Text style={[styles.buttonText, primary ? styles.primaryText : styles.secondaryText]}>
          {label}
        </Text>
      )}
    </Pressable>
  );

  return (
    <KeyboardAvoidingView
      style={styles.container}
      behavior={Platform.OS === 'ios' ? 'padding' : undefined}
    >
      <View style={styles.inner}>
        <Text style={styles.title}>Pair Buddy</Text>
        <Text style={styles.subtitle}>Your private space for two.</Text>

        <View style={styles.buttons}>
          {renderButton('google', 'Continue with Google', onGoogle, true)}
          {Platform.OS === 'ios' &&
            renderButton('apple', 'Continue with Apple', onApple)}
          {showPhoneInput ? (
            <View style={styles.phoneBlock}>
              <TextInput
                style={styles.input}
                placeholder="+92 300 1234567"
                placeholderTextColor={COLORS.muted}
                keyboardType="phone-pad"
                autoComplete="tel"
                value={phone}
                onChangeText={setPhone}
                editable={busy === null}
              />
              {renderButton('phone', 'Send code', onSendCode)}
              <Pressable onPress={() => setShowPhoneInput(false)} disabled={busy !== null}>
                <Text style={styles.link}>Back to other options</Text>
              </Pressable>
            </View>
          ) : (
            <Pressable
              style={styles.textButton}
              onPress={() => setShowPhoneInput(true)}
              disabled={busy !== null}
            >
              <Text style={styles.link}>Continue with phone number</Text>
            </Pressable>
          )}
        </View>

        {error ? <Text style={styles.error}>{error}</Text> : null}

        <Text style={styles.footnote}>
          By continuing you agree to keep things kind. Free forever, no paywalls.
        </Text>
      </View>
    </KeyboardAvoidingView>
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
    fontSize: 36,
    fontWeight: '800',
    textAlign: 'center',
  },
  subtitle: {
    color: TEAL,
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
  primaryButton: {
    backgroundColor: TEAL,
  },
  secondaryButton: {
    backgroundColor: COLORS.white,
  },
  buttonText: {
    fontSize: 16,
    fontWeight: '600',
  },
  primaryText: {
    color: COLORS.white,
  },
  secondaryText: {
    color: NAVY,
  },
  textButton: {
    alignItems: 'center',
    paddingVertical: 10,
  },
  link: {
    color: COLORS.white,
    fontSize: 15,
    fontWeight: '500',
    textDecorationLine: 'underline',
    textAlign: 'center',
  },
  phoneBlock: {
    gap: 12,
  },
  input: {
    backgroundColor: COLORS.white,
    borderRadius: 14,
    paddingHorizontal: 16,
    paddingVertical: 14,
    fontSize: 16,
    color: NAVY,
  },
  error: {
    color: '#FF9D9D',
    fontSize: 14,
    textAlign: 'center',
    marginTop: 16,
  },
  footnote: {
    color: COLORS.muted,
    fontSize: 12,
    textAlign: 'center',
    marginTop: 32,
  },
});
