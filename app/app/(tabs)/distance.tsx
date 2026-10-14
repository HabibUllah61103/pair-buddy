import { useCallback, useEffect, useState } from 'react';
import {
  ActivityIndicator,
  Image,
  StyleSheet,
  Switch,
  Text,
  TouchableOpacity,
  View,
} from 'react-native';
import {
  formatDistance,
  getMyPosition,
  getPartnerLocation,
  getStaleness,
  getUnitPreference,
  haversineKm,
  isSharingEnabled,
  setUnitPreference,
  startSharing,
  stopSharing,
  subscribePartnerLocation,
  type DistanceUnit,
  type PartnerLocation,
  type Staleness,
} from '../../src/lib/location';
import { FONTS } from '../../src/theme';
import { useTheme } from '../../src/lib/theme-provider';
import { GradientHeader } from '../../src/components/gradient-header';
import { FadeInView, PulseView } from '../../src/components/animated';
import { RichIcon } from '../../src/components/rich-icon';

const STALENESS_STYLE: Record<Staleness, { label: string; tone: 'live' | 'recent' | 'stale' }> = {
  live: { label: 'Live', tone: 'live' },
  recent: { label: 'Recent', tone: 'recent' },
  stale: { label: 'Stale', tone: 'stale' },
};

function timeAgo(iso: string): string {
  const mins = Math.max(0, Math.round((Date.now() - new Date(iso).getTime()) / 60000));
  if (mins < 1) return 'just now';
  if (mins === 1) return '1 min ago';
  if (mins < 60) return `${mins} min ago`;
  const hrs = Math.floor(mins / 60);
  return hrs === 1 ? '1 hour ago' : `${hrs} hours ago`;
}

export default function DistanceScreen() {
  const { tokens, mode } = useTheme();
  const [sharing, setSharing] = useState(false);
  const [busy, setBusy] = useState(false);
  const [unit, setUnit] = useState<DistanceUnit>('km');
  const [partner, setPartner] = useState<PartnerLocation | null>(null);
  const [distanceKm, setDistanceKm] = useState<number | null>(null);
  const [error, setError] = useState<string | null>(null);
  const [loading, setLoading] = useState(true);
  const bgSource =
    mode === 'dark'
      ? require('../../assets/bg-night-stars.png')
      : require('../../assets/bg-hearts-dreamy.png');

  const refresh = useCallback(async () => {
    setError(null);
    const res = await getPartnerLocation();
    if (res.error) {
      setPartner(null);
      setDistanceKm(null);
      if (!res.error.includes('not sharing')) setError(res.error);
      return;
    }
    if (res.data) {
      setPartner(res.data);
      const mine = await getMyPosition();
      if (mine.data) {
        setDistanceKm(
          haversineKm(
            { lat: mine.data.lat, lng: mine.data.lng },
            { lat: res.data.lat, lng: res.data.lng },
          ),
        );
      }
    }
  }, []);

  useEffect(() => {
    let unsub: (() => void) | null = null;
    let cancelled = false;
    (async () => {
      setLoading(true);
      const [wasSharing, savedUnit] = await Promise.all([
        isSharingEnabled(),
        getUnitPreference(),
      ]);
      if (cancelled) return;
      setSharing(wasSharing);
      setUnit(savedUnit);
      await refresh();
      // Subscribe once we know the partner id; refresh() resolves it.
      const res = await getPartnerLocation();
      if (!cancelled && res.data) {
        unsub = subscribePartnerLocation(res.data.userId, (loc) => {
          setPartner((prev) =>
            prev
              ? { ...prev, lat: loc.lat, lng: loc.lng, updatedAt: loc.updatedAt }
              : prev,
          );
        });
      }
      if (!cancelled) setLoading(false);
    })();
    return () => {
      cancelled = true;
      if (unsub) unsub();
    };
  }, [refresh]);

  const toggleSharing = async (value: boolean) => {
    setBusy(true);
    setError(null);
    const res = value ? await startSharing() : await stopSharing();
    setBusy(false);
    if (res.error) {
      setError(res.error);
      return;
    }
    setSharing(value);
  };

  const toggleUnit = async (next: DistanceUnit) => {
    setUnit(next);
    await setUnitPreference(next);
  };

  const staleness = partner ? getStaleness(partner.updatedAt) : null;
  const badge = staleness ? STALENESS_STYLE[staleness] : null;
  const toneColor =
    badge?.tone === 'live'
      ? tokens.success
      : badge?.tone === 'recent'
        ? tokens.warning
        : tokens.danger;

  return (
    <View style={[styles.container, { backgroundColor: tokens.background }]}>
      <Image source={bgSource} style={styles.bg} resizeMode="cover" />
      <GradientHeader
        title="Distance"
        subtitle="How far apart are your hearts?"
        tokens={tokens}
      />

      <View style={styles.body}>
      {loading ? (
        <ActivityIndicator color={tokens.primary} style={styles.loader} />
      ) : (
        <>
          <FadeInView delay={0}>
            <View style={[styles.card, { backgroundColor: tokens.card }]}>
              {partner ? (
                <>
                  <View style={styles.partnerRow}>
                    <RichIcon name="location" size={20} tokens={tokens} variant="gradient" />
                    <Text style={[styles.partnerName, { color: tokens.muted }]}>{partner.name}</Text>
                  </View>
                  <PulseView>
                    <Text style={[styles.distance, { color: tokens.ink }]}>
                      {distanceKm === null ? '—' : formatDistance(distanceKm, unit)}
                    </Text>
                  </PulseView>
                  <View style={styles.row}>
                    {badge && (
                      <View style={[styles.badge, { borderColor: toneColor }]}>
                        <View style={[styles.dot, { backgroundColor: toneColor }]} />
                        <Text style={[styles.badgeText, { color: toneColor }]}>
                          {badge.label} · {timeAgo(partner.updatedAt)}
                        </Text>
                      </View>
                    )}
                    <View style={[styles.unitToggle, { backgroundColor: tokens.primaryTint }]}>
                      {(['km', 'mi'] as DistanceUnit[]).map((u) => (
                        <TouchableOpacity
                          key={u}
                          style={[styles.unitBtn, unit === u && { backgroundColor: tokens.primary }]}
                          onPress={() => toggleUnit(u)}
                        >
                          <Text
                            style={[
                              styles.unitText,
                              { color: unit === u ? tokens.onPrimary : tokens.muted },
                            ]}
                          >
                            {u}
                          </Text>
                        </TouchableOpacity>
                      ))}
                    </View>
                  </View>
                  <Text style={[styles.coords, { color: tokens.muted }]}>
                    {partner.lat.toFixed(4)}, {partner.lng.toFixed(4)}
                  </Text>
                </>
              ) : (
                <Text style={[styles.empty, { color: tokens.muted }]}>
                  {error ?? 'No partner location yet.'}
                </Text>
              )}
            </View>
          </FadeInView>

          <FadeInView delay={80}>
            <View style={[styles.card, { backgroundColor: tokens.card }]}>
              <View style={styles.rowBetween}>
                <View>
                  <Text style={[styles.toggleTitle, { color: tokens.ink }]}>Share my location</Text>
                  <Text style={[styles.toggleSub, { color: tokens.muted }]}>
                    Only your partner can see it. Turn off anytime.
                  </Text>
                </View>
                {busy ? (
                  <ActivityIndicator color={tokens.primary} />
                ) : (
                  <Switch
                    value={sharing}
                    onValueChange={toggleSharing}
                    trackColor={{ false: tokens.border, true: tokens.primary }}
                  />
                )}
              </View>
            </View>
          </FadeInView>

          {error && <Text style={[styles.error, { color: tokens.danger }]}>{error}</Text>}
        </>
      )}

      {error && !loading && partner === null && (
        <Text style={[styles.error, { color: tokens.danger, marginHorizontal: 20 }]}>{error}</Text>
      )}
      </View>
    </View>
  );
}

