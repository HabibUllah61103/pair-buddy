import { useState } from 'react';
import type { ReactNode } from 'react';
import {
  ActivityIndicator,
  Image,
  Platform,
  StyleSheet,
  Switch,
  Text,
  TextInput,
  View,
} from 'react-native';
import { LinearGradient } from 'expo-linear-gradient';
import * as ImagePicker from 'expo-image-picker';
import DateTimePicker, {
  type DateTimePickerEvent,
} from '@react-native-community/datetimepicker';
import type { OnboardingDraft } from '../../lib/onboarding';
import { useTheme } from '../../lib/theme-provider';
import { FadeInView, SpringPress } from '../animated';
import { HeartsIllustration } from '../hearts-illustration';
import type { ThemeTokens } from '../../lib/tokens';
import { FONTS } from '../../theme';

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
  tokens,
}: {
  title: string;
  subtitle: string;
  children?: ReactNode;
  onNext: () => void;
  onBack: () => void;
  nextLabel?: string;
  nextDisabled?: boolean;
  showBack?: boolean;
  tokens: ThemeTokens;
}) {
  const { mode } = useTheme();
  const bgSource =
    mode === 'dark'
      ? require('../../../assets/bg-night-stars.png')
      : require('../../../assets/bg-hearts-dreamy.png');
  return (
    <View style={[styles.shell, { backgroundColor: tokens.background }]}>
      <Image source={bgSource} style={styles.bg} resizeMode="cover" />
      <View style={styles.body}>
        <FadeInView delay={0}>
          <Text style={[styles.title, { color: tokens.ink }]}>{title}</Text>
          <Text style={[styles.subtitle, { color: tokens.primary }]}>{subtitle}</Text>
        </FadeInView>
        <FadeInView delay={120}>{children}</FadeInView>
      </View>
      <FadeInView delay={200}>
        <View style={styles.footer}>
          <SpringPress onPress={nextDisabled ? undefined : onNext}>
            <LinearGradient
              colors={tokens.gradient}
              start={{ x: 0, y: 0 }}
              end={{ x: 1, y: 0 }}
              style={[
                styles.primaryButton,
                styles.buttonShadow,
                nextDisabled && styles.buttonDisabled,
              ]}
            >
              <Text style={styles.primaryButtonText}>{nextLabel}</Text>
            </LinearGradient>
          </SpringPress>
          {showBack ? (
            <SpringPress onPress={onBack}>
              <View style={styles.backButton}>
                <Text style={[styles.backText, { color: tokens.muted }]}>Back</Text>
              </View>
            </SpringPress>
          ) : null}
        </View>
      </FadeInView>
    </View>
  );
}

