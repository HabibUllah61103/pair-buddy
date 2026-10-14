import { useCallback, useEffect, useState } from 'react';
import {
  ActivityIndicator,
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

const NAVY = '#123B63';
const TEAL = '#14B8A6';
const MUTED = '#8AA0B8';
const CARD = '#1A2F4D';

const STALENESS_STYLE: Record<Staleness, { label: string; color: string }> = {
  live: { label: 'Live', color: '#2ECC71' },
  recent: { label: 'Recent', color: '#F5B942' },
  stale: { label: 'Stale', color: '#E2605C' },
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
  const [sharing, setSharing] = useState(false);
  const [busy, setBusy] = useState(false);
  const [unit, setUnit] = useState<DistanceUnit>('km');
  const [partner, setPartner] = useState<PartnerLocation | null>(null);
  const [distanceKm, setDistanceKm] = useState<number | null>(null);
  const [error, setError] = useState<string | null>(null);
  const [loading, setLoading] = useState(true);

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

  return (
    <View style={styles.container}>
      <Text style={styles.heading}>Distance</Text>

      {loading ? (
        <ActivityIndicator color={TEAL} style={styles.loader} />
      ) : (
        <>
          <View style={styles.card}>
            {partner ? (
              <>
                <Text style={styles.partnerName}>{partner.name}</Text>
                <Text style={styles.distance}>
                  {distanceKm === null ? '—' : formatDistance(distanceKm, unit)}
                </Text>
                <View style={styles.row}>
                  {badge && (
                    <View style={[styles.badge, { borderColor: badge.color }]}>
                      <View style={[styles.dot, { backgroundColor: badge.color }]} />
                      <Text style={[styles.badgeText, { color: badge.color }]}>
                        {badge.label} · {timeAgo(partner.updatedAt)}
                      </Text>
                    </View>
                  )}
                  <View style={styles.unitToggle}>
                    {(['km', 'mi'] as DistanceUnit[]).map((u) => (
                      <TouchableOpacity
                        key={u}
                        style={[styles.unitBtn, unit === u && styles.unitBtnActive]}
                        onPress={() => toggleUnit(u)}
                      >
                        <Text
                          style={[
                            styles.unitText,
                            unit === u && styles.unitTextActive,
                          ]}
                        >
                          {u}
                        </Text>
                      </TouchableOpacity>
                    ))}
                  </View>
                </View>
                <Text style={styles.coords}>
                  {partner.lat.toFixed(4)}, {partner.lng.toFixed(4)}
                </Text>
              </>
            ) : (
              <Text style={styles.empty}>
                {error ?? 'No partner location yet.'}
              </Text>
            )}
          </View>

          <View style={styles.card}>
            <View style={styles.rowBetween}>
              <View>
                <Text style={styles.toggleTitle}>Share my location</Text>
                <Text style={styles.toggleSub}>
                  Only your partner can see it. Turn off anytime.
                </Text>
              </View>
              {busy ? (
                <ActivityIndicator color={TEAL} />
              ) : (
                <Switch
                  value={sharing}
                  onValueChange={toggleSharing}
                  trackColor={{ false: '#2A3F5C', true: TEAL }}
                />
              )}
            </View>
          </View>

          {error && <Text style={styles.error}>{error}</Text>}
        </>
      )}

      {error && !loading && partner === null && (
        <Text style={styles.error}>{error}</Text>
      )}
    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1, backgroundColor: NAVY, padding: 20, paddingTop: 64 },
  heading: { color: '#FFFFFF', fontSize: 28, fontWeight: '700', marginBottom: 16 },
  loader: { marginTop: 40 },
  card: {
    backgroundColor: CARD,
    borderRadius: 16,
    padding: 20,
    marginBottom: 16,
  },
  partnerName: { color: MUTED, fontSize: 14, marginBottom: 4 },
  distance: { color: '#FFFFFF', fontSize: 52, fontWeight: '800' },
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
  badgeText: { fontSize: 12, fontWeight: '600' },
  unitToggle: { flexDirection: 'row', backgroundColor: '#0F2540', borderRadius: 999 },
  unitBtn: { paddingHorizontal: 14, paddingVertical: 6, borderRadius: 999 },
  unitBtnActive: { backgroundColor: TEAL },
  unitText: { color: MUTED, fontWeight: '600' },
  unitTextActive: { color: NAVY },
  coords: { color: MUTED, fontSize: 12, marginTop: 12, fontVariant: ['tabular-nums'] },
  empty: { color: MUTED, fontSize: 15, textAlign: 'center', paddingVertical: 12 },
  toggleTitle: { color: '#FFFFFF', fontSize: 16, fontWeight: '600' },
  toggleSub: { color: MUTED, fontSize: 12, marginTop: 2, maxWidth: 220 },
  error: { color: '#E2605C', fontSize: 13, marginTop: 4 },
});
