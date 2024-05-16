import 'package:flutter/material.dart';
import 'package:webman_ps3/core/enum/translations_enum.dart';
import 'package:webman_ps3/pages/controller_page.dart';
import 'package:webman_ps3/pages/home_page.dart';
import 'package:webman_ps3/pages/settings_page.dart';
import 'package:webman_ps3/pages/system_page.dart';

class NavigationPages {
  static final pages = [
    const HomePage(),
    const SystemPage(),
    const ControllerPage(),
    const SettingsPage(),
  ];

  final tabBars = [
    Tab(text: Translations().SYSTEM_TAB),
    Tab(text: Translations().GAME_TAB),
    Tab(text: Translations().MISC_TAB),
  ];
}
