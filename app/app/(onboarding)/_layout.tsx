import { Stack } from 'expo-router';
import { OnboardingProvider } from '../../src/lib/onboarding';

export default function OnboardingLayout() {
  return (
    <OnboardingProvider>
      <Stack screenOptions={{ headerShown: false }}>
        <Stack.Screen name="index" />
      </Stack>
    </OnboardingProvider>
  );
}
