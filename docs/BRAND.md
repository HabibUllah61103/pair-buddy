# Pair Buddy brand guidelines

## The mark

Pair Buddy's icon is the **Venn heart**: two overlapping circles, deep navy on
the left and warm coral on the right, with a coral heart sitting in the
overlap. Two people, one shared center.

Reference concept: `staging/brand-concepts/icon-concept-venn.webp` (design
exploration; the shipped icon is a clean redraw of this direction).

## Palette

All values live in `app/src/theme.ts`, which is the source of truth. New code
imports tokens from there; older screens still carry inline hex literals and
migrate opportunistically.

| Token       | Hex       | Use                                              |
|-------------|-----------|--------------------------------------------------|
| navy        | `#123B63` | Primary. Headers, primary buttons, splash bg     |
| navyDeep    | `#0F2540` | Dark surfaces, pressed states                    |
| coral       | `#F2513C` | Primary accent, sampled from the icon concept. CTAs, hearts, active states |
| coralDeep   | `#C9402A` | Pressed coral                                     |
| coralTint   | `#FDE7E1` | Soft coral backgrounds                            |
| teal        | `#14B8A6` | Secondary accent. Live/success affordances        |
| background  | `#F7FAFD` | App background                                    |
| card        | `#FFFFFF` | Card surfaces                                     |
| ink         | `#1A2F4D` | Primary text                                      |
| muted       | `#8AA0B8` | Secondary text, captions                           |
| border      | `#DCE6F0` | Hairlines, dividers                                |
| danger      | `#E2605C` | Destructive actions, errors                        |
| success     | `#2ECC71` | Confirmations                                       |
| warning     | `#F5B942` | Cautions                                            |

Rules: navy leads, coral punctuates. Never set body copy in coral. Teal is
for "live/ok" signals only, not decoration. No gradients.

## Typography

System font stack only; no custom fonts ship with the app. Headings use
weight 800, body 400, emphasis 600.

## Tone of voice

Plain, human, warm. Short sentences. No AI gloss: no "delve", no "unlock",
no exclamation-mark enthusiasm, no emoji in product copy. The app talks like
a thoughtful friend, not a marketing page.

## Icon and splash assets

Binary assets are uploaded through the GitHub web UI (API uploads corrupt
binaries). Upload these three files to the repo root-relative paths:

- `app/assets/icon.png` — 1024x1024 PNG, the Venn heart mark on transparent
  or navy background, no rounded corners (the OS masks it).
- `app/assets/adaptive-icon.png` — 1024x1024 PNG for Android, artwork kept
  inside the central 66% safe zone on a solid navy (`#123B63`) background.
- `app/assets/splash.png` — 1284x2778 PNG, coral heart centered on navy
  `#123B63` (matches `splash.backgroundColor` in app.json).

Once the files exist, a follow-up PR wires them into `app/app.json`:

```json
"icon": "./assets/icon.png",
"android": { "adaptiveIcon": { "foregroundImage": "./assets/adaptive-icon.png", "backgroundColor": "#123B63" } },
"splash": { "image": "./assets/splash.png", "backgroundColor": "#123B63" }
```

Do not add these keys before the files exist; Expo fails the build on
missing asset references.
