import 'react-native-url-polyfill/auto';
import * as Linking from 'expo-linking';

const AUTH_CALLBACK_PATH = 'auth/callback';

/**
 * Deep-link URL Supabase redirects to after an OAuth sign-in.
 * Resolves through the app scheme (pairbuddy://auth/callback), so it stays
 * correct in dev, preview, and production builds.
 */
export function buildRedirectUrl(): string {
  return Linking.createURL(AUTH_CALLBACK_PATH);
}

export type AuthTokens = {
  access_token: string;
  refresh_token: string;
};

/**
 * Extract Supabase session tokens from an OAuth callback URL.
 * Supabase may deliver them in the fragment (#access_token=...) or the
 * query string (?access_token=...). Returns null when absent or malformed.
 */
export function parseAuthCallback(url: string): AuthTokens | null {
  try {
    const hashIndex = url.indexOf('#');
    const queryIndex = url.indexOf('?');
    let raw = '';
    if (hashIndex >= 0) {
      raw = url.slice(hashIndex + 1);
    } else if (queryIndex >= 0) {
      raw = url.slice(queryIndex + 1);
    } else {
      return null;
    }

    const params = new URLSearchParams(raw);
    const access_token = params.get('access_token');
    const refresh_token = params.get('refresh_token');
    if (!access_token || !refresh_token) return null;
    return { access_token, refresh_token };
  } catch {
    return null;
  }
}
