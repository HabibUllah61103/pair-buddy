/**
 * Invite deep-link parsing.
 *
 * Supported today:
 *   pairbuddy://invite/ABC123
 *
 * TODO (universal links): once the invite domain is chosen, allow-list
 * https://<domain>/invite/:code here and in app.json's associatedDomains.
 */

const CODE_PATTERN = /^[A-HJ-NP-Z2-9]{6}$/;

/** True for a well-formed 6-char invite code (unambiguous alphabet). */
export function isValidInviteCode(code: string): boolean {
  return CODE_PATTERN.test(code);
}

let pendingInviteCode: string | null = null;

/**
 * Stash an invite code that arrived while the user was signed out, so the
 * auth guard can route to the join screen after sign-in.
 */
export function setPendingInviteCode(code: string | null): void {
  pendingInviteCode = code;
}

export function takePendingInviteCode(): string | null {
  const code = pendingInviteCode;
  pendingInviteCode = null;
  return code;
}

/**
 * Extract an invite code from an incoming deep link. Returns null when the
 * URL is not an invite link.
 */
export function extractInviteCode(url: string): string | null {
  if (!url) return null;

  // pairbuddy://invite/ABC123 (scheme/host case-insensitive)
  const appMatch = url.match(/^pairbuddy:\/\/invite\/([A-Za-z0-9]{4,12})/i);
  if (appMatch) {
    const code = appMatch[1].toUpperCase();
    return isValidInviteCode(code) ? code : null;
  }

  // https://<domain>/invite/ABC123 — accept any host for now;
  // restrict to the real invite domain once it is chosen (see TODO above).
  const webMatch = url.match(/^https?:\/\/[^/]+\/invite\/([A-Za-z0-9]{4,12})/i);
  if (webMatch) {
    const code = webMatch[1].toUpperCase();
    return isValidInviteCode(code) ? code : null;
  }

  return null;
}
