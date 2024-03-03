import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:webman_ps3/constants/navigation_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: NavigationPages.pages.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        selectedFontSize: 18,
        currentIndex: selectedIndex,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Ionicons.code_slash),
            label: 'Commands',
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.information_circle_outline),
            label: 'System Info',
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.game_controller_outline),
            label: 'Controller',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
