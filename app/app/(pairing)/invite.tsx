import { useCallback, useEffect, useState } from 'react';
import {
  ActivityIndicator,
  Image,
  Pressable,
  Share,
  StyleSheet,
  Text,
  View,
} from 'react-native';
import * as Clipboard from 'expo-clipboard';
import { router } from 'expo-router';
import {
  createInvite,
  ensureInvite,
  getMyCoupleId,
  inviteShareText,
  retireInvite,
  NOT_CONFIGURED,
} from '../../src/lib/pairing';
import { useTheme } from '../../src/lib/theme-provider';
import { getCoupleMemberCount } from '../../src/lib/sparks';
import { FONTS } from '../../src/theme';

export default function InviteScreen() {
  const { tokens } = useTheme();
  const [code, setCode] = useState<string | null>(null);
  const [coupleId, setCoupleId] = useState<string | null>(null);
  const [loading, setLoading] = useState(true);
  const [working, setWorking] = useState(false);
  const [copied, setCopied] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const load = useCallback(async () => {
    setLoading(true);
    setError(null);
    const couple = await getMyCoupleId();
    if (couple.error || !couple.data) {
      setError(couple.error ?? 'Could not find your couple.');
      setLoading(false);
      return;
    }
    setCoupleId(couple.data);
    const invite = await ensureInvite(couple.data);
    if (invite.error || !invite.data) {
      setError(invite.error ?? 'Could not create an invite.');
    } else {
      setCode(invite.data.code);
    }
    setLoading(false);
  }, []);

  useEffect(() => {
    load();
  }, [load]);

  // Poll for the partner joining: once both members are in, leave the
  // invite screen for the main app. Polling stops on unmount.
  useEffect(() => {
    let alive = true;
    const timer = setInterval(async () => {
      const members = await getCoupleMemberCount();
      if (alive && (members.data ?? 0) >= 2) {
        router.replace('/');
      }
    }, 4000);
    return () => {
      alive = false;
      clearInterval(timer);
    };
  }, []);

  const onCopy = useCallback(async () => {
    if (!code) return;
    await Clipboard.setStringAsync(code);
    setCopied(true);
    setTimeout(() => setCopied(false), 2000);
  }, [code]);

  const onShare = useCallback(async () => {
    if (!code) return;
    try {
      await Share.share({ message: inviteShareText(code) });
    } catch {
      // Sharing dismissed or unavailable — nothing to do.
    }
  }, [code]);

  const onRegenerate = useCallback(async () => {
    if (!coupleId || working) return;
    setWorking(true);
    setError(null);
    if (code) await retireInvite(code);
    const invite = await createInvite(coupleId);
    if (invite.error || !invite.data) {
      setError(invite.error ?? 'Could not create a new invite.');
    } else {
      setCode(invite.data.code);
    }
    setWorking(false);
  }, [code, coupleId, working]);

  return (
    <View style={[styles.container, { backgroundColor: tokens.background }]}>
      <Text style={[styles.title, { color: tokens.ink }]}>Invite your partner</Text>
      <Text style={[styles.subtitle, { color: tokens.muted }]}>
        Share this code with them. It expires in 7 days and can only be used once.
      </Text>

      {loading ? (
        <ActivityIndicator color={tokens.primary} size="large" style={styles.loader} />
      ) : error ? (
        <View
          style={[
            styles.card,
            { backgroundColor: tokens.card, borderColor: tokens.border },
          ]}
        >
          <Text style={[styles.error, { color: tokens.danger }]}>{error}</Text>
          {error === NOT_CONFIGURED ? null : (
            <Pressable
              style={[styles.button, { backgroundColor: tokens.primary }]}
              onPress={load}
            >
              <Text style={[styles.buttonText, { color: tokens.onPrimary }]}>
                Try again
              </Text>
            </Pressable>
          )}
        </View>
      ) : (
        <View
          style={[
            styles.card,
            { backgroundColor: tokens.card, borderColor: tokens.border },
          ]}
        >
          <Image
            source={require('../assets/mascot-waiting.png')}
            style={styles.mascot}
            resizeMode="contain"
          />
          <Text style={[styles.code, { color: tokens.ink }]}>{code}</Text>
          <View style={styles.row}>
            <Pressable
              style={[
                styles.button,
                styles.half,
                { backgroundColor: tokens.primary },
              ]}
              onPress={onCopy}
            >
              <Text style={[styles.buttonText, { color: tokens.onPrimary }]}>
                {copied ? 'Copied!' : 'Copy code'}
              </Text>
            </Pressable>
            <Pressable
              style={[
                styles.button,
                styles.half,
                styles.share,
                { backgroundColor: 'transparent', borderColor: tokens.primary },
              ]}
              onPress={onShare}
            >
              <Text style={[styles.shareText, { color: tokens.primary }]}>Share</Text>
            </Pressable>
          </View>
          <Pressable onPress={onRegenerate} disabled={working} style={styles.regen}>
            <Text style={[styles.regenText, { color: tokens.primary }]}>
              {working ? 'Making a new code…' : 'Get a new code'}
            </Text>
          </Pressable>
          <Pressable onPress={() => router.push('/(pairing)/join')} style={styles.joinLink}>
            <Text style={[styles.joinLinkText, { color: tokens.primary }]}>
              Have a code? Join your partner →
            </Text>
          </Pressable>
        </View>
      )}
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
  loader: {
    marginVertical: 40,
  },
  card: {
    borderRadius: 16,
    borderWidth: 1,
    padding: 24,
    alignItems: 'center',
  },
  mascot: { width: 160, height: 160, alignSelf: 'center', marginBottom: 8 },
  code: {
    fontFamily: FONTS.headingBold,
    fontSize: 44,
    letterSpacing: 10,
    marginBottom: 24,
  },
  row: {
    flexDirection: 'row',
    gap: 12,
    width: '100%',
  },
  half: {
    flex: 1,
  },
  button: {
    borderRadius: 12,
    paddingVertical: 14,
    alignItems: 'center',
  },
  buttonText: {
    fontFamily: FONTS.bodyBold,
    fontSize: 16,
  },
  share: {
    borderWidth: 1.5,
  },
  shareText: {
    fontFamily: FONTS.bodyBold,
    fontSize: 16,
  },
  regen: {
    marginTop: 16,
    padding: 8,
  },
  regenText: {
    fontFamily: FONTS.bodySemi,
    fontSize: 14,
  },
  joinLink: {
    marginTop: 8,
    padding: 8,
  },
  joinLinkText: {
    fontFamily: FONTS.bodySemi,
    fontSize: 14,
    textAlign: 'center',
  },
  error: {
    fontFamily: FONTS.body,
    fontSize: 15,
    textAlign: 'center',
    marginBottom: 16,
    lineHeight: 22,
  },
});
