import { useState } from 'react';
import type { ReactNode } from 'react';
import {
  ActivityIndicator,
  Image,
  Platform,
  Pressable,
  StyleSheet,
  Switch,
  Text,
  TextInput,
  View,
} from 'react-native';
import * as ImagePicker from 'expo-image-picker';
import DateTimePicker, {
  type DateTimePickerEvent,
} from '@react-native-community/datetimepicker';
import type { OnboardingDraft } from '../../lib/onboarding';
import { COLORS } from '../../theme';

const NAVY = COLORS.navy;
const TEAL = COLORS.teal;
const MUTED = COLORS.muted;

export type StepProps = {
  draft: OnboardingDraft;
  update: (patch: Partial<OnboardingDraft>) => void;
  onNext: () => void;
  onBack: () => void;
  onFinish: () => void;
  finishing: boolean;
  finishError: string | null;
};

function StepShell({
  title,
  subtitle,
  children,
  onNext,
  onBack,
  nextLabel = 'Continue',
  nextDisabled = false,
  showBack = true,
}: {
  title: string;
  subtitle: string;
  children?: ReactNode;
  onNext: () => void;
  onBack: () => void;
  nextLabel?: string;
  nextDisabled?: boolean;
  showBack?: boolean;
}) {
  return (
    <View style={styles.shell}>
      <View style={styles.body}>
        <Text style={styles.title}>{title}</Text>
        <Text style={styles.subtitle}>{subtitle}</Text>
        {children}
      </View>
      <View style={styles.footer}>
        <Pressable
          style={[styles.primaryButton, nextDisabled && styles.buttonDisabled]}
          onPress={onNext}
          disabled={nextDisabled}
        >
          <Text style={styles.primaryButtonText}>{nextLabel}</Text>
        </Pressable>
        {showBack ? (
          <Pressable style={styles.backButton} onPress={onBack}>
            <Text style={styles.backText}>Back</Text>
          </Pressable>
        ) : null}
      </View>
    </View>
  );
}

function Chip({
  label,
  selected,
  onPress,
}: {
  label: string;
  selected: boolean;
  onPress: () => void;
}) {
  return (
    <Pressable
      style={[styles.chip, selected && styles.chipSelected]}
      onPress={onPress}
    >
      <Text style={[styles.chipText, selected && styles.chipTextSelected]}>
        {label}
      </Text>
    </Pressable>
  );
}

function ageOn(dateIso: string): number | null {
  const d = new Date(`${dateIso}T00:00:00`);
  if (Number.isNaN(d.getTime())) return null;
  const now = new Date();
  let age = now.getFullYear() - d.getFullYear();
  const m = now.getMonth() - d.getMonth();
  if (m < 0 || (m === 0 && now.getDate() < d.getDate())) age -= 1;
  return age;
}

function formatDate(iso: string): string {
  if (!iso) return 'Select a date';
  const d = new Date(`${iso}T00:00:00`);
  return d.toLocaleDateString(undefined, { year: 'numeric', month: 'long', day: 'numeric' });
}

// ---------------------------------------------------------------------------
// Steps
// ---------------------------------------------------------------------------

export function WelcomeStep({ onNext }: StepProps) {
  return (
    <StepShell
      title="Welcome to Pair Buddy"
      subtitle="A small daily ritual for the two of you. Let's set things up — it takes about a minute."
      onNext={onNext}
      onBack={() => {}}
      nextLabel="Let's go"
      showBack={false}
    />
  );
}

export function NameStep({ draft, update, onNext, onBack }: StepProps) {
  const valid = draft.name.trim().length >= 2;
  return (
    <StepShell
      title="What should we call you?"
      subtitle="This is the name your partner will see."
      onNext={onNext}
      onBack={onBack}
      nextDisabled={!valid}
    >
      <TextInput
        style={styles.input}
        placeholder="Your name"
        placeholderTextColor={MUTED}
        value={draft.name}
        onChangeText={(t) => update({ name: t })}
        autoFocus
        maxLength={40}
      />
    </StepShell>
  );
}

