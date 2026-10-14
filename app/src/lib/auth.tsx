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
import * as AppleAuthentication from 'expo-apple-authentication';
import * as Linking from 'expo-linking';
import * as WebBrowser from 'expo-web-browser';
import type { Session, SupabaseClient, User } from '@supabase/supabase-js';
import { buildRedirectUrl, parseAuthCallback } from './oauth';

// Metro/Babel resolve this at runtime; declared here for TypeScript.
declare function require(name: string): any;

WebBrowser.maybeCompleteAuthSession();

export type Profile = {
  id: string;
  name: string | null;
  avatar_url: string | null;
};

export type AuthResult = { error: string | null };

type AuthContextValue = {
  session: Session | null;
  user: User | null;
  profile: Profile | null;
  loading: boolean;
  error: string | null;
  signInWithGoogle: () => Promise<AuthResult>;
  signInWithApple: () => Promise<AuthResult>;
  signInWithPhone: (phone: string) => Promise<AuthResult>;
  verifyOtp: (phone: string, code: string) => Promise<AuthResult>;
  signOut: () => Promise<void>;
  refreshProfile: () => Promise<void>;
};

const AuthContext = createContext<AuthContextValue | null>(null);

const NOT_CONFIGURED =
  'Supabase is not configured yet. Add EXPO_PUBLIC_SUPABASE_URL and ' +
  'EXPO_PUBLIC_SUPABASE_ANON_KEY to app/.env — see supabase/README.md.';

let cachedClient: SupabaseClient | null | undefined;

/**
 * Lazy Supabase access. supabase.ts throws at import time when the env vars
 * are missing, so requiring it here keeps this module import-safe without
 * configuration: every public function degrades to a clear error instead.
 */
function getClient(): SupabaseClient | null {
  if (cachedClient !== undefined) return cachedClient;
  try {
    cachedClient = require('./supabase').supabase ?? null;
  } catch {
    cachedClient = null;
  }
  return cachedClient;
}

export function isSupabaseConfigured(): boolean {
  return getClient() !== null;
}

function toMessage(e: unknown, fallback: string): string {
  if (e instanceof Error && e.message) return e.message;
  if (typeof e === 'string' && e.length > 0) return e;
  return fallback;
}

