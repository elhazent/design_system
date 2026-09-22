import 'package:flutter/material.dart';

abstract class AppPallete {
  AppPallete._();

  static const Color surface = Color(0xFFFAF8FF);
  static const Color surfaceDim = Color(0xFFD2D9F4);
  static const Color surfaceBright = Color(0xFFFAF8FF);
  static const Color surfaceContainerLowest = Color(0xFFFFFFFF);
  static const Color surfaceContainerLow = Color(0xFFF2F3FF);
  static const Color surfaceContainer = Color(0xFFEAEDFF);
  static const Color surfaceContainerHigh = Color(0xFFE2E7FF);
  static const Color surfaceContainerHighest = Color(0xFFDAE2FD);
  
  static const Color onSurface = Color(0xFF131B2E);
  static const Color onSurfaceVariant = Color(0xFF41474D);
  static const Color inverseSurface = Color(0xFF283044);
  static const Color inverseOnSurface = Color(0xFFEEF0FF);
  
  static const Color outline = Color(0xFF72787E);
  static const Color outlineVariant = Color(0xFFC1C7CE);
  
  static const Color surfaceTint = Color(0xFF356382);
  
  static const Color primary = Color(0xFF114563);
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color primaryContainer = Color(0xFF2F5D7C);
  static const Color onPrimaryContainer = Color(0xFFA8D5F9);
  static const Color inversePrimary = Color(0xFF9FCCEF);
  
  static const Color secondary = Color(0xFFAD3400);
  static const Color onSecondary = Color(0xFFFFFFFF);
  static const Color secondaryContainer = Color(0xFFFC6B39);
  static const Color onSecondaryContainer = Color(0xFF5E1800);
  
  static const Color tertiary = Color(0xFF33444E);
  static const Color onTertiary = Color(0xFFFFFFFF);
  static const Color tertiaryContainer = Color(0xFF4A5B66);
  static const Color onTertiaryContainer = Color(0xFFC0D2DF);
  
  static const Color error = Color(0xFFBA1A1A);
  static const Color onError = Color(0xFFFFFFFF);
  static const Color errorContainer = Color(0xFFFFDAD6);
  static const Color onErrorContainer = Color(0xFF93000A);
  
  static const Color primaryFixed = Color(0xFFC9E6FF);
  static const Color primaryFixedDim = Color(0xFF9FCCEF);
  static const Color onPrimaryFixed = Color(0xFF001E2F);
  static const Color onPrimaryFixedVariant = Color(0xFF194B69);
  
  static const Color secondaryFixed = Color(0xFFFFDBD0);
  static const Color secondaryFixedDim = Color(0xFFFFB59D);
  static const Color onSecondaryFixed = Color(0xFF390B00);
  static const Color onSecondaryFixedVariant = Color(0xFF842500);
  
  static const Color tertiaryFixed = Color(0xFFD3E5F2);
  static const Color tertiaryFixedDim = Color(0xFFB7C9D6);
  static const Color onTertiaryFixed = Color(0xFF0C1D27);
  static const Color onTertiaryFixedVariant = Color(0xFF384954);
  
  static const Color background = Color(0xFFFAF8FF);
  static const Color onBackground = Color(0xFF131B2E);
  static const Color surfaceVariant = Color(0xFFDAE2FD);

  // Semantics KTP & Neutrals from DESIGN.md text body
  static const Color brandPrimary = Color(0xFF2F5D7C);
  static const Color brandSecondary = Color(0xFFC84615);
  static const Color brandTertiary = Color(0xFF1A2B35);
  
  static const Color neutralBackground = Color(0xFFF8FAFC);
  static const Color neutralCanvas = Color(0xFFF3F5F7);
  static const Color neutralSurface = Color(0xFFFFFFFF);
  static const Color neutralBorder = Color(0xFFE2E8F0);
  
  static const Color textHeading = Color(0xFF0F172A);
  static const Color textBody = Color(0xFF1E293B);
  static const Color textCaption = Color(0xFF64748B);
  
  static const Color semanticSuccess = Color(0xFF16A34A);
  static const Color semanticSuccessBg = Color(0xFFDCFCE7);
  static const Color semanticWarning = Color(0xFFD97706);
  static const Color semanticError = Color(0xFFDC2626);
  
  static const Color pinEmpty = Color(0xFFCBD5E1);
  static const Color ktpStroke = Color(0xFF334155);
}
