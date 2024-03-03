import 'package:flutter/material.dart';
import 'package:webman_ps3/constants/theme_colors.dart';

class ExpansionDark extends ExpansionTileThemeData {
  ExpansionDark()
      : super(
          childrenPadding: const EdgeInsets.symmetric(horizontal: 20),
          iconColor: ThemeColors.dark.iconDark,
          textColor: ThemeColors.dark.textDark,
          collapsedIconColor: ThemeColors.dark.iconDark,
          collapsedTextColor: ThemeColors.dark.textDark,
        );
}