const BUBBLY_SHADOW = {
  shadowColor: '#000',
  shadowOffset: { width: 0, height: 4 },
  shadowOpacity: 0.08,
  shadowRadius: 12,
  elevation: 3,
};

const styles = StyleSheet.create({
  container: { flex: 1 },
  bg: {
    ...StyleSheet.absoluteFillObject,
    opacity: 0.12,
  },
  loader: { marginTop: 40 },
  body: { paddingTop: 20 },
  card: {
    borderRadius: 24,
    padding: 20,
    marginBottom: 16,
    marginHorizontal: 20,
    ...BUBBLY_SHADOW,
  },
  partnerRow: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 10,
    marginBottom: 4,
  },
  partnerName: { fontFamily: FONTS.body, fontSize: 14 },
  distance: { fontFamily: FONTS.headingBold, fontSize: 56 },
  row: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    marginTop: 12,
  },
  rowBetween: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
  },
  badge: {
    flexDirection: 'row',
    alignItems: 'center',
    borderWidth: 1,
    borderRadius: 999,
    paddingHorizontal: 10,
    paddingVertical: 4,
  },
  dot: { width: 8, height: 8, borderRadius: 4, marginRight: 6 },
  badgeText: { fontFamily: FONTS.body, fontSize: 12, fontWeight: '600' },
  unitToggle: { flexDirection: 'row', borderRadius: 999 },
  unitBtn: { paddingHorizontal: 14, paddingVertical: 6, borderRadius: 999 },
  unitText: { fontFamily: FONTS.body, fontWeight: '600' },
  coords: { fontFamily: FONTS.body, fontSize: 12, marginTop: 12, fontVariant: ['tabular-nums'] },
  empty: { fontFamily: FONTS.body, fontSize: 15, textAlign: 'center', paddingVertical: 12 },
  toggleTitle: { fontFamily: FONTS.body, fontSize: 16, fontWeight: '600' },
  toggleSub: { fontFamily: FONTS.body, fontSize: 12, marginTop: 2, maxWidth: 220 },
  error: { fontFamily: FONTS.body, fontSize: 13, marginTop: 4 },
});
