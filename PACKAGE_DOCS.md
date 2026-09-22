# 1. 📦 Package Overview & Architecture
- **Description:** A comprehensive, pure Dart Flutter package providing a centralized Design System. It includes foundations (tokens, colors, typography), reusable UI widgets, and extensions/helpers.
- **Folder Structure:**
  - `lib/src/tokens/` - Design constants (Colors, Spacing, Radii, Sizes).
  - `lib/src/typography/` - Font styling, weights, and text themes.
  - `lib/src/theme/` - Global `ThemeData`.
  - `lib/src/widgets/` - Highly reusable base UI components (Buttons, Fields, Cards, Images, Pages).
  - `lib/src/utils/` - Extension methods and crypto helpers.
  - `lib/src/assets/` - Generated asset mappings.

# 2. 🚀 Installation & Initialization

Add to `pubspec.yaml`:
```yaml
dependencies:
  design_system:
    path: ./path_to/design_system # Or git URL
```

**Initialization:**
Apply the theme in `main.dart`:
```dart
import 'package:design_system/design_system.dart';

MaterialApp(
  theme: AppTheme.light,
  // darkTheme: AppTheme.dark, // When implemented
  navigatorKey: navigatorKey, // Exported by package for context-less utils
)
```

# 3. 🎨 Design Tokens (Foundations)

### Colors (`AppColors`)
| Token | Code Snippet |
|---|---|
| Background & Surfaces | `color: AppColors.background` |
| Texts | `color: AppColors.textHeading` |
| Borders | `color: AppColors.border` |
| Buttons | `color: AppColors.primaryButton` |
| Semantics | `color: AppColors.error` |

### Typography (`AppTextTheme`)
Access via context extension:
```dart
Text('Hello', style: context.textTheme.headingLarge)
```
| Style | Code Snippet |
|---|---|
| Headings | `context.textTheme.headingLarge` |
| Titles | `context.textTheme.titleMedium` |
| Body | `context.textTheme.bodyMedium` |
| Caption | `context.textTheme.bodyCaption` |

### Spacings (`AppSpacing` / `AppSizes`)
| Dimension | Snippet |
|---|---|
| Gap Width | `AppSpacing.w16` |
| Gap Height | `AppSpacing.h16` |
| Padding Value | `EdgeInsets.all(AppSizes.s16)` |

### Radii (`AppRadius`)
| Radius | Snippet |
|---|---|
| Rounded 8 | `borderRadius: AppRadius.rounded8` |
| Full/Pill | `borderRadius: AppRadius.rounded` |

# 4. 🧩 Widget Catalog (Exhaustive Deep-Dive)

### 1. AppSheetContainer
**Purpose:** Reusable bottom sheet / draggable container with a drag handle and safe area support.
| Parameter | Type | Req/Def | Description |
|---|---|---|---|
| `child` | `Widget?` | Def: null | Single child widget |
| `children` | `List<Widget>` | Def: `[]` | ListView children |
| `expand` | `bool` | Def: `false` | Expand to fill |
| `showDragHandle`| `bool` | Def: `true` | Show top handle |

```dart
AppSheetContainer(
  showDragHandle: true,
  children: [Text('Item 1')],
)
```

### 2. AppBackButton
**Purpose:** Standardized back button with SVG icon.
| Parameter | Type | Req/Def | Description |
|---|---|---|---|
| `color` | `Color?` | Def: null | Icon color |
| `icon` | `String?` | Def: null | Custom SVG path |
| `onPressed`| `VoidCallback?` | Def: null | Action override |

```dart
AppBackButton(onPressed: () => print('Back'))
```

### 3. AppImage
**Purpose:** Universal image renderer (SVG, Lottie, PNG).
| Parameter | Type | Req/Def | Description |
|---|---|---|---|
| `asset` | `String` | Req | Asset path |
| `size` | `double?` | Def: `24` | Width & Height |

```dart
AppImage(asset: AppAssets.iconCheckRounded, size: 24)
```

### 4. AppErrorImage
**Purpose:** Fallback placeholder for broken images.
| Parameter | Type | Req/Def | Description |
|---|---|---|---|
| `asset` | `String?` | Def: placeholder | Fallback asset |

```dart
AppErrorImage(size: 48)
```

### 5. AppNetworkImage
**Purpose:** Cached network image with loading and error states.
| Parameter | Type | Req/Def | Description |
|---|---|---|---|
| `url` | `String?` | Req | Web URL |
| `fit` | `BoxFit` | Def: `fill` | Scaling rule |

```dart
AppNetworkImage(url: 'https://img.co/1', width: 100, height: 100)
```

### 6. AppSnackBar
**Purpose:** Global imperative snackbar dispatcher.
| Parameter | Type | Req/Def | Description |
|---|---|---|---|
| `msg` | `String?` | Req | Main text |
| `type` | `AppSnackBarType?`| Def: null | success, error, info |

```dart
AppSnackBar.show(msg: 'Saved', type: AppSnackBarType.success);
```

### 7. AppRefreshIndicator
**Purpose:** Custom pull-to-refresh wrapper.
| Parameter | Type | Req/Def | Description |
|---|---|---|---|
| `onRefresh` | `Future Function()`| Req | Async task |
| `child` | `Widget` | Req | Scrollable child |

