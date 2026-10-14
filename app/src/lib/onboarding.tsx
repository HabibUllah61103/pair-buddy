import {
  createContext,
  useCallback,
  useContext,
  useEffect,
  useMemo,
  useRef,
  useState,
} from 'react';
import type { ReactNode } from 'react';
import AsyncStorage from '@react-native-async-storage/async-storage';
import type { SupabaseClient } from '@supabase/supabase-js';
import { useAuth } from './auth';

// Metro/Babel resolve this at runtime; declared here for TypeScript.
declare function require(name: string): any;

export const ONBOARDING_STEPS = [
  'welcome',
  'name',
  'birthdate',
  'gender',
  'photo',
  'relationship-type',
  'relationship-goal',
  'anniversary',
  'daily-commitment',
  'partner-invite',
  'reminders',
  'success',
] as const;

export type OnboardingStep = (typeof ONBOARDING_STEPS)[number];

export type OnboardingDraft = {
  name: string;
  /** ISO date (YYYY-MM-DD). */
  birthdate: string;
  gender: string;
  /** Local file URI until uploaded. */
  avatarUri: string | null;
  relationshipType: string;
  relationshipGoal: string;
  /** ISO date (YYYY-MM-DD). */
  anniversaryDate: string;
  dailyCommitment: string;
  reminderEnabled: boolean;
  /** HH:MM, 24h. */
  reminderTime: string;
};

const EMPTY_DRAFT: OnboardingDraft = {
  name: '',
  birthdate: '',
  gender: '',
  avatarUri: null,
  relationshipType: '',
  relationshipGoal: '',
  anniversaryDate: '',
  dailyCommitment: '',
  reminderEnabled: true,
  reminderTime: '09:00',
};

const COMPLETE_KEY = 'pairbuddy.onboarding.complete';
const DRAFT_KEY = 'pairbuddy.onboarding.draft';

/** True once finish() has succeeded on this device. */
export async function getOnboardingComplete(): Promise<boolean> {
  try {
    return (await AsyncStorage.getItem(COMPLETE_KEY)) === '1';
  } catch {
    return false;
  }
}

let cachedClient: SupabaseClient | null | undefined;

/** Lazy Supabase access — never throws at import time when unconfigured. */
function getClient(): SupabaseClient | null {
  if (cachedClient !== undefined) return cachedClient;
  try {
    cachedClient = require('./supabase').supabase ?? null;
  } catch {
    cachedClient = null;
  }
  return cachedClient;
}

type OnboardingContextValue = {
  step: OnboardingStep;
  stepIndex: number;
  totalSteps: number;
  draft: OnboardingDraft;
  update: (patch: Partial<OnboardingDraft>) => void;
  next: () => void;
  back: () => void;
  reset: () => void;
  finish: () => Promise<{ error: string | null }>;
  finishing: boolean;
  complete: boolean;
  /** True when the draft was kept locally because the backend was unreachable. */
  pendingSync: boolean;
  error: string | null;
};

const OnboardingContext = createContext<OnboardingContextValue | null>(null);

