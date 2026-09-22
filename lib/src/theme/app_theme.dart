import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  AppTheme._();

  static ThemeData get light => ThemeData(
    useMaterial3: true,
    fontFamily: AppFontFamily.primary,
    scaffoldBackgroundColor: AppColors.background,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryButton),
    extensions: <ThemeExtension<dynamic>>[AppTextTheme.lightTextTheme],
    dividerTheme: DividerThemeData(color: AppColors.border),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: AppRadius.rounded),
        foregroundColor: AppColors.textOnColorHeading,
        backgroundColor: AppColors.primaryButton,
        padding: EdgeInsets.symmetric(
          vertical: AppSizes.s10,
          horizontal: AppSizes.s24,
        ),
        elevation: 0,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shadowColor: AppColors.transparent,
        textStyle: AppTextTheme.lightTextTheme.bodyMediumSemiBold,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: AppRadius.rounded),
        side: BorderSide(color: AppColors.border.withValues(alpha: .5)),
        foregroundColor: AppColors.textPrimary,
        padding: EdgeInsets.symmetric(
          vertical: AppSizes.s10,
          horizontal: AppSizes.s24,
        ),
        elevation: 0,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        textStyle: AppTextTheme.lightTextTheme.bodyMediumSemiBold,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: AppRadius.rounded8),
        foregroundColor: AppColors.textPrimary,
        padding: EdgeInsets.symmetric(
          vertical: AppSizes.s4,
          horizontal: AppSizes.s8,
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        textStyle: AppTextTheme.lightTextTheme.bodyCaptionSemiBold,
        minimumSize: Size.zero,
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        iconSize: AppSizes.s24,
        visualDensity: VisualDensity.compact,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: EdgeInsets.zero,
      ),
    ),
    appBarTheme: AppBarThemeData(
      centerTitle: false,
      backgroundColor: AppColors.background,
      titleTextStyle: AppTextTheme.lightTextTheme.headingSmall,
      scrolledUnderElevation: 0,
      titleSpacing: 8,
      elevation: 0,
    ),
    cardTheme: CardThemeData(
      shape: RoundedRectangleBorder(borderRadius: AppRadius.rounded12),
    ),

    inputDecorationTheme: InputDecorationThemeData(
      filled: true,
      isDense: true,
      fillColor: AppColors.background,
      labelStyle: AppTextTheme.lightTextTheme.bodyMedium.copyWith(
        color: AppColors.textHeading,
      ),

      floatingLabelBehavior: FloatingLabelBehavior.auto,
      focusColor: AppColors.primaryButton,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.border),
        borderRadius: AppRadius.rounded8,
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.border),
        borderRadius: AppRadius.rounded8,
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.border),
        borderRadius: AppRadius.rounded8,
      ),
    ),
    textTheme: TextTheme(
      displayLarge: AppTextTheme.lightTextTheme.headingLarge,
      displayMedium: AppTextTheme.lightTextTheme.headingMedium,
      displaySmall: AppTextTheme.lightTextTheme.headingSmall,
      headlineLarge: AppTextTheme.lightTextTheme.headingLarge,
      headlineMedium: AppTextTheme.lightTextTheme.headingMedium,
      headlineSmall: AppTextTheme.lightTextTheme.headingSmall,
      titleLarge: AppTextTheme.lightTextTheme.titleLarge,
      titleMedium: AppTextTheme.lightTextTheme.titleMedium,
      titleSmall: AppTextTheme.lightTextTheme.titleSmall,
      bodyLarge: AppTextTheme.lightTextTheme.bodyLarge,
      bodyMedium: AppTextTheme.lightTextTheme.bodyMedium,
      bodySmall: AppTextTheme.lightTextTheme.bodySmall,
      labelLarge: AppTextTheme.lightTextTheme.bodyMediumSemiBold,
      labelMedium: AppTextTheme.lightTextTheme.bodyCaptionMedium,
      labelSmall: AppTextTheme.lightTextTheme.bodySmallMedium,
    ),
    primaryTextTheme: TextTheme(
      displayLarge: AppTextTheme.lightTextTheme.headingLarge,
      displayMedium: AppTextTheme.lightTextTheme.headingMedium,
      displaySmall: AppTextTheme.lightTextTheme.headingSmall,
      headlineLarge: AppTextTheme.lightTextTheme.headingLarge,
      headlineMedium: AppTextTheme.lightTextTheme.headingMedium,
      headlineSmall: AppTextTheme.lightTextTheme.headingSmall,
      titleLarge: AppTextTheme.lightTextTheme.titleLarge,
      titleMedium: AppTextTheme.lightTextTheme.titleMedium,
      titleSmall: AppTextTheme.lightTextTheme.titleSmall,
      bodyLarge: AppTextTheme.lightTextTheme.bodyLarge,
      bodyMedium: AppTextTheme.lightTextTheme.bodyMedium,
      bodySmall: AppTextTheme.lightTextTheme.bodySmall,
      labelLarge: AppTextTheme.lightTextTheme.bodyMediumSemiBold,
      labelMedium: AppTextTheme.lightTextTheme.bodyCaptionMedium,
      labelSmall: AppTextTheme.lightTextTheme.bodySmallMedium,
    ),
  );
}
