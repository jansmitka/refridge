import 'package:flutter/material.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:refridge/src/settings/theme/text_styles.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  fontFamily: 'Helvetica Neue',
  scaffoldBackgroundColor: RFColors.generalBg,
  textTheme: const TextTheme(
    headlineLarge: RFTextStyles.heading1,
    headlineMedium: RFTextStyles.heading2,
    headlineSmall: RFTextStyles.heading3,
    bodyLarge: RFTextStyles.body1,
    bodyMedium: RFTextStyles.body2,
    bodySmall: RFTextStyles.body3,
    labelLarge: RFTextStyles.labelBtn,
    labelMedium: RFTextStyles.label1,
    labelSmall: RFTextStyles.label2,
    titleMedium: RFTextStyles.section1,
  ),
);
