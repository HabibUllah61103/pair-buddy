import { useCallback, useEffect, useState } from 'react';
import {
  Image,
  Share,
  StyleSheet,
  Text,
  View,
} from 'react-native';
import * as Clipboard from 'expo-clipboard';
import { router } from 'expo-router';
import { LinearGradient } from 'expo-linear-gradient';
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
import { FadeInView, SpringPress } from '../../src/components/animated';
import { LoadingHeart } from '../../src/components/loading-heart';
import { RichIcon } from '../../src/components/rich-icon';

export default function InviteScreen() {
  const { tokens, mode } = useTheme();
  const [code, setCode] = useState<string | null>(null);
  const [coupleId, setCoupleId] = useState<string | null>(null);
  const [loading, setLoading] = useState(true);
  const [working, setWorking] = useState(false);
  const [copied, setCopied] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const bgSource =
    mode === 'dark'
      ? require('../../assets/bg-night-stars.png')
      : require('../../assets/bg-hearts-dreamy.png');

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
      <Image source={bgSource} style={styles.bg} resizeMode="cover" />
      <FadeInView delay={0} style={styles.headerWrap}>
        <Text style={[styles.title, { color: tokens.ink }]}>Invite your partner</Text>
        <Text style={[styles.subtitle, { color: tokens.muted }]}>
          Share this code with them. It expires in 7 days and can only be used once.
        </Text>
      </FadeInView>

      {loading ? (
        <LoadingHeart tokens={tokens} message="Preparing your invite\u2026" />
      ) : error ? (
        <FadeInView delay={120}>
          <View style={[styles.card, styles.cardShadow, { backgroundColor: tokens.card }]}>
            <RichIcon name="heart" size={24} tokens={tokens} variant="soft" />
            <Text style={[styles.error, { color: tokens.danger }]}>{error}</Text>
            {error === NOT_CONFIGURED ? null : (
              <SpringPress onPress={load}>
                <LinearGradient
                  colors={tokens.gradient}
                  start={{ x: 0, y: 0 }}
                  end={{ x: 1, y: 0 }}
                  style={[styles.button, styles.buttonShadow]}
                >
                  <Text style={styles.buttonText}>Try again</Text>
                </LinearGradient>
              </SpringPress>
            )}
          </View>
        </FadeInView>
      ) : (
        <FadeInView delay={120}>
          <View style={[styles.card, styles.cardShadow, { backgroundColor: tokens.card }]}>
            <Image
              source={require('../../assets/mascot-waiting.png')}
              style={styles.mascot}
              resizeMode="contain"
            />
            <Text style={[styles.code, { color: tokens.ink }]}>{code}</Text>
            <View style={styles.row}>
              <View style={styles.half}>
                <SpringPress onPress={onCopy}>
                  <LinearGradient
                    colors={tokens.gradient}
                    start={{ x: 0, y: 0 }}
                    end={{ x: 1, y: 0 }}
                    style={[styles.button, styles.buttonShadow]}
                  >
                    <Text style={styles.buttonText}>
                      {copied ? 'Copied!' : 'Copy code'}
                    </Text>
                  </LinearGradient>
                </SpringPress>
              </View>
              <View style={styles.half}>
                <SpringPress onPress={onShare}>
                  <View
                    style={[
                      styles.button,
                      styles.share,
                      styles.cardShadow,
                      { backgroundColor: tokens.primaryTint, borderColor: tokens.primary },
                    ]}
                  >
                    <Text style={[styles.shareText, { color: tokens.primary }]}>Share</Text>
                  </View>
                </SpringPress>
              </View>
            </View>
            <SpringPress onPress={working ? undefined : onRegenerate}>
              <View style={styles.regen}>
                {working ? (
                  <LoadingHeart tokens={tokens} size={16} />
                ) : (
                  <Text style={[styles.regenText, { color: tokens.primary }]}>
                    Get a new code
                  </Text>
                )}
              </View>
            </SpringPress>
            <SpringPress onPress={() => router.push('/(pairing)/join')}>
              <View style={styles.joinLink}>
                <Text style={[styles.joinLinkText, { color: tokens.primary }]}>
                  Have a code? Join your partner
                </Text>
                <RichIcon name="arrow-forward" size={16} tokens={tokens} variant="plain" />
              </View>
            </SpringPress>
          </View>
        </FadeInView>
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
  bg: {
    ...StyleSheet.absoluteFillObject,
    opacity: 0.12,
  },
  headerWrap: {
    marginBottom: 8,
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
  loader: {
    marginVertical: 40,
  },
  card: {
    borderRadius: 24,
    padding: 28,
    alignItems: 'center',
    gap: 8,
  },
  cardShadow: {
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 6 },
    shadowOpacity: 0.1,
    shadowRadius: 16,
    elevation: 4,
  },
  mascot: { width: 160, height: 160, alignSelf: 'center', marginBottom: 8 },
  code: {
    fontFamily: FONTS.headingBold,
    fontSize: 44,
    letterSpacing: 10,
    marginBottom: 16,
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
    borderRadius: 20,
    paddingVertical: 15,
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
  buttonText: {
    fontFamily: FONTS.bodyBold,
    fontSize: 16,
    color: '#FFFFFF',
  },
  share: {
    borderWidth: 1.5,
  },
  shareText: {
    fontFamily: FONTS.bodyBold,
    fontSize: 16,
  },
  regen: {
    marginTop: 12,
    padding: 10,
    alignItems: 'center',
  },
  regenText: {
    fontFamily: FONTS.bodySemi,
    fontSize: 14,
  },
  joinLink: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'center',
    gap: 6,
    marginTop: 4,
    padding: 10,
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
    marginVertical: 12,
    lineHeight: 22,
  },
});
