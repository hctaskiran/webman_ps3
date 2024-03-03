import 'package:flutter/material.dart';
import 'package:webman_ps3/constants/theme_colors.dart';

class TextLight extends TextTheme {
  TextLight()
      : super(
          bodyLarge: TextStyle(color: ThemeColors.light.textLight),
          bodyMedium: TextStyle(color: ThemeColors.light.textLight),
          bodySmall: TextStyle(color: ThemeColors.light.textLight),
          displayLarge: TextStyle(color: ThemeColors.light.textLight),
          displayMedium: TextStyle(color: ThemeColors.light.textLight),
          displaySmall: TextStyle(color: ThemeColors.light.textLight),
          headlineLarge: TextStyle(color: ThemeColors.light.textLight),
          headlineMedium: TextStyle(color: ThemeColors.light.textLight),
          headlineSmall: TextStyle(color: ThemeColors.light.textLight),
          titleSmall: TextStyle(color: ThemeColors.light.textLight),
          titleMedium: TextStyle(color: ThemeColors.light.textLight),
          titleLarge: TextStyle(color: ThemeColors.light.textLight, fontSize: 24),
          labelLarge: TextStyle(color: ThemeColors.light.textLight),
          labelMedium: TextStyle(color: ThemeColors.light.textLight),
          labelSmall: TextStyle(color: ThemeColors.light.textLight),
        );
}
