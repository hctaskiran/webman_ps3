import 'package:flutter/material.dart';
import 'package:webman_ps3/constants/theme_colors.dart';
import 'package:webman_ps3/theme/theme_mods/widget/app_bar/app_bar_dark.dart';
import 'package:webman_ps3/theme/theme_mods/widget/app_bar/app_bar_light.dart';
import 'package:webman_ps3/theme/theme_mods/widget/bottom_navigation_bar/bnb_dark.dart';
import 'package:webman_ps3/theme/theme_mods/widget/bottom_navigation_bar/bnb_light.dart';
import 'package:webman_ps3/theme/theme_mods/widget/divider/divider_dark.dart';
import 'package:webman_ps3/theme/theme_mods/widget/divider/divider_light.dart';
import 'package:webman_ps3/theme/theme_mods/widget/elevated_button/elevated_dark.dart';
import 'package:webman_ps3/theme/theme_mods/widget/elevated_button/elevated_light.dart';
import 'package:webman_ps3/theme/theme_mods/widget/expansion_tile/exp_dark.dart';
import 'package:webman_ps3/theme/theme_mods/widget/expansion_tile/exp_light.dart';
import 'package:webman_ps3/theme/theme_mods/widget/icon/icon_button_dark.dart';
import 'package:webman_ps3/theme/theme_mods/widget/icon/icon_button_light.dart';
import 'package:webman_ps3/theme/theme_mods/widget/icon/icon_dark.dart';
import 'package:webman_ps3/theme/theme_mods/widget/icon/icon_light.dart';
import 'package:webman_ps3/theme/theme_mods/widget/input_decoration/input_dark.dart';
import 'package:webman_ps3/theme/theme_mods/widget/input_decoration/input_light.dart';
import 'package:webman_ps3/theme/theme_mods/widget/list_tile/tile_dark.dart';
import 'package:webman_ps3/theme/theme_mods/widget/list_tile/tile_light.dart';
import 'package:webman_ps3/theme/theme_mods/widget/snack_bar/snack_dark.dart';
import 'package:webman_ps3/theme/theme_mods/widget/snack_bar/snack_light.dart';
import 'package:webman_ps3/theme/theme_mods/widget/text/text_dark.dart';
import 'package:webman_ps3/theme/theme_mods/widget/text/text_ligt.dart';
import 'package:webman_ps3/theme/theme_mods/widget/text_button/button_dark.dart';
import 'package:webman_ps3/theme/theme_mods/widget/text_button/button_light.dart';

class CustomTheme {
  ThemeData darkTheme = ThemeData(
      splashColor: Colors.transparent,
      appBarTheme: DarkAppBar(),
      dividerColor: Colors.transparent,
      bottomNavigationBarTheme: BNBDark(),
      brightness: Brightness.dark,
      dividerTheme: DividerDark(),
      elevatedButtonTheme: ElevatedDark(),
      iconButtonTheme: IconButtonDark(),
      iconTheme: IconDark(),
      inputDecorationTheme: InputDark(),
      listTileTheme: TileDark(),
      scaffoldBackgroundColor: ThemeColors.dark.scaffoldDark,
      snackBarTheme: SnackDark(),
      textButtonTheme: TextButtonDark(),
      textTheme: TextDark(),
      expansionTileTheme: ExpansionDark());

  ThemeData lightTheme = ThemeData(
    dividerColor: Colors.transparent,
    appBarTheme: LightAppBar(),
    bottomNavigationBarTheme: BNBLight(),
    brightness: Brightness.light,
    dividerTheme: DividerLight(),
    elevatedButtonTheme: ElevatedLight(),
    iconButtonTheme: IconButtonLight(),
    iconTheme: IconLight(),
    inputDecorationTheme: InputLight(),
    listTileTheme: TileLight(),
    scaffoldBackgroundColor: ThemeColors.light.scaffoldLight,
    snackBarTheme: SnackLight(),
    textButtonTheme: TextButtonLight(),
    textTheme: TextLight(),
    expansionTileTheme: ExpansionLight(),
    splashColor: Colors.transparent,
  );
}
