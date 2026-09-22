# 1. 🚀 Plugin Overview
- **Description:** A Flutter package providing a complete design system, including themes, typography, colors, and reusable UI components.
- **Supported Platforms:** Android, iOS, Web, macOS, Windows, Linux (Pure Dart).

# 2. ⚙️ Installation & Native Setup
- **Dependency:**
```yaml
dependencies:
  design_system:
    path: ./path_to/design_system
```
- **Android Setup:** None required. Pure Dart implementation.
- **iOS Setup:** None required. Pure Dart implementation.

# 3. 🌉 Bridge Architecture (Dart <-> Native)
- **Communication Protocol:** N/A. No native code (Pure Dart).
- **Channel Names:** N/A.

# 4. 📖 Public API Reference (Dart Interface)

| Class / Method | Description | Parameters | Returns | Exceptions |
|---|---|---|---|---|
| `AppColors` | Defines core design system colors. | None | N/A | None |
| `AppBackButton(…)` | Widget for a back action with SVG. | `Color? color`, `String? icon`, `VoidCallback? onPressed` | `Widget` | None |
| `AppTheme` | Provides `ThemeData` setup. | None | `ThemeData` | None |
| `AppSpacing` | Defines layout margins. | None | `double` | None |

# 5. 💻 Usage Examples

```dart
import 'package:design_system/design_system.dart';

// Button Usage
AppBackButton(
  color: AppColors.primaryButton,
  onPressed: () => print('Go back'),
);

// Color Usage
Container(
  color: AppColors.background,
  child: Text('Hello', style: TextStyle(color: AppColors.textPrimary)),
);
```

# 6. 🛠️ Native Implementation Details (For Contributors)
- **Android (Kotlin/Java):** None.
- **iOS (Swift/Obj-C):** None.