```dart
AppRefreshIndicator(
  onRefresh: () async {},
  child: ListView(),
)
```

### 8. AppLoadingIndicator
**Purpose:** Standard loading lottie animation.
| Parameter | Type | Req/Def | Description |
|---|---|---|---|
| `size` | `double` | Def: 24 | Animation size |

```dart
AppLoadingIndicator(size: 32)
```

### 9. AppCircleCard
**Purpose:** Circular material container.
| Parameter | Type | Req/Def | Description |
|---|---|---|---|
| `size` | `double` | Def: 40 | Diameter |
| `child` | `Widget?` | Def: null | Inner content |

```dart
AppCircleCard(size: 48, child: Icon(Icons.person))
```

### 10. AppBoxCard
**Purpose:** Rectangular container with shadows, border, and tap support.
| Parameter | Type | Req/Def | Description |
|---|---|---|---|
| `child` | `Widget` | Req | Content |
| `onTap` | `VoidCallback?` | Def: null | Tap handler |

```dart
AppBoxCard(onTap: () {}, child: Text('Card'))
```

### 11. AppGeneralPage
**Purpose:** Master scaffolding for screens.
| Parameter | Type | Req/Def | Description |
|---|---|---|---|
| `title` | `String?` | Def: null | AppBar text |
| `child` | `Widget` | Def: `SizedBox()`| Main body |
| `onRefresh` | `Future Function()?`| Def: null | Adds pull-to-refresh |

```dart
AppGeneralPage(
  title: 'Home',
  child: Text('Content'),
)
```

### 12. AppFieldLabel
**Purpose:** Typography for input fields, supports asterisk.
| Parameter | Type | Req/Def | Description |
|---|---|---|---|
| `label` | `String` | Req | Text |
| `required` | `bool` | Def: `false` | Adds red * |

```dart
AppFieldLabel(label: 'Email', required: true)
```

### 13. AppLabeledTextFormField
**Purpose:** Full input component (Label + TextFormField + Validator).
| Parameter | Type | Req/Def | Description |
|---|---|---|---|
| `label` | `String` | Req | Label text |
| `controller`| `TextEditingController?`| Def: null | Input ctrl |
| `validator` | `String? Function(String?)?`| Def: null | Validation logic |

```dart
AppLabeledTextFormField(
  label: 'Password',
  required: true,
)
```

### 14. AppCheckbox
**Purpose:** Checkbox strictly bounded to design tokens.
| Parameter | Type | Req/Def | Description |
|---|---|---|---|
| `value` | `bool?` | Def: `false` | Checked state |
| `onChanged` | `ValueChanged<bool?>?`| Req | Toggle handler |

```dart
AppCheckbox(value: true, onChanged: (v) {})
```

# 5. 🛠️ Utilities, Helpers, & Extensions

### ContextExt
- `context.screenWidth` / `screenHeight`: Gets dimensions.
- `context.textTheme`: Gets AppTextTheme.
- `context.safePop([result])`: Safe navigator pop.
- **Example:** `context.safePop();`

### DateTimeExt
- `formatddMMMMy`: e.g., "01 Januari 2026".
- `toDayTimeline`: e.g., "Hari Ini" or "Kemarin".
- **Example:** `DateTime.now().formatddMMMMy`

### DurationExt
- `format([format])`: Formats to 'mm:ss' or 'hh:mm'.
- **Example:** `duration.format('mm:ss')`

### NumExt
- `sp`, `scaleWidth`: Responsive scaling.
- `toIDR()`: Rupiah formatting.
- **Example:** `15000.toIDR()` -> "Rp15.000"

### StringExt
- `toTitleCase`, `toCamelCase`.
- `isStandardImage`: Checks file extension.
- **Example:** `'hello_world'.toTitleCase` -> "Hello World"

### AppHelper
- `encryptAES256GCM`, `decryptAES256GCM`: Crypto routines.
- `generateHMACSHA256`: Signing.
- **Example:** `AppHelper.encryptAES256GCM('data', 'key');`

# 6. 🖼️ Asset Management (Adding & Using Assets)

1. **Add File:** Place your raw assets (SVG, PNG, JSON, MP3) in the respective `assets/` subfolders (e.g., `assets/icons/svg/`).
2. **Run Generator:** DO NOT edit asset files manually. Run the included Dart script from the package root:
   ```bash
   dart script/generate_assets.dart
   ```
3. **What it does:** The script automatically reads all files, generates typed classes (`AppIcons`, `AppImages`), and aggregates them into `AppAssets` with the required `packages/design_system/` prefix for cross-package resolution.
4. **Usage:** Always use the generated `AppAssets` class safely:
   ```dart
   AppImage(asset: AppAssets.iconCheckRounded)
   ```

# 7. 🌉 Native Bridge / Platform Channels
*N/A - This package is 100% Pure Dart.*

# 8. 📝 Developer Contribution Guide

1. **Token Strictness:** Never hardcode dimensions, padding, or hex colors. Always use `AppSizes`, `AppSpacing`, `AppColors`.
2. **Barrel Files:** Always export new components inside their module's `index.dart` (e.g., `lib/src/widgets/index.dart`).
3. **Context Ext:** Add any theme/media-query lookups directly to `ContextExt` to avoid boilerplate.
