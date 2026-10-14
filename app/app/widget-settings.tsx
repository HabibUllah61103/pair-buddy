import { useCallback, useEffect, useState } from 'react';
import { ActivityIndicator, Platform, Pressable, ScrollView, StyleSheet, Text, View } from 'react-native';
import { router } from 'expo-router';
import {
  WIDGET_DESCRIPTIONS,
  WIDGET_LABELS,
  WIDGET_TYPES,
  getWidgetConfig,
  isWidgetNativeAvailable,
  refreshWidgets,
  saveWidgetConfig,
  type WidgetType,
} from '../src/lib/widgets';

const NAVY = '#123B63';
const TEAL = '#14B8A6';
const MUTED = '#8AA0B8';
const CARD = '#1A3A5C';

export default function WidgetSettingsScreen() {
  const [selected, setSelected] = useState<WidgetType | null>(null);
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [notice, setNotice] = useState<string | null>(null);
  const nativeAvailable = isWidgetNativeAvailable();

  useEffect(() => {
    getWidgetConfig().then((r) => {
      if (r.data) setSelected(r.data.widgetType);
      if (r.error && r.error !== 'You are not signed in.') setError(r.error);
      setLoading(false);
    });
  }, []);

  const onSave = useCallback(async () => {
    if (!selected || saving) return;
    setSaving(true);
    setError(null);
    setNotice(null);
    const saved = await saveWidgetConfig(selected);
    if (saved.error) {
      setError(saved.error);
      setSaving(false);
      return;
    }
    const refreshed = await refreshWidgets();
    setSaving(false);
    if (refreshed.error) {
      // Choice is saved; the widget itself just needs a dev build to render.
      setNotice(`${refreshed.error} Your choice is saved and will apply in the build.`);
    } else {
      setNotice(
        Platform.OS === 'ios'
          ? 'Widget updated. Add it from your home screen: long-press, Edit, Add Widget, Pair Buddy.'
          : 'Widget updated. Add it from your home screen: long-press, Widgets, Pair Buddy.'
      );
    }
  }, [selected, saving]);

  return (
    <ScrollView style={styles.scroll} contentContainerStyle={styles.root}>
      <Text style={styles.title}>Home widgets</Text>
      <Text style={styles.subtitle}>
        Pick what your home-screen widget shows. Your choice syncs to your account.
      </Text>

      {loading ? (
        <ActivityIndicator color={TEAL} />
      ) : (
        WIDGET_TYPES.map((type) => (
          <Pressable
            key={type}
            style={[styles.card, selected === type && styles.cardSelected]}
            onPress={() => setSelected(type)}
          >
            <Text style={styles.cardTitle}>{WIDGET_LABELS[type]}</Text>
            <Text style={styles.cardHint}>{WIDGET_DESCRIPTIONS[type]}</Text>
            {selected === type && <Text style={styles.check}>Selected</Text>}
          </Pressable>
        ))
      )}

      {error && <Text style={styles.error}>{error}</Text>}
      {notice && <Text style={styles.notice}>{notice}</Text>}

      <Pressable
        style={[styles.saveButton, (!selected || saving) && styles.saveButtonDisabled]}
        disabled={!selected || saving}
        onPress={() => void onSave()}
      >
        <Text style={styles.saveText}>{saving ? 'Saving...' : 'Save widget'}</Text>
      </Pressable>

      {!nativeAvailable && (
        <Text style={styles.cardHint}>
          Widgets render in a development build (Android: npx expo run:android;
          iOS: npx expo run:ios on a Mac with Xcode). They are not available
          inside Expo Go.
        </Text>
      )}

      <Pressable style={styles.backButton} onPress={() => router.back()}>
        <Text style={styles.backText}>Back</Text>
      </Pressable>
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  scroll: { flex: 1, backgroundColor: NAVY },
  root: { padding: 20 },
  title: { color: '#FFFFFF', fontSize: 24, fontWeight: '800', marginBottom: 8 },
  subtitle: { color: MUTED, fontSize: 14, lineHeight: 20, marginBottom: 16 },
  card: {
    backgroundColor: CARD,
    borderRadius: 16,
    padding: 18,
    marginBottom: 12,
    borderWidth: 2,
    borderColor: 'transparent',
  },
  cardSelected: { borderColor: TEAL },
  cardTitle: { color: '#FFFFFF', fontSize: 17, fontWeight: '700' },
  cardHint: { color: MUTED, fontSize: 14, marginTop: 6, lineHeight: 20 },
  check: { color: TEAL, fontSize: 13, fontWeight: '700', marginTop: 8 },
  error: { color: '#F08A8A', fontSize: 14, marginTop: 8, lineHeight: 20 },
  notice: { color: TEAL, fontSize: 14, marginTop: 8, lineHeight: 20 },
  saveButton: {
    backgroundColor: TEAL,
    borderRadius: 14,
    paddingVertical: 14,
    alignItems: 'center',
    marginTop: 8,
  },
  saveButtonDisabled: { opacity: 0.5 },
  saveText: { color: '#FFFFFF', fontSize: 16, fontWeight: '700' },
  backButton: { alignItems: 'center', marginTop: 16 },
  backText: { color: MUTED, fontSize: 15, textDecorationLine: 'underline' },
});
