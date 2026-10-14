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
import { previewInvite, redeemInvite, NOT_CONFIGURED } from '../../src/lib/pairing';
import { isValidInviteCode } from '../../src/lib/deeplinks';
import { useTheme } from '../../src/lib/theme-provider';
import { FONTS } from '../../src/theme';

export default function JoinScreen() {
  const { tokens } = useTheme();
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
    <View style={[styles.container, { backgroundColor: tokens.background }]}>
      <Text style={[styles.title, { color: tokens.ink }]}>Join your partner</Text>
      <Text style={[styles.subtitle, { color: tokens.muted }]}>
        Enter the 6-character code they shared with you.
      </Text>

      <TextInput
        style={[
          styles.input,
          {
            backgroundColor: tokens.card,
            borderColor: tokens.border,
            color: tokens.ink,
          },
        ]}
        value={code}
        onChangeText={onChangeCode}
        placeholder="ABC123"
        placeholderTextColor={tokens.muted}
        autoCapitalize="characters"
        autoCorrect={false}
        maxLength={6}
      />

      <View style={styles.previewRow}>
        {previewing ? (
          <ActivityIndicator color={tokens.primary} size="small" />
        ) : inviterName ? (
          <Text style={[styles.previewOk, { color: tokens.primary }]}>
            Invite from {inviterName}
          </Text>
        ) : previewError ? (
          <Text style={[styles.previewError, { color: tokens.danger }]}>
            {previewError}
          </Text>
        ) : null}
      </View>

      {error && error !== NOT_CONFIGURED ? (
        <Text style={[styles.error, { color: tokens.danger }]}>{error}</Text>
      ) : null}
      {error === NOT_CONFIGURED ? (
        <Text style={[styles.error, { color: tokens.danger }]}>{NOT_CONFIGURED}</Text>
      ) : null}

      <Pressable
        style={[
          styles.button,
          { backgroundColor: tokens.primary },
          !canJoin && styles.buttonDisabled,
        ]}
        onPress={onJoin}
        disabled={!canJoin}
      >
        <Text style={[styles.buttonText, { color: tokens.onPrimary }]}>
          {joining ? 'Joining…' : 'Join'}
        </Text>
      </Pressable>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 24,
    justifyContent: 'center',
  },
  title: {
    fontFamily: FONTS.headingBold,
    fontSize: 28,
    marginBottom: 8,
    textAlign: 'center',
  },
  subtitle: {
    fontFamily: FONTS.body,
    fontSize: 15,
    textAlign: 'center',
    marginBottom: 32,
    lineHeight: 22,
  },
  input: {
    borderRadius: 12,
    borderWidth: 1,
    fontFamily: FONTS.headingBold,
    fontSize: 28,
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
    fontFamily: FONTS.bodySemi,
    fontSize: 15,
  },
  previewError: {
    fontFamily: FONTS.body,
    fontSize: 14,
  },
  error: {
    fontFamily: FONTS.body,
    fontSize: 14,
    textAlign: 'center',
    marginTop: 8,
    lineHeight: 20,
  },
  button: {
    borderRadius: 12,
    paddingVertical: 16,
    alignItems: 'center',
    marginTop: 24,
  },
  buttonDisabled: {
    opacity: 0.4,
  },
  buttonText: {
    fontFamily: FONTS.bodyBold,
    fontSize: 17,
  },
});