export function BirthdateStep({ draft, update, onNext, onBack }: StepProps) {
  const [showPicker, setShowPicker] = useState(false);
  const age = draft.birthdate ? ageOn(draft.birthdate) : null;
  const valid = age !== null && age >= 13;

  const onChange = (event: DateTimePickerEvent, date?: Date) => {
    setShowPicker(Platform.OS === 'ios');
    if (event.type === 'dismissed' || !date) return;
    update({ birthdate: date.toISOString().slice(0, 10) });
  };

  return (
    <StepShell
      title="When's your birthday?"
      subtitle="We'll keep it quiet — just for the little celebrations."
      onNext={onNext}
      onBack={onBack}
      nextDisabled={!valid}
    >
      <Pressable style={styles.input} onPress={() => setShowPicker(true)}>
        <Text style={[styles.inputText, !draft.birthdate && styles.placeholder]}>
          {formatDate(draft.birthdate)}
        </Text>
      </Pressable>
      {showPicker && (
        <DateTimePicker
          value={draft.birthdate ? new Date(`${draft.birthdate}T00:00:00`) : new Date(2000, 0, 1)}
          mode="date"
          display={Platform.OS === 'ios' ? 'spinner' : 'default'}
          maximumDate={new Date()}
          onChange={onChange}
        />
      )}
      {draft.birthdate && age !== null && age < 13 ? (
        <Text style={styles.hint}>Pair Buddy is for ages 13 and up.</Text>
      ) : null}
    </StepShell>
  );
}

const GENDERS = ['Woman', 'Man', 'Non-binary', 'Prefer not to say'];

export function GenderStep({ draft, update, onNext, onBack }: StepProps) {
  return (
    <StepShell
      title="How do you identify?"
      subtitle="Only used to personalize your experience."
      onNext={onNext}
      onBack={onBack}
      nextDisabled={!draft.gender}
    >
      <View style={styles.chips}>
        {GENDERS.map((g) => (
          <Chip key={g} label={g} selected={draft.gender === g} onPress={() => update({ gender: g })} />
        ))}
      </View>
    </StepShell>
  );
}

export function PhotoStep({ draft, update, onNext, onBack }: StepProps) {
  const [error, setError] = useState<string | null>(null);

  const pickPhoto = async () => {
    setError(null);
    const perm = await ImagePicker.requestMediaLibraryPermissionsAsync();
    if (!perm.granted) {
      setError('Photo access was denied — you can skip this step and add a photo later.');
      return;
    }
    const result = await ImagePicker.launchImageLibraryAsync({
      mediaTypes: ImagePicker.MediaTypeOptions.Images,
      allowsEditing: true,
      aspect: [1, 1],
      quality: 0.8,
    });
    if (!result.canceled) {
      update({ avatarUri: result.assets[0].uri });
    }
  };

  return (
    <StepShell
      title="Add a photo"
      subtitle="So your partner always sees your smiling face."
      onNext={onNext}
      onBack={onBack}
      nextLabel={draft.avatarUri ? 'Continue' : 'Skip for now'}
    >
      <View style={styles.photoWrap}>
        {draft.avatarUri ? (
          <Image source={{ uri: draft.avatarUri }} style={styles.photo} />
        ) : (
          <View style={styles.photoPlaceholder}>
            <Text style={styles.photoPlaceholderText}>No photo yet</Text>
          </View>
        )}
        <Pressable style={styles.secondaryButton} onPress={pickPhoto}>
          <Text style={styles.secondaryButtonText}>
            {draft.avatarUri ? 'Choose a different photo' : 'Choose a photo'}
          </Text>
        </Pressable>
        {error ? <Text style={styles.hint}>{error}</Text> : null}
      </View>
    </StepShell>
  );
}

const RELATIONSHIP_TYPES = ['Dating', 'Engaged', 'Married', 'Long-term partners'];

export function RelationshipTypeStep({ draft, update, onNext, onBack }: StepProps) {
  return (
    <StepShell
      title="What best describes you two?"
      subtitle="It helps us shape the experience around your story."
      onNext={onNext}
      onBack={onBack}
      nextDisabled={!draft.relationshipType}
    >
      <View style={styles.chips}>
        {RELATIONSHIP_TYPES.map((t) => (
          <Chip
            key={t}
            label={t}
            selected={draft.relationshipType === t}
            onPress={() => update({ relationshipType: t })}
          />
        ))}
      </View>
    </StepShell>
  );
}

const RELATIONSHIP_GOALS = [
  'Grow closer',
  'Communicate better',
  'More quality time',
  'Keep the spark alive',
];

