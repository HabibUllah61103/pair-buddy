import { useCallback, useEffect, useState } from 'react';
import {
  ActivityIndicator,
  Alert,
  FlatList,
  Pressable,
  StyleSheet,
  Text,
  View,
} from 'react-native';
import { router } from 'expo-router';
import DateTimePicker from '@react-native-community/datetimepicker';
import {
  deletePlan,
  formatPlanDate,
  getPlans,
  todayIso,
  updatePlan,
  type DatePlan,
} from '../src/lib/dates';
import { FONTS } from '../src/theme';
import { useTheme } from '../src/lib/theme-provider';

function categoryLabel(c: string | null): string {
  if (!c) return 'Custom';
  return c.charAt(0).toUpperCase() + c.slice(1);
}

function toIsoDate(d: Date): string {
  const m = `${d.getMonth() + 1}`.padStart(2, '0');
  const day = `${d.getDate()}`.padStart(2, '0');
  return `${d.getFullYear()}-${m}-${day}`;
}

function splitPlans(plans: DatePlan[]): {
  upcoming: DatePlan[];
  unscheduled: DatePlan[];
  past: DatePlan[];
} {
  const today = todayIso();
  const upcoming: DatePlan[] = [];
  const unscheduled: DatePlan[] = [];
  const past: DatePlan[] = [];
  for (const p of plans) {
    if (!p.plannedFor) unscheduled.push(p);
    else if (p.plannedFor >= today) upcoming.push(p);
    else past.push(p);
  }
  return { upcoming, unscheduled, past };
}

