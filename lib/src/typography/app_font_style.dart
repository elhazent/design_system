import 'package:flutter/material.dart';

class AppFontStyle {
  static const String fontFamily = 'Inter';

  // displays
  static const TextStyle displayLg = TextStyle(fontFamily: fontFamily, fontSize: 32, fontWeight: FontWeight.w700, height: 40/32, letterSpacing: -0.02);
  static const TextStyle displayLgMobile = TextStyle(fontFamily: fontFamily, fontSize: 24, fontWeight: FontWeight.w700, height: 32/24, letterSpacing: -0.01);
  
  // headings
  static const TextStyle headingLarge = displayLg;
  static const TextStyle headingMedium = TextStyle(fontFamily: fontFamily, fontSize: 20, fontWeight: FontWeight.w600, height: 28/20);
  static const TextStyle headingSmall = TextStyle(fontFamily: fontFamily, fontSize: 18, fontWeight: FontWeight.w600, height: 26/18);
  
  // titles (mapped to existing system)
  static const TextStyle titleLarge = headingMedium;
  static const TextStyle titleMedium = headingSmall;
  static const TextStyle titleSmall = TextStyle(fontFamily: fontFamily, fontSize: 16, fontWeight: FontWeight.w600, height: 24/16);

  // body
  static const TextStyle bodyLarge = TextStyle(fontFamily: fontFamily, fontSize: 16, fontWeight: FontWeight.w400, height: 24/16);
  static const TextStyle bodyLargeMedium = TextStyle(fontFamily: fontFamily, fontSize: 16, fontWeight: FontWeight.w500, height: 24/16);
  static const TextStyle bodyLargeSemiBold = TextStyle(fontFamily: fontFamily, fontSize: 16, fontWeight: FontWeight.w600, height: 24/16);
  
  static const TextStyle bodyMedium = TextStyle(fontFamily: fontFamily, fontSize: 14, fontWeight: FontWeight.w400, height: 20/14);
  static const TextStyle bodyMediumMed = TextStyle(fontFamily: fontFamily, fontSize: 14, fontWeight: FontWeight.w500, height: 20/14);
  static const TextStyle bodyMediumSemiBold = TextStyle(fontFamily: fontFamily, fontSize: 14, fontWeight: FontWeight.w600, height: 20/14);

  static const TextStyle bodySmall = TextStyle(fontFamily: fontFamily, fontSize: 13, fontWeight: FontWeight.w400, height: 18/13);
  static const TextStyle bodySmallMedium = TextStyle(fontFamily: fontFamily, fontSize: 13, fontWeight: FontWeight.w500, height: 18/13);
  static const TextStyle bodySmallSemiBold = TextStyle(fontFamily: fontFamily, fontSize: 13, fontWeight: FontWeight.w600, height: 18/13);

  // captions
  static const TextStyle bodyCaption = TextStyle(fontFamily: fontFamily, fontSize: 11, fontWeight: FontWeight.w600, height: 16/11, letterSpacing: 0.06);
  static const TextStyle bodyCaptionMedium = bodyCaption;
  static const TextStyle bodyCaptionSemiBold = bodyCaption;
}