export function AuthProvider({ children }: { children: ReactNode }) {
  const [session, setSession] = useState<Session | null>(null);
  const [profile, setProfile] = useState<Profile | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const mounted = useRef(true);

  useEffect(() => {
    mounted.current = true;
    return () => {
      mounted.current = false;
    };
  }, []);

  const reportError = (message: string): AuthResult => {
    if (mounted.current) setError(message);
    return { error: message };
  };

  const loadProfile = useCallback(async (userId: string) => {
    const client = getClient();
    if (!client) return;
    try {
      const { data, error: queryError } = await client
        .from('profiles')
        .select('id, name, avatar_url')
        .eq('id', userId)
        .maybeSingle();
      if (!mounted.current) return;
      // No row yet (fresh user, pre-onboarding) is not an error.
      setProfile(queryError ? null : (data as Profile | null) ?? null);
    } catch {
      if (mounted.current) setProfile(null);
    }
  }, []);

  // Restore the session on launch and subscribe to auth changes.
  useEffect(() => {
    const client = getClient();
    if (!client) {
      setLoading(false);
      return;
    }
    let subscription: { unsubscribe: () => void } | null = null;
    (async () => {
      try {
        const { data } = await client.auth.getSession();
        if (!mounted.current) return;
        setSession(data.session ?? null);
        if (data.session?.user) await loadProfile(data.session.user.id);
      } catch (e) {
        if (mounted.current) setError(toMessage(e, 'Could not restore your session.'));
      } finally {
        if (mounted.current) setLoading(false);
      }
    })();
    const { data: listener } = client.auth.onAuthStateChange(async (_event, next) => {
      if (!mounted.current) return;
      setSession(next);
      setError(null);
      if (next?.user) {
        await loadProfile(next.user.id);
      } else {
        setProfile(null);
      }
    });
    subscription = listener.subscription;
    return () => subscription?.unsubscribe();
  }, [loadProfile]);

  // Handle OAuth callback deep links (covers redirects that arrive outside
  // the in-app browser session).
  useEffect(() => {
    const client = getClient();
    if (!client) return;
    const handleUrl = async (url: string) => {
      const tokens = parseAuthCallback(url);
      if (!tokens) return;
      try {
        const { error: sessionError } = await client.auth.setSession(tokens);
        if (sessionError && mounted.current) setError(sessionError.message);
      } catch (e) {
        if (mounted.current) setError(toMessage(e, 'Sign-in failed.'));
      }
    };
    const sub = Linking.addEventListener('url', ({ url }) => {
      void handleUrl(url);
    });
    Linking.getInitialURL()
      .then((url) => {
        if (url) void handleUrl(url);
      })
      .catch(() => {});
    return () => sub.remove();
  }, []);

  const signInWithGoogle = useCallback(async (): Promise<AuthResult> => {
    const client = getClient();
    if (!client) return { error: NOT_CONFIGURED };
    setError(null);
    try {
      const redirectTo = buildRedirectUrl();
      const { data, error: oauthError } = await client.auth.signInWithOAuth({
        provider: 'google',
        options: { redirectTo, skipBrowserRedirect: true },
      });
      if (oauthError) return reportError(oauthError.message);
      if (!data?.url) return reportError('Could not start Google sign-in.');
      const result = await WebBrowser.openAuthSessionAsync(data.url, redirectTo);
      if (result.type === 'cancel' || result.type === 'dismiss') {
        return { error: null };
      }
      if (result.type !== 'success' || !result.url) {
        return reportError('Google sign-in was interrupted. Try again.');
      }
      const tokens = parseAuthCallback(result.url);
      if (!tokens) return reportError('Could not read the sign-in response.');
      const { error: sessionError } = await client.auth.setSession(tokens);
      if (sessionError) return reportError(sessionError.message);
      return { error: null };
    } catch (e) {
      return reportError(toMessage(e, 'Google sign-in failed.'));
    }
  }, []);

  const signInWithApple = useCallback(async (): Promise<AuthResult> => {
    const client = getClient();
    if (!client) return { error: NOT_CONFIGURED };
    setError(null);
    try {
      const available = await AppleAuthentication.isAvailableAsync();
      if (!available) return reportError('Apple sign-in is only available on iOS.');
      const credential = await AppleAuthentication.signInAsync({
        requestedScopes: [
          AppleAuthentication.AppleAuthenticationScope.FULL_NAME,
          AppleAuthentication.AppleAuthenticationScope.EMAIL,
        ],
      });
      if (!credential.identityToken) {
        return reportError('Apple did not return an identity token.');
      }
      const { error: idError } = await client.auth.signInWithIdToken({
        provider: 'apple',
        token: credential.identityToken,
      });
      if (idError) return reportError(idError.message);
      return { error: null };
    } catch (e: unknown) {
      if (typeof e === 'object' && e !== null && (e as { code?: string }).code === 'ERR_REQUEST_CANCELED') {
        return { error: null };
      }
      return reportError(toMessage(e, 'Apple sign-in failed.'));
    }
  }, []);

  const signInWithPhone = useCallback(async (phone: string): Promise<AuthResult> => {
    const client = getClient();
    if (!client) return { error: NOT_CONFIGURED };
    const trimmed = phone.trim();
    if (!trimmed) return reportError('Enter your phone number first.');
    setError(null);
    try {
      const { error: otpError } = await client.auth.signInWithOtp({ phone: trimmed });
      if (otpError) return reportError(otpError.message);
      return { error: null };
    } catch (e) {
      return reportError(toMessage(e, 'Could not send the code.'));
    }
  }, []);

  const verifyOtp = useCallback(
    async (phone: string, code: string): Promise<AuthResult> => {
      const client = getClient();
      if (!client) return { error: NOT_CONFIGURED };
      const token = code.trim();
      if (token.length < 6) return reportError('Enter the 6-digit code.');
      setError(null);
      try {
        const { error: verifyError } = await client.auth.verifyOtp({
          phone: phone.trim(),
          token,
          type: 'sms',
        });
        if (verifyError) return reportError(verifyError.message);
        return { error: null };
      } catch (e) {
        return reportError(toMessage(e, 'Code verification failed.'));
      }
    },
    []
  );

  const signOut = useCallback(async (): Promise<void> => {
    const client = getClient();
    try {
      // Drop this device's push token first so a signed-out device stops
      // receiving the partner's notifications. Best-effort: wrapped so it
      // can never break sign-out.
      try {
        await require('./push').unregisterPushToken();
      } catch {
        // Push cleanup is best-effort; sign-out continues regardless.
      }
      await client?.auth.signOut();
    } catch {
      // Never throw from sign-out; local state is cleared below regardless.
    }
    if (mounted.current) {
      setSession(null);
      setProfile(null);
      setError(null);
    }
  }, []);

  const refreshProfile = useCallback(async (): Promise<void> => {
    const client = getClient();
    if (!client) return;
    try {
      const { data } = await client.auth.getSession();
      if (data.session?.user) await loadProfile(data.session.user.id);
    } catch {
      // Profile refresh is best-effort.
    }
  }, [loadProfile]);

  const value = useMemo<AuthContextValue>(
    () => ({
      session,
      user: session?.user ?? null,
      profile,
      loading,
      error,
      signInWithGoogle,
      signInWithApple,
      signInWithPhone,
      verifyOtp,
      signOut,
      refreshProfile,
    }),
    [
      session,
      profile,
      loading,
      error,
      signInWithGoogle,
      signInWithApple,
      signInWithPhone,
      verifyOtp,
      signOut,
      refreshProfile,
    ]
  );

  return <AuthContext.Provider value={value}>{children}</AuthContext.Provider>;
}

export function useAuth(): AuthContextValue {
  const ctx = useContext(AuthContext);
  if (!ctx) throw new Error('useAuth must be used inside <AuthProvider>.');
  return ctx;
}