export function OnboardingProvider({ children }: { children: ReactNode }) {
  const { user } = useAuth();
  const [stepIndex, setStepIndex] = useState(0);
  const [draft, setDraft] = useState<OnboardingDraft>(EMPTY_DRAFT);
  const [finishing, setFinishing] = useState(false);
  const [complete, setComplete] = useState(false);
  const [pendingSync, setPendingSync] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const draftRef = useRef(draft);
  draftRef.current = draft;
  const mounted = useRef(true);

  useEffect(() => {
    mounted.current = true;
    return () => {
      mounted.current = false;
    };
  }, []);

  // Restore a locally saved draft from an earlier unfinished attempt.
  useEffect(() => {
    (async () => {
      try {
        const [savedDraft, savedComplete] = await Promise.all([
          AsyncStorage.getItem(DRAFT_KEY),
          AsyncStorage.getItem(COMPLETE_KEY),
        ]);
        if (!mounted.current) return;
        if (savedDraft) {
          setDraft({ ...EMPTY_DRAFT, ...(JSON.parse(savedDraft) as Partial<OnboardingDraft>) });
          setPendingSync(true);
        }
        if (savedComplete === '1') setComplete(true);
      } catch {
        // Corrupt local data is not fatal; start fresh.
      }
    })();
  }, []);

  const update = useCallback((patch: Partial<OnboardingDraft>) => {
    setDraft((d) => ({ ...d, ...patch }));
  }, []);

  const next = useCallback(() => {
    setStepIndex((i) => Math.min(i + 1, ONBOARDING_STEPS.length - 1));
  }, []);

  const back = useCallback(() => {
    setStepIndex((i) => Math.max(i - 1, 0));
  }, []);

  const reset = useCallback(() => {
    setStepIndex(0);
    setDraft(EMPTY_DRAFT);
    setError(null);
  }, []);

  const finish = useCallback(async (): Promise<{ error: string | null }> => {
    const client = getClient();
    const draftValue = draftRef.current;
    setFinishing(true);
    setError(null);
    try {
      if (!client || !user) {
        // Offline path: keep the draft on-device so nothing is lost, and
        // leave onboarding incomplete. Sync is retried the next time the
        // user finishes with the backend configured.
        await AsyncStorage.setItem(DRAFT_KEY, JSON.stringify(draftValue));
        const message = !client
          ? 'Supabase is not configured yet — your answers are saved on this device and will sync once the backend is connected.'
          : 'You need to be signed in to finish setup.';
        if (mounted.current) {
          setError(message);
          setPendingSync(true);
        }
        return { error: message };
      }

      // Avatar upload is best-effort: onboarding must not fail over a photo.
      let avatarUrl: string | null = draftValue.avatarUri;
      if (draftValue.avatarUri && !draftValue.avatarUri.startsWith('http')) {
        try {
          const response = await fetch(draftValue.avatarUri);
          const blob = await response.blob();
          const path = `${user.id}/avatar.jpg`;
          const { error: uploadError } = await client.storage
            .from('avatars')
            .upload(path, blob, { upsert: true, contentType: 'image/jpeg' });
          if (!uploadError) {
            avatarUrl = client.storage.from('avatars').getPublicUrl(path).data.publicUrl;
          }
        } catch {
          // Keep the local URI; the profile still saves.
        }
      }

      const { error: profileError } = await client.from('profiles').upsert({
        id: user.id,
        name: draftValue.name.trim(),
        avatar_url: avatarUrl,
        birthdate: draftValue.birthdate || null,
        gender: draftValue.gender || null,
      });
      if (profileError) throw profileError;

      const { data: couple, error: coupleError } = await client
        .from('couples')
        .insert({
          anniversary_date: draftValue.anniversaryDate || null,
          relationship_type: draftValue.relationshipType || null,
          relationship_goal: draftValue.relationshipGoal || null,
        })
        .select('id')
        .single();
      if (coupleError) throw coupleError;

      const { error: memberError } = await client.from('couple_members').insert({
        couple_id: (couple as { id: string }).id,
        user_id: user.id,
        role: 'inviter',
      });
      if (memberError) throw memberError;

      await AsyncStorage.setItem(COMPLETE_KEY, '1');
      await AsyncStorage.removeItem(DRAFT_KEY);
      if (mounted.current) {
        setComplete(true);
        setPendingSync(false);
      }
      return { error: null };
    } catch (e) {
      const message = e instanceof Error && e.message ? e.message : 'Could not finish setup. Try again.';
      if (mounted.current) setError(message);
      return { error: message };
    } finally {
      if (mounted.current) setFinishing(false);
    }
  }, [user]);

  const value = useMemo<OnboardingContextValue>(
    () => ({
      step: ONBOARDING_STEPS[stepIndex],
      stepIndex,
      totalSteps: ONBOARDING_STEPS.length,
      draft,
      update,
      next,
      back,
      reset,
      finish,
      finishing,
      complete,
      pendingSync,
      error,
    }),
    [stepIndex, draft, update, next, back, reset, finish, finishing, complete, pendingSync, error]
  );

  return <OnboardingContext.Provider value={value}>{children}</OnboardingContext.Provider>;
}

export function useOnboarding(): OnboardingContextValue {
  const ctx = useContext(OnboardingContext);
  if (!ctx) throw new Error('useOnboarding must be used inside <OnboardingProvider>.');
  return ctx;
}
