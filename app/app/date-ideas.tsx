import { useCallback, useEffect, useState } from 'react';
import {
  ActivityIndicator,
  FlatList,
  Modal,
  Pressable,
  StyleSheet,
  Text,
  View,
} from 'react-native';
import { router } from 'expo-router';
import DateTimePicker from '@react-native-community/datetimepicker';
import {
  DATE_CATEGORIES,
  getIdeas,
  saveIdeaAsPlan,
  type DateIdea,
} from '../src/lib/dates';
import { COLORS } from '../src/theme';

const NAVY = COLORS.navy;
const TEAL = COLORS.teal;
const MUTED = COLORS.muted;
const CARD = '#1A2F4D';
const CHIP = '#24405F';

const CATEGORIES: Array<string | null> = [null, ...DATE_CATEGORIES];

function categoryLabel(c: string | null): string {
  if (!c) return 'All';
  return c.charAt(0).toUpperCase() + c.slice(1);
}

function toIsoDate(d: Date): string {
  const m = `${d.getMonth() + 1}`.padStart(2, '0');
  const day = `${d.getDate()}`.padStart(2, '0');
  return `${d.getFullYear()}-${m}-${day}`;
}

export default function DateIdeasScreen() {
  const [category, setCategory] = useState<string | null>(null);
  const [ideas, setIdeas] = useState<DateIdea[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [selected, setSelected] = useState<DateIdea | null>(null);
  const [pickedDate, setPickedDate] = useState<Date | null>(null);
  const [showPicker, setShowPicker] = useState(false);
  const [saving, setSaving] = useState(false);
  const [saveError, setSaveError] = useState<string | null>(null);
  const [saved, setSaved] = useState(false);

  const load = useCallback(async () => {
    setLoading(true);
    setError(null);
    const res = await getIdeas(category);
    setLoading(false);
    if (res.error) {
      setError(res.error);
      return;
    }
    setIdeas(res.data ?? []);
  }, [category]);

  useEffect(() => {
    let cancelled = false;
    (async () => {
      setLoading(true);
      setError(null);
      const res = await getIdeas(category);
      if (cancelled) return;
      setLoading(false);
      if (res.error) setError(res.error);
      else setIdeas(res.data ?? []);
    })();
    return () => {
      cancelled = true;
    };
  }, [category]);

  const openIdea = (idea: DateIdea) => {
    setSelected(idea);
    setPickedDate(null);
    setSaveError(null);
    setSaved(false);
  };

  const closeModal = () => {
    setSelected(null);
    setShowPicker(false);
  };

  const onPickerChange = (_event: any, date?: Date) => {
    setShowPicker(false);
    if (date) setPickedDate(date);
  };

  const save = async () => {
    if (!selected || saving) return;
    setSaving(true);
    setSaveError(null);
    const res = await saveIdeaAsPlan(selected.id, pickedDate ? toIsoDate(pickedDate) : null);
    setSaving(false);
    if (res.error) {
      setSaveError(res.error);
      return;
    }
    setSaved(true);
  };

  return (
    <View style={styles.root}>
      <View style={styles.header}>
        <Pressable onPress={() => router.back()} hitSlop={12}>
          <Text style={styles.back}>Back</Text>
        </Pressable>
        <Text style={styles.title}>Date ideas</Text>
        <Pressable onPress={() => router.push('/date-plans')} hitSlop={12}>
          <Text style={styles.back}>My plans</Text>
        </Pressable>
      </View>

      <View style={styles.chips}>
        {CATEGORIES.map((c) => (
          <Pressable
            key={c ?? 'all'}
            style={[styles.chip, category === c && styles.chipActive]}
            onPress={() => setCategory(c)}
          >
            <Text style={[styles.chipText, category === c && styles.chipTextActive]}>
              {categoryLabel(c)}
            </Text>
          </Pressable>
        ))}
      </View>

      {loading ? (
        <ActivityIndicator color={TEAL} style={styles.loader} />
      ) : error ? (
        <View style={styles.center}>
          <Text style={styles.error}>{error}</Text>
          <Pressable style={styles.retry} onPress={load}>
            <Text style={styles.retryText}>Try again</Text>
          </Pressable>
        </View>
      ) : (
        <FlatList
          data={ideas}
          keyExtractor={(i) => i.id}
          contentContainerStyle={styles.list}
          renderItem={({ item }) => (
            <Pressable style={styles.card} onPress={() => openIdea(item)}>
              <Text style={styles.cardCategory}>{categoryLabel(item.category)}</Text>
              <Text style={styles.cardTitle}>{item.title}</Text>
              <Text style={styles.cardDesc} numberOfLines={2}>
                {item.description}
              </Text>
            </Pressable>
          )}
          ListEmptyComponent={
            <View style={styles.center}>
              <Text style={styles.empty}>No ideas in this category yet.</Text>
            </View>
          }
        />
      )}

      <Modal visible={selected !== null} animationType="slide" transparent onRequestClose={closeModal}>
        <View style={styles.modalBackdrop}>
          <View style={styles.modal}>
            {selected && (
              <>
                <Text style={styles.cardCategory}>{categoryLabel(selected.category)}</Text>
                <Text style={styles.modalTitle}>{selected.title}</Text>
                <Text style={styles.modalDesc}>{selected.description}</Text>

                <Pressable style={styles.dateRow} onPress={() => setShowPicker(true)}>
                  <Text style={styles.dateRowText}>
                    {pickedDate ? `Planned for ${toIsoDate(pickedDate)}` : 'Pick a date (optional)'}
                  </Text>
                </Pressable>
                {showPicker && (
                  <DateTimePicker
                    value={pickedDate ?? new Date()}
                    mode="date"
                    display="default"
                    minimumDate={new Date()}
                    onChange={onPickerChange}
                  />
                )}

                {saveError && <Text style={styles.error}>{saveError}</Text>}
                {saved ? (
                  <Text style={styles.savedNote}>Saved to your plans.</Text>
                ) : (
                  <Pressable style={styles.saveButton} onPress={save} disabled={saving}>
                    {saving ? (
                      <ActivityIndicator color={COLORS.white} />
                    ) : (
                      <Text style={styles.saveButtonText}>Save as plan</Text>
                    )}
                  </Pressable>
                )}
                <Pressable style={styles.closeButton} onPress={closeModal}>
                  <Text style={styles.closeButtonText}>Close</Text>
                </Pressable>
              </>
            )}
          </View>
        </View>
      </Modal>
    </View>
  );
}

const styles = StyleSheet.create({
  root: { flex: 1, backgroundColor: NAVY },
  header: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    paddingHorizontal: 20,
    paddingTop: 56,
    paddingBottom: 12,
  },
  back: { color: TEAL, fontSize: 16, fontWeight: '600' },
  title: { color: COLORS.white, fontSize: 20, fontWeight: '800' },
  chips: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    gap: 8,
    paddingHorizontal: 20,
    marginBottom: 12,
  },
  chip: {
    backgroundColor: CHIP,
    borderRadius: 20,
    paddingVertical: 8,
    paddingHorizontal: 14,
  },
  chipActive: { backgroundColor: TEAL },
  chipText: { color: MUTED, fontSize: 14, fontWeight: '600' },
  chipTextActive: { color: COLORS.white },
  loader: { marginTop: 40 },
  list: { paddingHorizontal: 20, paddingBottom: 32 },
  card: {
    backgroundColor: CARD,
    borderRadius: 14,
    padding: 16,
    marginBottom: 12,
  },
  cardCategory: {
    color: TEAL,
    fontSize: 11,
    fontWeight: '700',
    textTransform: 'uppercase',
    marginBottom: 6,
  },
  cardTitle: { color: COLORS.white, fontSize: 17, fontWeight: '700', marginBottom: 6 },
  cardDesc: { color: MUTED, fontSize: 14, lineHeight: 20 },
  center: { flex: 1, alignItems: 'center', justifyContent: 'center', padding: 32 },
  error: { color: '#E2605C', fontSize: 15, textAlign: 'center', marginBottom: 12 },
  empty: { color: MUTED, fontSize: 15, textAlign: 'center' },
  retry: {
    backgroundColor: TEAL,
    borderRadius: 12,
    paddingVertical: 10,
    paddingHorizontal: 20,
  },
  retryText: { color: COLORS.white, fontWeight: '700' },
  modalBackdrop: {
    flex: 1,
    backgroundColor: 'rgba(0,0,0,0.6)',
    justifyContent: 'flex-end',
  },
  modal: {
    backgroundColor: '#16324F',
    borderTopLeftRadius: 24,
    borderTopRightRadius: 24,
    padding: 24,
    maxHeight: '85%',
  },
  modalTitle: { color: COLORS.white, fontSize: 22, fontWeight: '800', marginBottom: 10 },
  modalDesc: { color: MUTED, fontSize: 15, lineHeight: 22, marginBottom: 18 },
  dateRow: {
    backgroundColor: CHIP,
    borderRadius: 12,
    paddingVertical: 12,
    paddingHorizontal: 16,
    marginBottom: 14,
  },
  dateRowText: { color: COLORS.white, fontSize: 15, fontWeight: '600' },
  saveButton: {
    backgroundColor: TEAL,
    borderRadius: 14,
    paddingVertical: 14,
    alignItems: 'center',
    marginBottom: 10,
  },
  saveButtonText: { color: COLORS.white, fontSize: 16, fontWeight: '700' },
  savedNote: {
    color: TEAL,
    fontSize: 15,
    fontWeight: '600',
    textAlign: 'center',
    marginBottom: 10,
  },
  closeButton: { paddingVertical: 10, alignItems: 'center' },
  closeButtonText: { color: MUTED, fontSize: 15, fontWeight: '600' },
});
