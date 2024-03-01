import 'package:flutter/material.dart';
import 'package:webman_ps3/constants/theme_colors.dart';

class IconButtonDark extends IconButtonThemeData {
  IconButtonDark() : super(style: ButtonStyle(overlayColor: MaterialStateProperty.all(ThemeColors.dark.iconDark)));
}
