import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:webman_ps3/constants/navigation_bar.dart';
import 'package:webman_ps3/core/enum/translations_enum.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> with TickerProviderStateMixin {
  int selectedIndex = 0;

  

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return Scaffold(
          body: NavigationPages.pages.elementAt(selectedIndex),
          bottomNavigationBar: orientation == Orientation.portrait
              ? BottomNavigationBar(
                  currentIndex: selectedIndex,
                  onTap: (int index) {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  items: _bnb,
                )
              : null,
        );
      },
    );
  }

  List<BottomNavigationBarItem> get _bnb {
    return  [
      BottomNavigationBarItem(icon: const Icon(Ionicons.code_slash), label: Translations().COMMANDS_NAVBAR),
      BottomNavigationBarItem(icon: const Icon(Ionicons.information_circle_outline), label: Translations().SYSTEM_INFO_NAVBAR),
      BottomNavigationBarItem(icon: const Icon(Ionicons.game_controller_outline), label: Translations().CONTROLLER_NAVBAR),
      BottomNavigationBarItem(icon: const Icon(Icons.settings_outlined), label: Translations().SETTINGS_NAVBAR),
    ];
  }
}
