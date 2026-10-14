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
import { useTheme } from '../src/lib/theme-provider';
import { FONTS } from '../src/theme';

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
  const { tokens } = useTheme();
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
    <ScrollView style={[styles.scroll, { backgroundColor: tokens.background }]} contentContainerStyle={styles.root}>
      <Text style={[styles.title, { color: tokens.ink }]}>AI date planner</Text>
      <Text style={[styles.subtitle, { color: tokens.muted }]}>
        Tell us the vibe and the AI dreams up one date for the two of you.
      </Text>

      <Text style={[styles.sectionLabel, { color: tokens.primary }]}>Mood</Text>
      <View style={styles.chipRow}>
        {MOODS.map((m) => (
          <Pressable
            key={m}
            style={[styles.chip, { backgroundColor: tokens.primaryTint }, mood === m && { backgroundColor: tokens.primary }]}
            onPress={() => setMood(mood === m ? null : m)}
          >
            <Text style={[styles.chipText, { color: tokens.muted }, mood === m && { color: tokens.onPrimary }]}>
              {label(m)}
            </Text>
          </Pressable>
        ))}
      </View>

      <Text style={[styles.sectionLabel, { color: tokens.primary }]}>Budget</Text>
      <View style={styles.chipRow}>
        {BUDGETS.map((b) => (
          <Pressable
            key={b}
            style={[styles.chip, { backgroundColor: tokens.primaryTint }, budget === b && { backgroundColor: tokens.primary }]}
            onPress={() => setBudget(budget === b ? null : b)}
          >
            <Text style={[styles.chipText, { color: tokens.muted }, budget === b && { color: tokens.onPrimary }]}>
              {label(b)}
            </Text>
          </Pressable>
        ))}
      </View>

      <Text style={[styles.sectionLabel, { color: tokens.primary }]}>Location</Text>
      <TextInput
        style={[styles.input, { backgroundColor: tokens.primaryTint, color: tokens.ink }]}
        placeholder="Where are you? (optional)"
        placeholderTextColor={tokens.muted}
        value={location}
        onChangeText={setLocation}
      />

      <Text style={[styles.sectionLabel, { color: tokens.primary }]}>Occasion</Text>
      <TextInput
        style={[styles.input, { backgroundColor: tokens.primaryTint, color: tokens.ink }]}
        placeholder="Anniversary, first date, just because... (optional)"
        placeholderTextColor={tokens.muted}
        value={occasion}
        onChangeText={setOccasion}
      />

      <Pressable
        style={[styles.generateButton, { backgroundColor: tokens.primary }, generating && styles.generateButtonDisabled]}
        onPress={() => void generate()}
        disabled={generating}
      >
        {generating ? (
          <ActivityIndicator color={tokens.onPrimary} />
        ) : (
          <Text style={[styles.generateText, { color: tokens.onPrimary }]}>Generate a date</Text>
        )}
      </Pressable>

      {error && <Text style={[styles.error, { color: tokens.danger }]}>{error}</Text>}

      {plan && (
        <View style={[styles.card, { backgroundColor: tokens.card }]}>
          <Text style={[styles.cardLabel, { color: tokens.primary }]}>Your date</Text>
          <Text style={[styles.planTitle, { color: tokens.ink }]}>{plan.title}</Text>
          <Text style={[styles.planDescription, { color: tokens.ink }]}>{plan.description}</Text>
          <View style={styles.metaRow}>
            {plan.category && <Text style={[styles.meta, { backgroundColor: tokens.primaryTint, color: tokens.primary }]}>{label(plan.category)}</Text>}
            {plan.estimatedCost ? <Text style={[styles.meta, { backgroundColor: tokens.primaryTint, color: tokens.primary }]}>{plan.estimatedCost}</Text> : null}
          </View>
          {plan.tips.length > 0 && (
            <View style={styles.tips}>
              {plan.tips.map((tip, i) => (
                <Text key={i} style={[styles.tip, { color: tokens.muted }]}>
                  {'\u2022'} {tip}
                </Text>
              ))}
            </View>
          )}

          <Pressable style={[styles.dateButton, { borderColor: tokens.border }]} onPress={() => setShowPicker(true)}>
            <Text style={[styles.dateButtonText, { color: tokens.ink }]}>
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

          {saveError && <Text style={[styles.error, { color: tokens.danger }]}>{saveError}</Text>}
          <Pressable
            style={[styles.saveButton, { backgroundColor: tokens.primary }, saving && styles.generateButtonDisabled]}
            onPress={() => void save()}
            disabled={saving}
          >
            {saving ? (
              <ActivityIndicator color={tokens.onPrimary} />
            ) : (
              <Text style={[styles.saveButtonText, { color: tokens.onPrimary }]}>Save as plan</Text>
            )}
          </Pressable>
        </View>
      )}
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  scroll: { flex: 1 },
  root: { padding: 20, paddingBottom: 40 },
  title: { fontFamily: FONTS.heading, fontSize: 24, fontWeight: '800', marginBottom: 6 },
  subtitle: { fontFamily: FONTS.body, fontSize: 15, lineHeight: 21, marginBottom: 20 },
  sectionLabel: {
    fontFamily: FONTS.body,
    fontSize: 12,
    fontWeight: '700',
    textTransform: 'uppercase',
    marginTop: 14,
    marginBottom: 8,
  },
  chipRow: { flexDirection: 'row', flexWrap: 'wrap', gap: 8 },
  chip: {
    borderRadius: 20,
    paddingVertical: 8,
    paddingHorizontal: 16,
  },
  chipText: { fontFamily: FONTS.body, fontSize: 14, fontWeight: '600' },
  input: {
    fontFamily: FONTS.body,
    borderRadius: 12,
    paddingVertical: 12,
    paddingHorizontal: 14,
    fontSize: 15,
  },
  generateButton: {
    borderRadius: 14,
    paddingVertical: 15,
    alignItems: 'center',
    marginTop: 22,
  },
  generateButtonDisabled: { opacity: 0.6 },
  generateText: { fontFamily: FONTS.body, fontSize: 16, fontWeight: '700' },
  error: { fontFamily: FONTS.body, fontSize: 14, marginTop: 12, lineHeight: 20 },
  card: { borderRadius: 16, padding: 18, marginTop: 20 },
  cardLabel: {
    fontFamily: FONTS.body,
    fontSize: 12,
    fontWeight: '700',
    textTransform: 'uppercase',
    marginBottom: 8,
  },
  planTitle: { fontFamily: FONTS.heading, fontSize: 20, fontWeight: '800', marginBottom: 8 },
  planDescription: { fontFamily: FONTS.body, fontSize: 15, lineHeight: 22 },
  metaRow: { flexDirection: 'row', gap: 8, marginTop: 12 },
  meta: {
    fontFamily: FONTS.body,
    fontSize: 13,
    fontWeight: '600',
    borderRadius: 10,
    paddingVertical: 5,
    paddingHorizontal: 10,
  },
  tips: { marginTop: 12 },
  tip: { fontFamily: FONTS.body, fontSize: 14, lineHeight: 21, marginTop: 4 },
  dateButton: {
    marginTop: 14,
    borderWidth: 1.5,
    borderRadius: 12,
    paddingVertical: 11,
    alignItems: 'center',
  },
  dateButtonText: { fontFamily: FONTS.body, fontSize: 15, fontWeight: '600' },
  saveButton: {
    borderRadius: 14,
    paddingVertical: 14,
    alignItems: 'center',
    marginTop: 12,
  },
  saveButtonText: { fontFamily: FONTS.body, fontSize: 16, fontWeight: '700' },
});
