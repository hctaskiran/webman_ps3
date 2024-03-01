import 'package:flutter/material.dart';

import 'package:webman_ps3/constants/theme_colors.dart';

class InputLight extends InputDecorationTheme {
  InputLight({Key? key})
      : super(
          errorStyle: TextStyle(color: Colors.red),
          prefixIconColor: ThemeColors.light.iconLight,
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
          contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          labelStyle: TextStyle(color: ThemeColors.light.labelTextLight),
          hintStyle: TextStyle(color: Colors.grey[500], fontStyle: FontStyle.italic, fontSize: 14),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: ThemeColors.light.enabledBorderLight)),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: ThemeColors.light.focusedBorderLight)),
        );
}
