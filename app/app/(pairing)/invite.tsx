import { useCallback, useEffect, useState } from 'react';
import {
  ActivityIndicator,
  Pressable,
  Share,
  StyleSheet,
  Text,
  View,
} from 'react-native';
import * as Clipboard from 'expo-clipboard';
import {
  createInvite,
  ensureInvite,
  getMyCoupleId,
  inviteShareText,
  retireInvite,
  NOT_CONFIGURED,
} from '../src/lib/pairing';

const NAVY = '#123B63';
const TEAL = '#14B8A6';
const CORAL = '#FF6B5E';

export default function InviteScreen() {
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
    <View style={styles.container}>
      <Text style={styles.title}>Invite your partner</Text>
      <Text style={styles.subtitle}>
        Share this code with them. It expires in 7 days and can only be used once.
      </Text>

      {loading ? (
        <ActivityIndicator color={TEAL} size="large" style={styles.loader} />
      ) : error ? (
        <View style={styles.card}>
          <Text style={styles.error}>{error}</Text>
          {error === NOT_CONFIGURED ? null : (
            <Pressable style={styles.button} onPress={load}>
              <Text style={styles.buttonText}>Try again</Text>
            </Pressable>
          )}
        </View>
      ) : (
        <View style={styles.card}>
          <Text style={styles.code}>{code}</Text>
          <View style={styles.row}>
            <Pressable style={[styles.button, styles.half]} onPress={onCopy}>
              <Text style={styles.buttonText}>{copied ? 'Copied!' : 'Copy code'}</Text>
            </Pressable>
            <Pressable style={[styles.button, styles.half, styles.share]} onPress={onShare}>
              <Text style={styles.shareText}>Share</Text>
            </Pressable>
          </View>
          <Pressable onPress={onRegenerate} disabled={working} style={styles.regen}>
            <Text style={styles.regenText}>
              {working ? 'Making a new code…' : 'Get a new code'}
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
    backgroundColor: NAVY,
    padding: 24,
    justifyContent: 'center',
  },
  title: {
    color: '#FFFFFF',
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
  loader: {
    marginVertical: 40,
  },
  card: {
    backgroundColor: '#1B4A7A',
    borderRadius: 16,
    padding: 24,
    alignItems: 'center',
  },
  code: {
    color: '#FFFFFF',
    fontSize: 44,
    fontWeight: '800',
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
    backgroundColor: TEAL,
    borderRadius: 12,
    paddingVertical: 14,
    alignItems: 'center',
  },
  buttonText: {
    color: '#062A22',
    fontSize: 16,
    fontWeight: '700',
  },
  share: {
    backgroundColor: 'transparent',
    borderWidth: 1.5,
    borderColor: TEAL,
  },
  shareText: {
    color: TEAL,
    fontSize: 16,
    fontWeight: '700',
  },
  regen: {
    marginTop: 16,
    padding: 8,
  },
  regenText: {
    color: CORAL,
    fontSize: 14,
    fontWeight: '600',
  },
  error: {
    color: '#FFB4AB',
    fontSize: 15,
    textAlign: 'center',
    marginBottom: 16,
    lineHeight: 22,
  },
});
