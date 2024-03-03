import 'package:flutter/material.dart';
import 'package:webman_ps3/constants/theme_colors.dart';

class BNBLight extends BottomNavigationBarThemeData {
  BNBLight()
      : super(
            backgroundColor: ThemeColors.light.bottomNavigationLight,
            showUnselectedLabels: false,
            selectedItemColor: ThemeColors.light.textLight,
            selectedIconTheme: IconThemeData(color: ThemeColors.light.iconLight),
            unselectedIconTheme: IconThemeData(color: ThemeColors.light.iconLight));
}
