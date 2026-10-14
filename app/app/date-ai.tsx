import { useCallback, useState } from 'react';
import {
  ActivityIndicator,
  Pressable,
  ScrollView,
  StyleSheet,
  Text,
  TextInput,
  View,
} from 'react-native';
import { router } from 'expo-router';
import DateTimePicker from '@react-native-community/datetimepicker';
import {
  generateDatePlan,
  saveAiPlan,
  type AiDatePlan,
} from '../src/lib/ai-dates';

const NAVY = '#123B63';
const TEAL = '#14B8A6';
const MUTED = '#8AA0B8';
const CARD = '#1A2F4D';
const CHIP = '#24405F';
const INPUT_BG = '#0F2540';

const MOODS = ['romantic', 'fun', 'relaxed', 'adventurous'] as const;
const BUDGETS = ['free', 'low', 'medium', 'splurge'] as const;

function label(s: string): string {
  return s.charAt(0).toUpperCase() + s.slice(1);
}

function toIsoDate(d: Date): string {
  const m = `${d.getMonth() + 1}`.padStart(2, '0');
  const day = `${d.getDate()}`.padStart(2, '0');
  return `${d.getFullYear()}-${m}-${day}`;
}

export default function DateAiScreen() {
  const [mood, setMood] = useState<string | null>(null);
  const [budget, setBudget] = useState<string | null>(null);
  const [location, setLocation] = useState('');
  const [occasion, setOccasion] = useState('');
  const [generating, setGenerating] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [plan, setPlan] = useState<AiDatePlan | null>(null);
  const [pickedDate, setPickedDate] = useState<Date | null>(null);
  const [showPicker, setShowPicker] = useState(false);
  const [saving, setSaving] = useState(false);
  const [saveError, setSaveError] = useState<string | null>(null);

  const generate = useCallback(async () => {
    if (generating) return;
    setGenerating(true);
    setError(null);
    setPlan(null);
    const res = await generateDatePlan({
      mood,
      budget,
      location: location.trim() || null,
      occasion: occasion.trim() || null,
    });
    setGenerating(false);
    if (res.error) {
      setError(res.error);
      return;
    }
    setPlan(res.data);
  }, [generating, mood, budget, location, occasion]);

  const onPickerChange = (_event: any, date?: Date) => {
    setShowPicker(false);
    if (date) setPickedDate(date);
  };

  const save = useCallback(async () => {
    if (!plan || saving) return;
    setSaving(true);
    setSaveError(null);
    const res = await saveAiPlan(plan, pickedDate ? toIsoDate(pickedDate) : null);
    setSaving(false);
    if (res.error) {
      setSaveError(res.error);
      return;
    }
    router.replace('/date-plans');
  }, [plan, saving, pickedDate]);

  return (
    <ScrollView style={styles.scroll} contentContainerStyle={styles.root}>
      <Text style={styles.title}>AI date planner</Text>
      <Text style={styles.subtitle}>
        Tell us the vibe and the AI dreams up one date for the two of you.
      </Text>

      <Text style={styles.sectionLabel}>Mood</Text>
      <View style={styles.chipRow}>
        {MOODS.map((m) => (
          <Pressable
            key={m}
            style={[styles.chip, mood === m && styles.chipActive]}
            onPress={() => setMood(mood === m ? null : m)}
          >
            <Text style={[styles.chipText, mood === m && styles.chipTextActive]}>
              {label(m)}
            </Text>
          </Pressable>
        ))}
      </View>

      <Text style={styles.sectionLabel}>Budget</Text>
      <View style={styles.chipRow}>
        {BUDGETS.map((b) => (
          <Pressable
            key={b}
            style={[styles.chip, budget === b && styles.chipActive]}
            onPress={() => setBudget(budget === b ? null : b)}
          >
            <Text style={[styles.chipText, budget === b && styles.chipTextActive]}>
              {label(b)}
            </Text>
          </Pressable>
        ))}
      </View>

      <Text style={styles.sectionLabel}>Location</Text>
      <TextInput
        style={styles.input}
        placeholder="Where are you? (optional)"
        placeholderTextColor={MUTED}
        value={location}
        onChangeText={setLocation}
      />

      <Text style={styles.sectionLabel}>Occasion</Text>
      <TextInput
        style={styles.input}
        placeholder="Anniversary, first date, just because... (optional)"
        placeholderTextColor={MUTED}
        value={occasion}
        onChangeText={setOccasion}
      />

      <Pressable
        style={[styles.generateButton, generating && styles.generateButtonDisabled]}
        onPress={() => void generate()}
        disabled={generating}
      >
        {generating ? (
          <ActivityIndicator color="#FFFFFF" />
        ) : (
          <Text style={styles.generateText}>Generate a date</Text>
        )}
      </Pressable>

      {error && <Text style={styles.error}>{error}</Text>}

      {plan && (
        <View style={styles.card}>
          <Text style={styles.cardLabel}>Your date</Text>
          <Text style={styles.planTitle}>{plan.title}</Text>
          <Text style={styles.planDescription}>{plan.description}</Text>
          <View style={styles.metaRow}>
            {plan.category && <Text style={styles.meta}>{label(plan.category)}</Text>}
            {plan.estimatedCost ? <Text style={styles.meta}>{plan.estimatedCost}</Text> : null}
          </View>
          {plan.tips.length > 0 && (
            <View style={styles.tips}>
              {plan.tips.map((tip, i) => (
                <Text key={i} style={styles.tip}>
                  {'\u2022'} {tip}
                </Text>
              ))}
            </View>
          )}

          <Pressable style={styles.dateButton} onPress={() => setShowPicker(true)}>
            <Text style={styles.dateButtonText}>
              {pickedDate ? `On ${toIsoDate(pickedDate)}` : 'Pick a date (optional)'}
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
          <Pressable
            style={[styles.saveButton, saving && styles.generateButtonDisabled]}
            onPress={() => void save()}
            disabled={saving}
          >
            {saving ? (
              <ActivityIndicator color="#FFFFFF" />
            ) : (
              <Text style={styles.saveButtonText}>Save as plan</Text>
            )}
          </Pressable>
        </View>
      )}
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  scroll: { flex: 1, backgroundColor: NAVY },
  root: { padding: 20, paddingBottom: 40 },
  title: { color: '#FFFFFF', fontSize: 24, fontWeight: '800', marginBottom: 6 },
  subtitle: { color: MUTED, fontSize: 15, lineHeight: 21, marginBottom: 20 },
  sectionLabel: {
    color: TEAL,
    fontSize: 12,
    fontWeight: '700',
    textTransform: 'uppercase',
    marginTop: 14,
    marginBottom: 8,
  },
  chipRow: { flexDirection: 'row', flexWrap: 'wrap', gap: 8 },
  chip: {
    backgroundColor: CHIP,
    borderRadius: 20,
    paddingVertical: 8,
    paddingHorizontal: 16,
  },
  chipActive: { backgroundColor: TEAL },
  chipText: { color: '#FFFFFF', fontSize: 14, fontWeight: '600' },
  chipTextActive: { color: NAVY },
  input: {
    backgroundColor: INPUT_BG,
    borderRadius: 12,
    paddingVertical: 12,
    paddingHorizontal: 14,
    color: '#FFFFFF',
    fontSize: 15,
  },
  generateButton: {
    backgroundColor: TEAL,
    borderRadius: 14,
    paddingVertical: 15,
    alignItems: 'center',
    marginTop: 22,
  },
  generateButtonDisabled: { opacity: 0.6 },
  generateText: { color: '#FFFFFF', fontSize: 16, fontWeight: '700' },
  error: { color: '#F97066', fontSize: 14, marginTop: 12, lineHeight: 20 },
  card: { backgroundColor: CARD, borderRadius: 16, padding: 18, marginTop: 20 },
  cardLabel: {
    color: TEAL,
    fontSize: 12,
    fontWeight: '700',
    textTransform: 'uppercase',
    marginBottom: 8,
  },
  planTitle: { color: '#FFFFFF', fontSize: 20, fontWeight: '800', marginBottom: 8 },
  planDescription: { color: '#FFFFFF', fontSize: 15, lineHeight: 22 },
  metaRow: { flexDirection: 'row', gap: 8, marginTop: 12 },
  meta: {
    color: TEAL,
    fontSize: 13,
    fontWeight: '600',
    backgroundColor: CHIP,
    borderRadius: 10,
    paddingVertical: 5,
    paddingHorizontal: 10,
  },
  tips: { marginTop: 12 },
  tip: { color: MUTED, fontSize: 14, lineHeight: 21, marginTop: 4 },
  dateButton: {
    marginTop: 14,
    borderWidth: 1.5,
    borderColor: '#3A5470',
    borderRadius: 12,
    paddingVertical: 11,
    alignItems: 'center',
  },
  dateButtonText: { color: '#FFFFFF', fontSize: 15, fontWeight: '600' },
  saveButton: {
    backgroundColor: TEAL,
    borderRadius: 14,
    paddingVertical: 14,
    alignItems: 'center',
    marginTop: 12,
  },
  saveButtonText: { color: '#FFFFFF', fontSize: 16, fontWeight: '700' },
});
