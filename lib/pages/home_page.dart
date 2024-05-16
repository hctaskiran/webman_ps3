import 'package:flutter/material.dart';
import 'package:webman_ps3/constants/navigation_bar.dart';
import 'package:webman_ps3/pages/tab_pages/game_commands.dart';
import 'package:webman_ps3/pages/tab_pages/misc_commands.dart';
import 'package:webman_ps3/pages/tab_pages/system_commands.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController? tabController;
  final bars = NavigationPages().tabBars;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            controller: tabController,
            tabs:  [
              bars[0],
              bars[1],
              bars[2],
            ],
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: const [
            SystemCommands(),
            GameCommands(),
            MiscCommands(),
          ],
        ));
  }
}