function Chip({
  label,
  selected,
  onPress,
  tokens,
}: {
  label: string;
  selected: boolean;
  onPress: () => void;
  tokens: ThemeTokens;
}) {
  return (
    <SpringPress onPress={onPress}>
      {selected ? (
        <LinearGradient
          colors={tokens.gradient}
          start={{ x: 0, y: 0 }}
          end={{ x: 1, y: 0 }}
          style={[styles.chip, styles.chipShadow, { borderColor: 'transparent' }]}
        >
          <Text style={[styles.chipText, styles.chipTextSelected, { color: '#FFFFFF' }]}>
            {label}
          </Text>
        </LinearGradient>
      ) : (
        <View style={[styles.chip, styles.chipShadowLight, { borderColor: tokens.border, backgroundColor: tokens.card }]}>
          <Text style={[styles.chipText, { color: tokens.ink }]}>{label}</Text>
        </View>
      )}
    </SpringPress>
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
  const { tokens } = useTheme();
  return (
    <StepShell
      title="Welcome to Pair Buddy"
      subtitle="A small daily ritual for the two of you. Let's set things up — it takes about a minute."
      onNext={onNext}
      onBack={() => {}}
      nextLabel="Let's go"
      showBack={false}
      tokens={tokens}
    >
      <View style={styles.welcomeArt}>
        <HeartsIllustration expression="happy" variant="entrance" size={160} />
      </View>
    </StepShell>
  );
}

export function NameStep({ draft, update, onNext, onBack }: StepProps) {
  const { tokens } = useTheme();
  const valid = draft.name.trim().length >= 2;
  return (
    <StepShell
      title="What should we call you?"
      subtitle="This is the name your partner will see."
      onNext={onNext}
      onBack={onBack}
      nextDisabled={!valid}
      tokens={tokens}
    >
      <TextInput
        style={[styles.input, { backgroundColor: tokens.card, color: tokens.ink }]}
        placeholder="Your name"
        placeholderTextColor={tokens.muted}
        value={draft.name}
        onChangeText={(t) => update({ name: t })}
        autoFocus
        maxLength={40}
      />
    </StepShell>
  );
}

export function BirthdateStep({ draft, update, onNext, onBack }: StepProps) {
  const { tokens } = useTheme();
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
      tokens={tokens}
    >
      <SpringPress onPress={() => setShowPicker(true)}>
        <View style={[styles.input, styles.inputShadow, { backgroundColor: tokens.card }]}>
          <Text
            style={[
              styles.inputText,
              { color: tokens.ink },
              !draft.birthdate && { color: tokens.muted },
            ]}
          >
            {formatDate(draft.birthdate)}
          </Text>
        </View>
      </SpringPress>
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
        <Text style={[styles.hint, { color: tokens.danger }]}>
          Pair Buddy is for ages 13 and up.
        </Text>
      ) : null}
    </StepShell>
  );
}

const GENDERS = ['Woman', 'Man', 'Non-binary', 'Prefer not to say'];

export function GenderStep({ draft, update, onNext, onBack }: StepProps) {
  const { tokens } = useTheme();
  return (
    <StepShell
      title="How do you identify?"
      subtitle="Only used to personalize your experience."
      onNext={onNext}
      onBack={onBack}
      nextDisabled={!draft.gender}
      tokens={tokens}
    >
      <View style={styles.chips}>
        {GENDERS.map((g) => (
          <Chip
            key={g}
            label={g}
            selected={draft.gender === g}
            onPress={() => update({ gender: g })}
            tokens={tokens}
          />
        ))}
      </View>
    </StepShell>
  );
}

export function PhotoStep({ draft, update, onNext, onBack }: StepProps) {
  const { tokens } = useTheme();
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
      tokens={tokens}
    >
      <View style={styles.photoWrap}>
        {draft.avatarUri ? (
          <Image source={{ uri: draft.avatarUri }} style={styles.photo} />
        ) : (
          <View style={[styles.photoPlaceholder, { backgroundColor: tokens.card }]}>
            <Text style={[styles.photoPlaceholderText, { color: tokens.muted }]}>
              No photo yet
            </Text>
          </View>
        )}
        <SpringPress onPress={pickPhoto}>
          <View style={[styles.secondaryButton, styles.inputShadow, { backgroundColor: tokens.card }]}>
            <Text style={[styles.secondaryButtonText, { color: tokens.ink }]}>
              {draft.avatarUri ? 'Choose a different photo' : 'Choose a photo'}
            </Text>
          </View>
        </SpringPress>
        {error ? <Text style={[styles.hint, { color: tokens.danger }]}>{error}</Text> : null}
      </View>
    </StepShell>
  );
}

const RELATIONSHIP_TYPES = ['Dating', 'Engaged', 'Married', 'Long-term partners'];

