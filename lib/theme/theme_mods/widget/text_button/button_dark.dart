import 'package:flutter/material.dart';
import 'package:webman_ps3/constants/theme_colors.dart';

class TextButtonDark extends TextButtonThemeData {
  TextButtonDark()
      : super(style: ButtonStyle(foregroundColor: MaterialStateProperty.all(ThemeColors.dark.textButtonDark)));
}
