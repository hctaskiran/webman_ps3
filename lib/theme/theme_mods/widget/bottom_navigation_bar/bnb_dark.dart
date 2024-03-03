import 'package:flutter/material.dart';
import 'package:webman_ps3/constants/theme_colors.dart';

class BNBDark extends BottomNavigationBarThemeData {
  BNBDark()
      : super(
            // backgroundColor: ThemeColors.dark.bottomNavigationDark,
            selectedItemColor: ThemeColors.dark.textDark,
            selectedIconTheme: IconThemeData(color: ThemeColors.dark.iconDark),
            unselectedIconTheme: IconThemeData(color: ThemeColors.dark.iconDark));
}
