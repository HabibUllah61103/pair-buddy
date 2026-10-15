import type { JSX } from 'react';
import { useEffect } from 'react';
import { useRouter } from 'expo-router';
import { useOnboarding } from '../../src/lib/onboarding';
import type { StepProps } from '../../src/components/onboarding/steps';
import {
  AnniversaryStep,
  BirthdateStep,
  DailyCommitmentStep,
  GenderStep,
  NameStep,
  PartnerInviteStep,
  PhotoStep,
  RelationshipGoalStep,
  RelationshipTypeStep,
  RemindersStep,
  SuccessStep,
  WelcomeStep,
} from '../../src/components/onboarding/steps';

const STEP_COMPONENTS: Record<string, (props: StepProps) => JSX.Element> = {
  welcome: WelcomeStep,
  name: NameStep,
  birthdate: BirthdateStep,
  gender: GenderStep,
  photo: PhotoStep,
  'relationship-type': RelationshipTypeStep,
  'relationship-goal': RelationshipGoalStep,
  anniversary: AnniversaryStep,
  'daily-commitment': DailyCommitmentStep,
  'partner-invite': PartnerInviteStep,
  reminders: RemindersStep,
  success: SuccessStep,
};

export default function OnboardingScreen() {
  const router = useRouter();
  const {
    step,
    draft,
    update,
    next,
    back,
    finish,
    finishing,
    error,
    complete,
  } = useOnboarding();

  // Once finish() succeeds, leave the onboarding stack. The root index
  // routes to the pairing invite (or the main tabs once both partners join).
  useEffect(() => {
    if (complete) {
      router.replace('/');
    }
  }, [complete]);

  const Step = STEP_COMPONENTS[step];

  return (
    <Step
      draft={draft}
      update={update}
      onNext={next}
      onBack={back}
      onFinish={() => {
        void finish();
      }}
      finishing={finishing}
      finishError={error}
    />
  );
}
