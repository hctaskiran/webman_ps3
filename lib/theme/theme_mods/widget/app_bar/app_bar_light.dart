import 'package:flutter/material.dart';
import 'package:webman_ps3/constants/theme_colors.dart';

class LightAppBar extends AppBarTheme {
  LightAppBar({Key? key})
      : super(
          scrolledUnderElevation: 0.0,
          iconTheme: IconThemeData(color: ThemeColors.light.iconLight),
          backgroundColor: ThemeColors.light.appBarLight,
          titleTextStyle: TextStyle(color: ThemeColors.light.textLight, fontSize: 30, fontWeight: FontWeight.bold),
        );
}
