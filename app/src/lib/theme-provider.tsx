/**
 * Theme provider: 10 switchable color themes x light/dark/system mode.
 *
 * Persists the theme id and mode in AsyncStorage (`pb.theme.id`,
 * `pb.theme.mode`). New code should consume `useTheme()` and style from
 * `tokens` instead of importing the legacy static `COLORS`.
 */

import {
  createContext,
  useCallback,
  useContext,
  useEffect,
  useMemo,
  useState,
} from 'react';
import type { ReactNode } from 'react';
import { useColorScheme } from 'react-native';
import AsyncStorage from '@react-native-async-storage/async-storage';
import { DEFAULT_THEME_ID, THEMES, getThemeDef } from '../themes';
import type { ThemeDef } from '../themes';
import { buildTokens } from './tokens';
import type { ThemeMode, ThemeTokens } from './tokens';

export type ThemeModeSetting = ThemeMode | 'system';

const STORAGE_THEME_ID = 'pb.theme.id';
const STORAGE_THEME_MODE = 'pb.theme.mode';

interface ThemeContextValue {
  /** The active theme definition. */
  theme: ThemeDef;
  /** All ten themes, for the picker. */
  themes: ThemeDef[];
  /** Resolved light/dark (system setting is resolved here). */
  mode: ThemeMode;
  /** Raw setting: light | dark | system. */
  modeSetting: ThemeModeSetting;
  /** Derived design tokens for the active theme + mode. */
  tokens: ThemeTokens;
  /** Switch theme. Persists. */
  setThemeId: (id: string) => void;
  /** Switch mode. Persists. */
  setModeSetting: (mode: ThemeModeSetting) => void;
  /** True once the persisted choice has loaded. */
  ready: boolean;
}

const ThemeContext = createContext<ThemeContextValue | null>(null);

export function ThemeProvider({ children }: { children: ReactNode }) {
  const systemScheme = useColorScheme();
  const [themeId, setThemeIdState] = useState(DEFAULT_THEME_ID);
  const [modeSetting, setModeSettingState] =
    useState<ThemeModeSetting>('system');
  const [ready, setReady] = useState(false);

  useEffect(() => {
    (async () => {
      try {
        const [id, mode] = await Promise.all([
          AsyncStorage.getItem(STORAGE_THEME_ID),
          AsyncStorage.getItem(STORAGE_THEME_MODE),
        ]);
        if (id && THEMES.some((t) => t.id === id)) setThemeIdState(id);
        if (mode === 'light' || mode === 'dark' || mode === 'system') {
          setModeSettingState(mode);
        }
      } catch {
        // Corrupt storage: fall back to defaults.
      } finally {
        setReady(true);
      }
    })();
  }, []);

  const setThemeId = useCallback((id: string) => {
    if (!THEMES.some((t) => t.id === id)) return;
    setThemeIdState(id);
    AsyncStorage.setItem(STORAGE_THEME_ID, id).catch(() => {});
  }, []);

  const setModeSetting = useCallback((mode: ThemeModeSetting) => {
    setModeSettingState(mode);
    AsyncStorage.setItem(STORAGE_THEME_MODE, mode).catch(() => {});
  }, []);

  const mode: ThemeMode =
    modeSetting === 'system'
      ? systemScheme === 'dark'
        ? 'dark'
        : 'light'
      : modeSetting;

  const theme = getThemeDef(themeId);
  const tokens = useMemo(() => buildTokens(theme, mode), [theme, mode]);

  const value = useMemo<ThemeContextValue>(
    () => ({
      theme,
      themes: THEMES,
      mode,
      modeSetting,
      tokens,
      setThemeId,
      setModeSetting,
      ready,
    }),
    [theme, mode, modeSetting, tokens, setThemeId, setModeSetting, ready],
  );

  return (
    <ThemeContext.Provider value={value}>{children}</ThemeContext.Provider>
  );
}

export function useTheme(): ThemeContextValue {
  const ctx = useContext(ThemeContext);
  if (!ctx) throw new Error('useTheme must be used inside <ThemeProvider>');
  return ctx;
}
