# 1. 🎨 Design System Overview
Purpose: Centralize UI tokens. Ensure consistency.
Theme: Light/Dark handled via `ThemeData`. 

# 2. 🧬 Design Tokens (Foundations)

**Colors:**
| Variable Name | Type/Value | Usage Context |
|---|---|---|
| `AppColors.primary` | `Color(0xFF6200EE)` | Main brand color. |
| `AppColors.background` | `Color(0xFFFFFFFF)` | Screen backgrounds. |
| `AppColors.error` | `Color(0xFFB00020)` | Error states. |

**Typography:**
| Text Style Name | Font Size/Weight | Usage |
|---|---|---|
| `AppText.h1` | 32.0 / Bold | Page titles. |
| `AppText.body` | 16.0 / Normal | Standard text. |
| `AppText.caption` | 12.0 / Light | Footnotes. |

**Spacings/Radii/Shadows:**
| Variable Name | Value | Usage |
|---|---|---|
| `AppSpacing.sm` | 8.0 | Tight gaps. |
| `AppSpacing.md` | 16.0 | Standard padding. |
| `AppRadius.base` | 8.0 | Standard border radius. |

# 3. 🧩 Component Catalog (Base Widgets)

**Component Name:** `CustomButton`
**Purpose:** Trigger actions.
**Variants:** Primary, Outlined.

**Props / Parameters Table:**
| Parameter | Type | Required/Default | Description |
|---|---|---|---|
| `text` | `String` | Required | Button label. |
| `onPressed` | `VoidCallback?` | Required | Tap handler. |
| `isOutlined` | `bool` | Default: `false` | Renders outline variant. |

**Code Snippet Example:**
```dart
CustomButton(
  text: 'Submit',
  onPressed: () => save(),
)
```

# 4. 🚀 Implementation & Setup Guide

Inject root theme:
```dart
MaterialApp(
  theme: AppTheme.light,
  darkTheme: AppTheme.dark,
  home: Home(),
)
```
Requires `google_fonts` package. 

# 5. 🚫 UI/UX Guardrails & Anti-Patterns

1. NEVER hardcode hex colors (`Color(0xFF0000)`). ALWAYS use `AppColors.error`.
2. NEVER use arbitrary padding (`EdgeInsets.all(13)`). ALWAYS use `AppSpacing.md`.
3. NEVER manually define `TextStyle()`. ALWAYS use `AppText` constants.