export default function DatePlansScreen() {
  const { tokens } = useTheme();
  const [plans, setPlans] = useState<DatePlan[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [editingId, setEditingId] = useState<string | null>(null);
  const [busyId, setBusyId] = useState<string | null>(null);

  const load = useCallback(async () => {
    setLoading(true);
    setError(null);
    const res = await getPlans();
    setLoading(false);
    if (res.error) {
      setError(res.error);
      return;
    }
    setPlans(res.data ?? []);
  }, []);

  useEffect(() => {
    let cancelled = false;
    (async () => {
      const res = await getPlans();
      if (cancelled) return;
      setLoading(false);
      if (res.error) setError(res.error);
      else setPlans(res.data ?? []);
    })();
    return () => {
      cancelled = true;
    };
  }, []);

  const onPickDate = async (plan: DatePlan, date?: Date) => {
    setEditingId(null);
    if (!date) return;
    setBusyId(plan.id);
    const res = await updatePlan(plan.id, { plannedFor: toIsoDate(date) });
    setBusyId(null);
    if (res.error) {
      setError(res.error);
      return;
    }
    setPlans((prev) => prev.map((p) => (p.id === plan.id && res.data ? res.data : p)));
  };

  const onDelete = (plan: DatePlan) => {
    Alert.alert('Delete plan', `Remove "${plan.title}"?`, [
      { text: 'Cancel', style: 'cancel' },
      {
        text: 'Delete',
        style: 'destructive',
        onPress: async () => {
          setBusyId(plan.id);
          const res = await deletePlan(plan.id);
          setBusyId(null);
          if (res.error) {
            setError(res.error);
            return;
          }
          setPlans((prev) => prev.filter((p) => p.id !== plan.id));
        },
      },
    ]);
  };

  const renderPlan = (plan: DatePlan) => (
    <View key={plan.id} style={[styles.card, { backgroundColor: tokens.card }]}>
      <View style={styles.cardTop}>
        <View style={styles.cardMain}>
          <Text style={[styles.cardCategory, { color: tokens.primary }]}>
            {categoryLabel(plan.category)}
          </Text>
          <Text style={[styles.cardTitle, { color: tokens.ink }]}>{plan.title}</Text>
          {plan.description ? (
            <Text style={[styles.cardDesc, { color: tokens.muted }]} numberOfLines={2}>
              {plan.description}
            </Text>
          ) : null}
          <Text style={[styles.cardDate, { color: tokens.ink }]}>
            {formatPlanDate(plan.plannedFor)}
          </Text>
        </View>
        {busyId === plan.id && <ActivityIndicator color={tokens.primary} />}
      </View>
      <View style={styles.cardActions}>
        <Pressable
          style={[styles.actionButton, { backgroundColor: tokens.primaryTint }]}
          onPress={() => setEditingId(plan.id)}
        >
          <Text style={[styles.actionText, { color: tokens.primary }]}>Set date</Text>
        </Pressable>
        <Pressable
          style={[styles.actionButton, { backgroundColor: tokens.primaryTint }]}
          onPress={() => onDelete(plan)}
        >
          <Text style={[styles.actionText, { color: tokens.danger }]}>Delete</Text>
        </Pressable>
      </View>
      {editingId === plan.id && (
        <DateTimePicker
          value={plan.plannedFor ? new Date(`${plan.plannedFor}T12:00:00`) : new Date()}
          mode="date"
          display="default"
          minimumDate={new Date()}
          onChange={(_event: any, date?: Date) => onPickDate(plan, date)}
        />
      )}
    </View>
  );

  const { upcoming, unscheduled, past } = splitPlans(plans);

  return (
    <View style={[styles.root, { backgroundColor: tokens.background }]}>
      <View style={styles.header}>
        <Pressable onPress={() => router.back()} hitSlop={12}>
          <Text style={[styles.back, { color: tokens.primary }]}>Back</Text>
        </Pressable>
        <Text style={[styles.title, { color: tokens.ink }]}>My date plans</Text>
        <Pressable onPress={() => router.push('/date-ideas')} hitSlop={12}>
          <Text style={[styles.back, { color: tokens.primary }]}>Ideas</Text>
        </Pressable>
      </View>

      {loading ? (
        <ActivityIndicator color={tokens.primary} style={styles.loader} />
      ) : error ? (
        <View style={styles.center}>
          <Text style={[styles.error, { color: tokens.danger }]}>{error}</Text>
          <Pressable
            style={[styles.retry, { backgroundColor: tokens.primary }]}
            onPress={load}
          >
            <Text style={[styles.retryText, { color: tokens.onPrimary }]}>Try again</Text>
          </Pressable>
        </View>
      ) : plans.length === 0 ? (
        <View style={styles.center}>
          <Text style={[styles.empty, { color: tokens.muted }]}>
            No plans yet. Browse the idea bank and save your first date.
          </Text>
          <Pressable
            style={[styles.retry, { backgroundColor: tokens.primary }]}
            onPress={() => router.push('/date-ideas')}
          >
            <Text style={[styles.retryText, { color: tokens.onPrimary }]}>
              Browse ideas
            </Text>
          </Pressable>
        </View>
      ) : (
        <FlatList
          data={[
            { section: 'Upcoming', items: upcoming },
            { section: 'Unscheduled', items: unscheduled },
            { section: 'Past', items: past },
          ]}
          keyExtractor={(s) => s.section}
          contentContainerStyle={styles.list}
          renderItem={({ item: s }) =>
            s.items.length === 0 ? null : (
              <View>
                <Text style={[styles.sectionTitle, { color: tokens.muted }]}>
                  {s.section}
                </Text>
                {s.items.map(renderPlan)}
              </View>
            )
          }
        />
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
    paddingHorizontal: 20,
    paddingTop: 56,
    paddingBottom: 12,
  },
  back: { fontFamily: FONTS.body, fontSize: 16, fontWeight: '600' },
  title: { fontFamily: FONTS.heading, fontSize: 20, fontWeight: '800' },
  loader: { marginTop: 40 },
  list: { paddingHorizontal: 20, paddingBottom: 32 },
  sectionTitle: {
    fontFamily: FONTS.body,
    fontSize: 13,
    fontWeight: '700',
    textTransform: 'uppercase',
    marginTop: 8,
    marginBottom: 10,
  },
  card: {
    borderRadius: 14,
    padding: 16,
    marginBottom: 12,
  },
  cardTop: { flexDirection: 'row', alignItems: 'flex-start' },
  cardMain: { flex: 1 },
  cardCategory: {
    fontFamily: FONTS.body,
    fontSize: 11,
    fontWeight: '700',
    textTransform: 'uppercase',
    marginBottom: 6,
  },
  cardTitle: {
    fontFamily: FONTS.heading,
    fontSize: 17,
    fontWeight: '700',
    marginBottom: 4,
  },
  cardDesc: { fontFamily: FONTS.body, fontSize: 14, lineHeight: 20, marginBottom: 6 },
  cardDate: { fontFamily: FONTS.body, fontSize: 14, fontWeight: '600' },
  cardActions: { flexDirection: 'row', gap: 12, marginTop: 12 },
  actionButton: {
    borderRadius: 10,
    paddingVertical: 8,
    paddingHorizontal: 14,
  },
  actionText: { fontFamily: FONTS.body, fontSize: 14, fontWeight: '600' },
  center: { flex: 1, alignItems: 'center', justifyContent: 'center', padding: 32 },
  error: {
    fontFamily: FONTS.body,
    fontSize: 15,
    textAlign: 'center',
    marginBottom: 12,
  },
  empty: {
    fontFamily: FONTS.body,
    fontSize: 15,
    textAlign: 'center',
    marginBottom: 16,
    lineHeight: 22,
  },
  retry: {
    borderRadius: 12,
    paddingVertical: 10,
    paddingHorizontal: 20,
  },
  retryText: { fontFamily: FONTS.body, fontWeight: '700' },
});
