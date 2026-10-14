import { useCallback, useEffect, useRef, useState } from 'react';
import {
  ActivityIndicator,
  Pressable,
  StyleSheet,
  Text,
  TextInput,
  View,
} from 'react-native';
import { router, useLocalSearchParams } from 'expo-router';
import { previewInvite, redeemInvite, NOT_CONFIGURED } from '../src/lib/pairing';
import { isValidInviteCode } from '../src/lib/deeplinks';
import { COLORS } from '../../src/theme';

const NAVY = COLORS.navy;
const TEAL = COLORS.teal;

export default function JoinScreen() {
  const { code: paramCode } = useLocalSearchParams<{ code?: string }>();
  const [code, setCode] = useState('');
  const [inviterName, setInviterName] = useState<string | null>(null);
  const [previewError, setPreviewError] = useState<string | null>(null);
  const [previewing, setPreviewing] = useState(false);
  const [joining, setJoining] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const debounce = useRef<ReturnType<typeof setTimeout> | null>(null);

  useEffect(() => {
    if (typeof paramCode === 'string' && paramCode.length > 0) {
      setCode(paramCode.toUpperCase());
    }
  }, [paramCode]);

  useEffect(() => {
    if (debounce.current) clearTimeout(debounce.current);
    setInviterName(null);
    setPreviewError(null);
    if (!isValidInviteCode(code)) return;
    setPreviewing(true);
    debounce.current = setTimeout(async () => {
      const preview = await previewInvite(code);
      setPreviewing(false);
      if (preview.error || !preview.data) {
        setPreviewError(preview.error ?? 'No invite found for that code.');
      } else {
        setInviterName(preview.data.inviterName);
      }
    }, 500);
    return () => {
      if (debounce.current) clearTimeout(debounce.current);
    };
  }, [code]);

  const onChangeCode = useCallback((text: string) => {
    const cleaned = text.toUpperCase().replace(/[^A-HJ-NP-Z2-9]/g, '').slice(0, 6);
    setCode(cleaned);
    setError(null);
  }, []);

  const onJoin = useCallback(async () => {
    if (joining) return;
    setJoining(true);
    setError(null);
    const result = await redeemInvite(code);
    setJoining(false);
    if (result.error || !result.data) {
      setError(result.error ?? 'Could not join with that code.');
      return;
    }
    router.replace('/');
  }, [code, joining]);

  const canJoin = isValidInviteCode(code) && !previewError && !joining;

  return (
    <View style={styles.container}>
      <Text style={styles.title}>Join your partner</Text>
      <Text style={styles.subtitle}>
        Enter the 6-character code they shared with you.
      </Text>

      <TextInput
        style={styles.input}
        value={code}
        onChangeText={onChangeCode}
        placeholder="ABC123"
        placeholderTextColor="#5A7391"
        autoCapitalize="characters"
        autoCorrect={false}
        maxLength={6}
      />

      <View style={styles.previewRow}>
        {previewing ? (
          <ActivityIndicator color={TEAL} size="small" />
        ) : inviterName ? (
          <Text style={styles.previewOk}>Invite from {inviterName}</Text>
        ) : previewError ? (
          <Text style={styles.previewError}>{previewError}</Text>
        ) : null}
      </View>

      {error && error !== NOT_CONFIGURED ? <Text style={styles.error}>{error}</Text> : null}
      {error === NOT_CONFIGURED ? <Text style={styles.error}>{NOT_CONFIGURED}</Text> : null}

      <Pressable
        style={[styles.button, !canJoin && styles.buttonDisabled]}
        onPress={onJoin}
        disabled={!canJoin}
      >
        <Text style={styles.buttonText}>{joining ? 'Joining…' : 'Join'}</Text>
      </Pressable>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: NAVY,
    padding: 24,
    justifyContent: 'center',
  },
  title: {
    color: COLORS.white,
    fontSize: 28,
    fontWeight: '800',
    marginBottom: 8,
    textAlign: 'center',
  },
  subtitle: {
    color: '#9FB3C8',
    fontSize: 15,
    textAlign: 'center',
    marginBottom: 32,
    lineHeight: 22,
  },
  input: {
    backgroundColor: '#1B4A7A',
    borderRadius: 12,
    color: COLORS.white,
    fontSize: 28,
    fontWeight: '800',
    letterSpacing: 8,
    textAlign: 'center',
    paddingVertical: 18,
  },
  previewRow: {
    minHeight: 28,
    alignItems: 'center',
    justifyContent: 'center',
    marginTop: 12,
  },
  previewOk: {
    color: TEAL,
    fontSize: 15,
    fontWeight: '600',
  },
  previewError: {
    color: '#FFB4AB',
    fontSize: 14,
  },
  error: {
    color: '#FFB4AB',
    fontSize: 14,
    textAlign: 'center',
    marginTop: 8,
    lineHeight: 20,
  },
  button: {
    backgroundColor: TEAL,
    borderRadius: 12,
    paddingVertical: 16,
    alignItems: 'center',
    marginTop: 24,
  },
  buttonDisabled: {
    opacity: 0.4,
  },
  buttonText: {
    color: '#062A22',
    fontSize: 17,
    fontWeight: '700',
  },
});
