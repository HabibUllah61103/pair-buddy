import { useEffect, useState } from 'react';
import {
  Image,
  Pressable,
  ScrollView,
  StyleSheet,
  Text,
  View,
} from 'react-native';
import { useRouter } from 'expo-router';
import { useSafeAreaInsets } from 'react-native-safe-area-context';
import { LinearGradient } from 'expo-linear-gradient';
import { getPartner } from '../src/lib/discussion';
import { FONTS } from '../src/theme';
import { useTheme } from '../src/lib/theme-provider';
import { LoadingHeart } from '../src/components/loading-heart';
import { RichIcon } from '../src/components/rich-icon';
import { FadeInView } from '../src/components/animated';

type PartnerProfile = {
  id: string;
  name: string;
  avatar_url: string | null;
  birthdate: string | null;
  gender: string | null;
  locale: string | null;
};

function ageFromBirthdate(birthdate: string | null): string | null {
  if (!birthdate) return null;
  const birth = new Date(birthdate);
  if (isNaN(birth.getTime())) return null;
  const now = new Date();
  let age = now.getFullYear() - birth.getFullYear();
  const m = now.getMonth() - birth.getMonth();
  if (m < 0 || (m === 0 && now.getDate() < birth.getDate())) age--;
  return age >= 0 ? `${age}` : null;
}

export default function PartnerProfileScreen() {
  const { tokens } = useTheme();
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const [profile, setProfile] = useState<PartnerProfile | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    let alive = true;
    (async () => {
      const res = await getPartner();
      if (!alive) return;
      if (res.error || !res.data) {
        setError(res.error ?? 'Could not load profile.');
      } else {
        setProfile(res.data);
      }
      setLoading(false);
    })();
    return () => {
      alive = false;
    };
  }, []);

  const age = ageFromBirthdate(profile?.birthdate ?? null);

  const fields: { label: string; value: string }[] = [];
  if (age) fields.push({ label: 'Age', value: `${age} years old` });
  if (profile?.gender) fields.push({ label: 'Gender', value: profile.gender });
  if (profile?.locale) fields.push({ label: 'Locale', value: profile.locale });

  return (
    <View style={[styles.root, { backgroundColor: tokens.background }]}>
      <LinearGradient
        colors={tokens.gradient}
        start={{ x: 0, y: 0 }}
        end={{ x: 1, y: 1 }}
        style={[styles.header, { paddingTop: insets.top + 12 }]}
      >
        <Pressable
          onPress={() => router.back()}
          style={styles.backButton}
          hitSlop={12}
          accessibilityLabel="Go back"
        >
          <RichIcon name="chevron-back" size={24} tokens={tokens} variant="plain" color="#FFFFFF" />
        </Pressable>
        <Text style={styles.headerTitle}>Partner Profile</Text>
        <View style={styles.backButton} />
      </LinearGradient>

      {loading ? (
        <View style={styles.center}>
          <LoadingHeart tokens={tokens} size={56} message="Loading profile…" />
        </View>
      ) : error || !profile ? (
        <View style={styles.center}>
          <Text style={[styles.error, { color: tokens.danger }]}>
            {error ?? 'No profile found.'}
          </Text>
        </View>
      ) : (
        <ScrollView contentContainerStyle={styles.content}>
          <FadeInView delay={0}>
            <View style={[styles.card, { backgroundColor: tokens.card }]}>
              {profile.avatar_url ? (
                <Image source={{ uri: profile.avatar_url }} style={styles.avatar} />
              ) : (
                <View style={[styles.avatarFallback, { backgroundColor: tokens.primaryTint }]}>
                  <Text style={[styles.avatarLetter, { color: tokens.primary }]}>
                    {profile.name.charAt(0).toUpperCase()}
                  </Text>
                </View>
              )}
              <Text style={[styles.name, { color: tokens.ink }]}>{profile.name}</Text>
              {age ? (
                <Text style={[styles.age, { color: tokens.muted }]}>{age} years old</Text>
              ) : null}
            </View>
          </FadeInView>

          {fields.length > 0 ? (
            <FadeInView delay={80}>
              <View style={[styles.card, { backgroundColor: tokens.card }]}>
                {fields.map((f, i) => (
                  <View
                    key={f.label}
                    style={[
                      styles.fieldRow,
                      i < fields.length - 1 && {
                        borderBottomWidth: 1,
                        borderBottomColor: tokens.border,
                      },
                    ]}
                  >
                    <Text style={[styles.fieldLabel, { color: tokens.muted }]}>{f.label}</Text>
                    <Text style={[styles.fieldValue, { color: tokens.ink }]}>{f.value}</Text>
                  </View>
                ))}
              </View>
            </FadeInView>
          ) : (
            <FadeInView delay={80}>
              <View style={[styles.card, { backgroundColor: tokens.card }]}>
                <Text style={[styles.emptyHint, { color: tokens.muted }]}>
                  Your partner hasn't added more details yet.
                </Text>
              </View>
            </FadeInView>
          )}
        </ScrollView>
      )}
    </View>
  );
}

const styles = StyleSheet.create({
  root: { flex: 1 },
  header: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    paddingHorizontal: 12,
    paddingBottom: 16,
    borderBottomLeftRadius: 24,
    borderBottomRightRadius: 24,
  },
  backButton: { minWidth: 44, minHeight: 44, alignItems: 'center', justifyContent: 'center' },
  headerTitle: {
    fontFamily: FONTS.heading,
    fontSize: 20,
    fontWeight: '800',
    color: '#FFFFFF',
  },
  center: { flex: 1, alignItems: 'center', justifyContent: 'center', padding: 32 },
  error: { fontFamily: FONTS.body, fontSize: 15, textAlign: 'center' },
  content: { padding: 20 },
  card: {
    borderRadius: 24,
    padding: 24,
    marginBottom: 16,
    alignItems: 'center',
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 4 },
    shadowOpacity: 0.08,
    shadowRadius: 12,
    elevation: 3,
  },
  avatar: { width: 120, height: 120, borderRadius: 60, marginBottom: 16 },
  avatarFallback: {
    width: 120,
    height: 120,
    borderRadius: 60,
    alignItems: 'center',
    justifyContent: 'center',
    marginBottom: 16,
  },
  avatarLetter: { fontFamily: FONTS.heading, fontSize: 48, fontWeight: '800' },
  name: { fontFamily: FONTS.heading, fontSize: 26, fontWeight: '800', textAlign: 'center' },
  age: { fontFamily: FONTS.body, fontSize: 16, marginTop: 4 },
  fieldRow: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    paddingVertical: 14,
    width: '100%',
  },
  fieldLabel: { fontFamily: FONTS.body, fontSize: 15 },
  fieldValue: { fontFamily: FONTS.body, fontSize: 15, fontWeight: '700' },
  emptyHint: { fontFamily: FONTS.body, fontSize: 15, textAlign: 'center' },
});
