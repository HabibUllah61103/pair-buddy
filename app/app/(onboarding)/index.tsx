import type { JSX } from 'react';
import { useOnboarding } from '../src/lib/onboarding';
import type { StepProps } from '../src/components/onboarding/steps';
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
} from '../src/components/onboarding/steps';

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
  const {
    step,
    draft,
    update,
    next,
    back,
    finish,
    finishing,
    error,
  } = useOnboarding();

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