export function RelationshipGoalStep({ draft, update, onNext, onBack }: StepProps) {
  return (
    <StepShell
      title="What do you want more of?"
      subtitle="Pick the one that matters most right now."
      onNext={onNext}
      onBack={onBack}
      nextDisabled={!draft.relationshipGoal}
    >
      <View style={styles.chips}>
        {RELATIONSHIP_GOALS.map((g) => (
          <Chip
            key={g}
            label={g}
            selected={draft.relationshipGoal === g}
            onPress={() => update({ relationshipGoal: g })}
          />
        ))}
      </View>
    </StepShell>
  );
}

export function AnniversaryStep({ draft, update, onNext, onBack }: StepProps) {
  const [showPicker, setShowPicker] = useState(false);

  const onChange = (event: DateTimePickerEvent, date?: Date) => {
    setShowPicker(Platform.OS === 'ios');
    if (event.type === 'dismissed' || !date) return;
    update({ anniversaryDate: date.toISOString().slice(0, 10) });
  };

  return (
    <StepShell
      title="When did it all begin?"
      subtitle="We'll count every day from here."
      onNext={onNext}
      onBack={onBack}
      nextDisabled={!draft.anniversaryDate}
    >
      <Pressable style={styles.input} onPress={() => setShowPicker(true)}>
        <Text style={[styles.inputText, !draft.anniversaryDate && styles.placeholder]}>
          {formatDate(draft.anniversaryDate)}
        </Text>
      </Pressable>
      {showPicker && (
        <DateTimePicker
          value={
            draft.anniversaryDate
              ? new Date(`${draft.anniversaryDate}T00:00:00`)
              : new Date()
          }
          mode="date"
          display={Platform.OS === 'ios' ? 'spinner' : 'default'}
          maximumDate={new Date()}
          onChange={onChange}
        />
      )}
    </StepShell>
  );
}

const COMMITMENTS = [
  'Answer one question a day',
  'Share a memory every week',
  'Send a doodle when I miss them',
];

export function DailyCommitmentStep({ draft, update, onNext, onBack }: StepProps) {
  return (
    <StepShell
      title="Pick your daily ritual"
      subtitle="One small thing, every day. That's the whole secret."
      onNext={onNext}
      onBack={onBack}
      nextDisabled={!draft.dailyCommitment}
    >
      <View style={styles.chips}>
        {COMMITMENTS.map((c) => (
          <Chip
            key={c}
            label={c}
            selected={draft.dailyCommitment === c}
            onPress={() => update({ dailyCommitment: c })}
          />
        ))}
      </View>
    </StepShell>
  );
}

export function PartnerInviteStep({ onNext, onBack }: StepProps) {
  return (
    <StepShell
      title="Bring your partner in"
      subtitle="Pair Buddy is better together. You'll get your own invite code right after setup — share it and you're paired in seconds."
      onNext={onNext}
      onBack={onBack}
      nextLabel="I'll invite them later"
    />
  );
}

export function RemindersStep({ draft, update, onNext, onBack }: StepProps) {
  const [showPicker, setShowPicker] = useState(false);

  const onTimeChange = (event: DateTimePickerEvent, date?: Date) => {
    setShowPicker(false);
    if (event.type === 'dismissed' || !date) return;
    const hh = String(date.getHours()).padStart(2, '0');
    const mm = String(date.getMinutes()).padStart(2, '0');
    update({ reminderTime: `${hh}:${mm}` });
  };

  const [h, m] = draft.reminderTime.split(':').map(Number);

  return (
    <StepShell
      title="Want a gentle nudge?"
      subtitle="We'll remind you about your daily ritual. Nothing noisy, just a tap on the shoulder."
      onNext={onNext}
      onBack={onBack}
    >
      <View style={styles.reminderRow}>
        <Text style={styles.reminderLabel}>Daily reminder</Text>
        <Switch
          value={draft.reminderEnabled}
          onValueChange={(v) => update({ reminderEnabled: v })}
          trackColor={{ false: '#3A5470', true: TEAL }}
        />
      </View>
      {draft.reminderEnabled ? (
        <Pressable style={styles.input} onPress={() => setShowPicker(true)}>
          <Text style={styles.inputText}>{draft.reminderTime}</Text>
        </Pressable>
      ) : null}
      {showPicker && (
        <DateTimePicker
          value={new Date(2000, 0, 1, h || 9, m || 0)}
          mode="time"
          display={Platform.OS === 'ios' ? 'spinner' : 'default'}
          onChange={onTimeChange}
        />
      )}
    </StepShell>
  );
}

