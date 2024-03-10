import 'package:flutter/material.dart';
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

  static final chips = [
    ActionChip(
      label: const Text('SYSTEM'),
      onPressed: () {},
    ),
    ActionChip(
      label: const Text('GAME'),
      onPressed: () {},
    ),
    ActionChip(
      label: const Text('MISC'),
      onPressed: () {},
    ),
  ];
}
