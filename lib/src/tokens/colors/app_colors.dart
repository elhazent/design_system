import 'package:flutter/material.dart';

import 'app_pallete.dart';

class AppColors {
  AppColors._();

  // Background & Surfaces
  static const Color background = AppPallete.background;
  static const Color surface = AppPallete.surfaceContainerLowest;
  static const Color surfaceDim = AppPallete.surfaceDim;
  static const Color surfaceVariant = AppPallete.surfaceVariant;
  static const Color canvas = AppPallete.neutralCanvas;
  static const Color transparent = Colors.transparent;
  static const Color white = Colors.white;
  static const Color black = Colors.black;

  // Texts
  static const Color textHeading = AppPallete.textHeading;
  static const Color textBody = AppPallete.textBody;
  static const Color textCaption = AppPallete.textCaption;

  static const Color textPrimary = AppPallete.onSurface;
  static const Color textSecondary = AppPallete.onSurfaceVariant;
  static const Color textInverse = AppPallete.inverseOnSurface;

  static const Color textOnColorHeading = AppPallete.neutralSurface;
  static const Color textOnColorBody = AppPallete.neutralSurface;
  static const Color textOnColorCaption = AppPallete.surfaceContainerLow;

  // Borders
  static const Color border = AppPallete.neutralBorder;
  static const Color outline = AppPallete.outline;

  // Buttons / Actions
  static const Color primaryButton = AppPallete.brandPrimary;
  static const Color secondaryButton = AppPallete.brandSecondary;
  static const Color onPrimaryButton = AppPallete.onPrimary;
  static const Color onSecondaryButton = AppPallete.onSecondary;

  // Interactive & Form States
  static const Color focusedBorder = AppPallete.brandPrimary;
  static const Color pinDotEmpty = AppPallete.pinEmpty;
  static const Color pinDotFilled = AppPallete.brandPrimary;

  // Identity Card (KTP)
  static const Color ktpSurface = AppPallete.brandTertiary;
  static const Color ktpStroke = AppPallete.ktpStroke;

  // Semantics / Validation
  static const Color verifiedBg = AppPallete.semanticSuccessBg;
  static const Color verifiedFg = AppPallete.semanticSuccess;
  static const Color warning = AppPallete.semanticWarning;
  static const Color error = AppPallete.semanticError;
}
