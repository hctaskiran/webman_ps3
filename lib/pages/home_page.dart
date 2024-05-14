import 'package:flutter/material.dart';
import 'package:webman_ps3/pages/tab_pages/game.dart';
import 'package:webman_ps3/pages/tab_pages/system.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController? tabController;

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
            tabs: const [
              Tab(text: 'SYSTEM'),
              Tab(text: 'GAME'),
              Tab(text: 'MISC'),
            ],
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: const [
            SystemCommands(),
            GameCommands(),
            SystemCommands(),
          ],
        ));
  }
}
