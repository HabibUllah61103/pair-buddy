/**
 * Translates raw Supabase / network errors into messages a user can act on.
 * Raw PostgREST errors ("stack depth limit exceeded", "permission denied for
 * table ...", JSON blobs) are never shown directly.
 */
export function friendlyErrorMessage(e: unknown, fallback: string): string {
  const raw = e instanceof Error ? e.message : typeof e === 'string' ? e : '';

  // No connectivity.
  if (/network request failed|failed to fetch|network error|timed out|timeout|econnrefused|enotfound|socket hang up/i.test(raw)) {
    return 'No internet connection. Check your connection and try again.';
  }

  // Session / token problems.
  if (/jwt expired|invalid jwt|token expired|invalid token|session expired|unauthorized/i.test(raw)) {
    return 'Your session expired. Please sign in again.';
  }

  // Permission denied (RLS / 403).
  if (/\b403\b|permission denied|not allowed|row-level security|violates row-level|policy/i.test(raw)) {
    return "Couldn't save your details due to a permissions issue. Please try again.";
  }

  // Server-side failure (500).
  if (/\b500\b|internal server error|stack depth limit exceeded/i.test(raw)) {
    return 'Something went wrong on our end. Please try again in a moment.';
  }

  // Already human-readable: short, plain text, not a JSON blob.
  const trimmed = raw.trim();
  if (trimmed && !/^\s*[[{]/.test(trimmed) && trimmed.length < 160 && !/code:\s*["']?\d+/i.test(trimmed)) {
    return trimmed;
  }

  return fallback;
}