export function RelationshipTypeStep({ draft, update, onNext, onBack }: StepProps) {
  const { tokens } = useTheme();
  return (
    <StepShell
      title="What best describes you two?"
      subtitle="It helps us shape the experience around your story."
      onNext={onNext}
      onBack={onBack}
      nextDisabled={!draft.relationshipType}
      tokens={tokens}
    >
      <View style={styles.chips}>
        {RELATIONSHIP_TYPES.map((t) => (
          <Chip
            key={t}
            label={t}
            selected={draft.relationshipType === t}
            onPress={() => update({ relationshipType: t })}
            tokens={tokens}
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
  const { tokens } = useTheme();
  return (
    <StepShell
      title="What do you want more of?"
      subtitle="Pick the one that matters most right now."
      onNext={onNext}
      onBack={onBack}
      nextDisabled={!draft.relationshipGoal}
      tokens={tokens}
    >
      <View style={styles.chips}>
        {RELATIONSHIP_GOALS.map((g) => (
          <Chip
            key={g}
            label={g}
            selected={draft.relationshipGoal === g}
            onPress={() => update({ relationshipGoal: g })}
            tokens={tokens}
          />
        ))}
      </View>
    </StepShell>
  );
}

export function AnniversaryStep({ draft, update, onNext, onBack }: StepProps) {
  const { tokens } = useTheme();
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
      tokens={tokens}
    >
      <SpringPress onPress={() => setShowPicker(true)}>
        <View style={[styles.input, styles.inputShadow, { backgroundColor: tokens.card }]}>
          <Text
            style={[
              styles.inputText,
              { color: tokens.ink },
              !draft.anniversaryDate && { color: tokens.muted },
            ]}
          >
            {formatDate(draft.anniversaryDate)}
          </Text>
        </View>
      </SpringPress>
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
  const { tokens } = useTheme();
  return (
    <StepShell
      title="Pick your daily ritual"
      subtitle="One small thing, every day. That's the whole secret."
      onNext={onNext}
      onBack={onBack}
      nextDisabled={!draft.dailyCommitment}
      tokens={tokens}
    >
      <View style={styles.chips}>
        {COMMITMENTS.map((c) => (
          <Chip
            key={c}
            label={c}
            selected={draft.dailyCommitment === c}
            onPress={() => update({ dailyCommitment: c })}
            tokens={tokens}
          />
        ))}
      </View>
    </StepShell>
  );
}

export function PartnerInviteStep({ onNext, onBack }: StepProps) {
  const { tokens } = useTheme();
  return (
    <StepShell
      title="Bring your partner in"
      subtitle="Pair Buddy is better together. You'll get your own invite code right after setup — share it and you're paired in seconds."
      onNext={onNext}
      onBack={onBack}
      nextLabel="I'll invite them later"
      tokens={tokens}
    />
  );
}

export function RemindersStep({ draft, update, onNext, onBack }: StepProps) {
  const { tokens } = useTheme();
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
      tokens={tokens}
    >
      <View style={[styles.reminderRow, { backgroundColor: tokens.card }]}>
        <Text style={[styles.reminderLabel, { color: tokens.ink }]}>Daily reminder</Text>
        <Switch
          value={draft.reminderEnabled}
          onValueChange={(v) => update({ reminderEnabled: v })}
          trackColor={{ false: tokens.border, true: tokens.primary }}
        />
      </View>
      {draft.reminderEnabled ? (
        <SpringPress onPress={() => setShowPicker(true)}>
          <View style={[styles.input, styles.inputShadow, { backgroundColor: tokens.card }]}>
            <Text style={[styles.inputText, { color: tokens.ink }]}>
              {draft.reminderTime}
            </Text>
          </View>
        </SpringPress>
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
  const { tokens, mode } = useTheme();
  const bgSource =
    mode === 'dark'
      ? require('../../../assets/bg-night-stars.png')
      : require('../../../assets/bg-hearts-dreamy.png');
  return (
    <View style={[styles.shell, { backgroundColor: tokens.background }]}>
      <Image source={bgSource} style={styles.bg} resizeMode="cover" />
      <View style={styles.body}>
        <FadeInView delay={0}>
          <Text style={[styles.title, { color: tokens.ink }]}>You're all set</Text>
          <Text style={[styles.subtitle, { color: tokens.primary }]}>
            Your space is ready. Invite your partner and answer your first question together.
          </Text>
        </FadeInView>
        {finishError ? (
          <Text style={[styles.error, { color: tokens.danger }]}>{finishError}</Text>
        ) : null}
      </View>
      <FadeInView delay={160}>
        <View style={styles.footer}>
          <SpringPress onPress={finishing ? undefined : onFinish}>
            <LinearGradient
              colors={tokens.gradient}
              start={{ x: 0, y: 0 }}
              end={{ x: 1, y: 0 }}
              style={[
                styles.primaryButton,
                styles.buttonShadow,
                finishing && styles.buttonDisabled,
              ]}
            >
              {finishing ? (
                <ActivityIndicator color="#FFFFFF" />
              ) : (
                <Text style={styles.primaryButtonText}>Finish</Text>
              )}
            </LinearGradient>
          </SpringPress>
        </View>
      </FadeInView>
    </View>
  );
}

// ---------------------------------------------------------------------------
// Styles
// ---------------------------------------------------------------------------

const styles = StyleSheet.create({
  shell: {
    flex: 1,
    padding: 28,
    justifyContent: 'space-between',
  },
  welcomeArt: {
    alignItems: 'center',
    marginTop: 24,
  },
  bg: {
    ...StyleSheet.absoluteFillObject,
    opacity: 0.12,
  },
  buttonShadow: {
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 6 },
    shadowOpacity: 0.18,
    shadowRadius: 12,
    elevation: 6,
  },
  chipShadow: {
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 4 },
    shadowOpacity: 0.15,
    shadowRadius: 10,
    elevation: 4,
  },
  chipShadowLight: {
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.06,
    shadowRadius: 8,
    elevation: 2,
  },
  inputShadow: {
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 3 },
    shadowOpacity: 0.07,
    shadowRadius: 10,
    elevation: 2,
  },
  body: {
    flex: 1,
    justifyContent: 'center',
  },
  title: {
    fontFamily: FONTS.headingBold,
    fontSize: 32,
    fontWeight: '800',
    marginBottom: 10,
  },
  subtitle: {
    fontFamily: FONTS.body,
    fontSize: 15,
    marginBottom: 28,
    lineHeight: 22,
  },
  footer: {
    gap: 8,
    paddingBottom: 8,
  },
  primaryButton: {
    borderRadius: 20,
    paddingVertical: 16,
    alignItems: 'center',
  },
  primaryButtonText: {
    fontFamily: FONTS.body,
    fontSize: 16,
    fontWeight: '600',
    color: '#FFFFFF',
  },
  buttonDisabled: {
    opacity: 0.5,
  },
  backButton: {
    alignItems: 'center',
    paddingVertical: 10,
  },
  backText: {
    fontFamily: FONTS.body,
    fontSize: 15,
    fontWeight: '500',
  },
  secondaryButton: {
    borderRadius: 20,
    paddingVertical: 14,
    alignItems: 'center',
    marginTop: 16,
  },
  secondaryButtonText: {
    fontFamily: FONTS.body,
    fontSize: 15,
    fontWeight: '600',
  },
  input: {
    fontFamily: FONTS.body,
    borderRadius: 20,
    paddingHorizontal: 18,
    paddingVertical: 15,
  },
  inputText: {
    fontFamily: FONTS.body,
    fontSize: 16,
  },
  chips: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    gap: 10,
  },
  chip: {
    borderWidth: 1.5,
    borderRadius: 24,
    paddingHorizontal: 18,
    paddingVertical: 12,
  },
  chipText: {
    fontFamily: FONTS.body,
    fontSize: 15,
    fontWeight: '500',
  },
  chipTextSelected: {
    fontWeight: '700',
  },
  hint: {
    fontFamily: FONTS.body,
    fontSize: 13,
    marginTop: 10,
  },
  error: {
    fontFamily: FONTS.body,
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
    alignItems: 'center',
    justifyContent: 'center',
  },
  photoPlaceholderText: {
    fontFamily: FONTS.body,
    fontSize: 14,
  },
  reminderRow: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    borderRadius: 20,
    paddingHorizontal: 18,
    paddingVertical: 15,
    marginBottom: 12,
  },
  reminderLabel: {
    fontFamily: FONTS.body,
    fontSize: 16,
    fontWeight: '500',
  },
});
