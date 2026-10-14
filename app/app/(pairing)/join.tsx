import { useCallback, useEffect, useRef, useState } from 'react';
import {
  ActivityIndicator,
  Image,
  StyleSheet,
  Text,
  TextInput,
  View,
} from 'react-native';
import { router, useLocalSearchParams } from 'expo-router';
import { LinearGradient } from 'expo-linear-gradient';
import { previewInvite, redeemInvite, NOT_CONFIGURED } from '../../src/lib/pairing';
import { isValidInviteCode } from '../../src/lib/deeplinks';
import { useTheme } from '../../src/lib/theme-provider';
import { FONTS } from '../../src/theme';
import { FadeInView, SpringPress } from '../../src/components/animated';
import { RichIcon } from '../../src/components/rich-icon';

export default function JoinScreen() {
  const { tokens, mode } = useTheme();
  const { code: paramCode } = useLocalSearchParams<{ code?: string }>();
  const [code, setCode] = useState('');
  const [inviterName, setInviterName] = useState<string | null>(null);
  const [previewError, setPreviewError] = useState<string | null>(null);
  const [previewing, setPreviewing] = useState(false);
  const [joining, setJoining] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const debounce = useRef<ReturnType<typeof setTimeout> | null>(null);

  const bgSource =
    mode === 'dark'
      ? require('../../assets/bg-night-stars.png')
      : require('../../assets/bg-hearts-dreamy.png');

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
      <Image source={bgSource} style={styles.bg} resizeMode="cover" />
      <FadeInView delay={0}>
        <View style={styles.iconWrap}>
          <RichIcon name="person-add" size={28} tokens={tokens} variant="gradient" />
        </View>
        <Text style={[styles.title, { color: tokens.ink }]}>Join your partner</Text>
        <Text style={[styles.subtitle, { color: tokens.muted }]}>
          Enter the 6-character code they shared with you.
        </Text>
      </FadeInView>

      <FadeInView delay={120}>
        <View style={[styles.inputCard, styles.cardShadow, { backgroundColor: tokens.card }]}>
          <TextInput
            style={[styles.input, { color: tokens.ink }]}
            value={code}
            onChangeText={onChangeCode}
            placeholder="ABC123"
            placeholderTextColor={tokens.muted}
            autoCapitalize="characters"
            autoCorrect={false}
            maxLength={6}
          />
        </View>
      </FadeInView>

      <View style={styles.previewRow}>
        {previewing ? (
          <ActivityIndicator color={tokens.primary} size="small" />
        ) : inviterName ? (
          <FadeInView delay={0}>
            <View style={[styles.previewPill, { backgroundColor: tokens.primaryTint }]}>
              <RichIcon name="checkmark" size={16} tokens={tokens} variant="plain" />
              <Text style={[styles.previewOk, { color: tokens.primary }]}>
                Invite from {inviterName}
              </Text>
            </View>
          </FadeInView>
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

      <FadeInView delay={200}>
        <SpringPress onPress={canJoin ? onJoin : undefined}>
          <LinearGradient
            colors={tokens.gradient}
            start={{ x: 0, y: 0 }}
            end={{ x: 1, y: 0 }}
            style={[
              styles.button,
              styles.buttonShadow,
              !canJoin && styles.buttonDisabled,
            ]}
          >
            {joining ? (
              <ActivityIndicator color="#FFFFFF" />
            ) : (
              <Text style={styles.buttonText}>Join</Text>
            )}
          </LinearGradient>
        </SpringPress>
      </FadeInView>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 24,
    justifyContent: 'center',
  },
  bg: {
    ...StyleSheet.absoluteFillObject,
    opacity: 0.12,
  },
  iconWrap: {
    alignSelf: 'center',
    marginBottom: 20,
  },
  title: {
    fontFamily: FONTS.headingBold,
    fontSize: 30,
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
  inputCard: {
    borderRadius: 24,
    paddingHorizontal: 16,
    paddingVertical: 6,
  },
  cardShadow: {
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 4 },
    shadowOpacity: 0.08,
    shadowRadius: 12,
    elevation: 3,
  },
  input: {
    fontFamily: FONTS.headingBold,
    fontSize: 30,
    letterSpacing: 8,
    textAlign: 'center',
    paddingVertical: 16,
  },
  previewRow: {
    minHeight: 44,
    alignItems: 'center',
    justifyContent: 'center',
    marginTop: 12,
  },
  previewPill: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 8,
    borderRadius: 20,
    paddingHorizontal: 18,
    paddingVertical: 10,
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
    borderRadius: 20,
    paddingVertical: 17,
    alignItems: 'center',
    marginTop: 16,
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
    fontFamily: FONTS.bodyBold,
    fontSize: 17,
    color: '#FFFFFF',
  },
});
