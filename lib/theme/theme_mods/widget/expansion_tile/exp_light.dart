import 'package:flutter/material.dart';
import 'package:webman_ps3/constants/theme_colors.dart';

class ExpansionLight extends ExpansionTileThemeData {
  ExpansionLight()
      : super(
          childrenPadding: const EdgeInsets.symmetric(horizontal: 20),
          iconColor: ThemeColors.light.iconLight,
          textColor: ThemeColors.light.textLight,
          collapsedIconColor: ThemeColors.light.iconLight,
          collapsedTextColor: ThemeColors.light.textLight,
        );
}