export function SuccessStep({ onFinish, finishing, finishError }: StepProps) {
  return (
    <View style={styles.shell}>
      <View style={styles.body}>
        <Text style={styles.title}>You're all set</Text>
        <Text style={styles.subtitle}>
          Your space is ready. Invite your partner and answer your first question together.
        </Text>
        {finishError ? <Text style={styles.error}>{finishError}</Text> : null}
      </View>
      <View style={styles.footer}>
        <Pressable
          style={[styles.primaryButton, finishing && styles.buttonDisabled]}
          onPress={onFinish}
          disabled={finishing}
        >
          {finishing ? (
            <ActivityIndicator color={COLORS.white} />
          ) : (
            <Text style={styles.primaryButtonText}>Finish</Text>
          )}
        </Pressable>
      </View>
    </View>
  );
}

// ---------------------------------------------------------------------------
// Styles
// ---------------------------------------------------------------------------

const styles = StyleSheet.create({
  shell: {
    flex: 1,
    backgroundColor: NAVY,
    padding: 28,
    justifyContent: 'space-between',
  },
  body: {
    flex: 1,
    justifyContent: 'center',
  },
  title: {
    color: COLORS.white,
    fontSize: 28,
    fontWeight: '800',
    marginBottom: 10,
  },
  subtitle: {
    color: TEAL,
    fontSize: 15,
    marginBottom: 28,
    lineHeight: 22,
  },
  footer: {
    gap: 8,
    paddingBottom: 8,
  },
  primaryButton: {
    backgroundColor: TEAL,
    borderRadius: 14,
    paddingVertical: 15,
    alignItems: 'center',
  },
  primaryButtonText: {
    color: COLORS.white,
    fontSize: 16,
    fontWeight: '600',
  },
  buttonDisabled: {
    opacity: 0.5,
  },
  backButton: {
    alignItems: 'center',
    paddingVertical: 10,
  },
  backText: {
    color: MUTED,
    fontSize: 15,
    fontWeight: '500',
  },
  secondaryButton: {
    backgroundColor: COLORS.white,
    borderRadius: 14,
    paddingVertical: 13,
    alignItems: 'center',
    marginTop: 16,
  },
  secondaryButtonText: {
    color: NAVY,
    fontSize: 15,
    fontWeight: '600',
  },
  input: {
    backgroundColor: COLORS.white,
    borderRadius: 14,
    paddingHorizontal: 16,
    paddingVertical: 14,
  },
  inputText: {
    fontSize: 16,
    color: NAVY,
  },
  placeholder: {
    color: MUTED,
  },
  chips: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    gap: 10,
  },
  chip: {
    borderWidth: 1.5,
    borderColor: '#3A5470',
    borderRadius: 24,
    paddingHorizontal: 18,
    paddingVertical: 12,
  },
  chipSelected: {
    backgroundColor: TEAL,
    borderColor: TEAL,
  },
  chipText: {
    color: COLORS.white,
    fontSize: 15,
    fontWeight: '500',
  },
  chipTextSelected: {
    color: COLORS.white,
    fontWeight: '700',
  },
  hint: {
    color: '#FF9D9D',
    fontSize: 13,
    marginTop: 10,
  },
  error: {
    color: '#FF9D9D',
    fontSize: 14,
    marginTop: 12,
  },
  photoWrap: {
    alignItems: 'center',
  },
  photo: {
    width: 160,
    height: 160,
    borderRadius: 80,
  },
  photoPlaceholder: {
    width: 160,
    height: 160,
    borderRadius: 80,
    backgroundColor: '#1E3A5C',
    alignItems: 'center',
    justifyContent: 'center',
  },
  photoPlaceholderText: {
    color: MUTED,
    fontSize: 14,
  },
  reminderRow: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    backgroundColor: '#1E3A5C',
    borderRadius: 14,
    paddingHorizontal: 16,
    paddingVertical: 14,
    marginBottom: 12,
  },
  reminderLabel: {
    color: COLORS.white,
    fontSize: 16,
    fontWeight: '500',
  },
});
