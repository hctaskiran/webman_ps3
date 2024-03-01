import 'package:flutter/material.dart';
import 'package:webman_ps3/constants/theme_colors.dart';

class IconButtonLight extends IconButtonThemeData {
  IconButtonLight() : super(style: ButtonStyle(overlayColor: MaterialStateProperty.all(ThemeColors.light.iconLight)));
}
