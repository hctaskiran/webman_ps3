import 'package:flutter/material.dart';

import 'package:webman_ps3/constants/theme_colors.dart';

class InputDark extends InputDecorationTheme {
  InputDark({Key? key})
      : super(
          errorStyle: TextStyle(color: Colors.red),
          prefixIconColor: ThemeColors.dark.iconDark,
          border: OutlineInputBorder(borderSide: BorderSide(color:Colors.red)),
          contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          labelStyle: TextStyle(color: ThemeColors.dark.labelTextDark),
          hintStyle: TextStyle(color: ThemeColors.dark.hintTextDark, fontStyle: FontStyle.italic, fontSize: 14),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: ThemeColors.dark.enabledBorderDark)),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: ThemeColors.dark.focusedBorderDark)),
        );
}
