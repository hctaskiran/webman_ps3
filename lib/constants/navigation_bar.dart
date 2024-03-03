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
}
