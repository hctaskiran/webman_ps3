import 'package:flutter/material.dart';
import 'package:webman_ps3/constants/theme_colors.dart';

class TextDark extends TextTheme {
  TextDark()
      : super(
          bodyLarge: TextStyle(color: ThemeColors.dark.textDark),
          bodyMedium: TextStyle(color: ThemeColors.dark.textDark),
          bodySmall: TextStyle(color: ThemeColors.dark.textDark),
          displayLarge: TextStyle(color: ThemeColors.dark.textDark),
          displayMedium: TextStyle(color: ThemeColors.dark.textDark),
          displaySmall: TextStyle(color: ThemeColors.dark.textDark),
          headlineLarge: TextStyle(color: ThemeColors.dark.textDark),
          headlineMedium: TextStyle(color: ThemeColors.dark.textDark),
          headlineSmall: TextStyle(color: ThemeColors.dark.textDark),
          titleSmall: TextStyle(color: ThemeColors.dark.textDark),
          titleMedium: TextStyle(color: ThemeColors.dark.textDark),
          titleLarge: TextStyle(color: ThemeColors.dark.textDark, fontSize: 24),
          labelLarge: TextStyle(color: ThemeColors.dark.textDark),
          labelMedium: TextStyle(color: ThemeColors.dark.textDark),
          labelSmall: TextStyle(color: ThemeColors.dark.textDark),
        );
}
