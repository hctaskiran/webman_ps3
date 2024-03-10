// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:webman_ps3/constants/strings.dart';
import 'package:webman_ps3/logic/game_logics.dart';
import 'package:webman_ps3/logic/system_logics.dart';

class GameModel {
  final IconData icon;
  final String title;
  final String subtitle;
  final void Function(BuildContext) onTap;

  GameModel({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });
}

class GameTile {
  GameTile();
  final TextEditingController ipController = TextEditingController();
  final TextEditingController urlController = TextEditingController();

  List<GameModel> get game {
    return [
      GameModel(
        icon: Icons.exit_to_app_outlined,
        title: AppStrings().game.quit,
        subtitle: AppStrings().game.subQuit,
        onTap: (context) async {
          GameLogics().exit(context);
        },
      ),
      GameModel(
        icon: Icons.refresh_outlined,
        title: AppStrings().game.reload,
        subtitle: AppStrings().game.subReload,
        onTap: (context) async {
          SystemLogics().reboot(context);
        },
      ),
      GameModel(
        icon: Icons.document_scanner_outlined,
        title: AppStrings().game.rescan,
        subtitle: AppStrings().game.subRescan,
        onTap: (context) async {
          GameLogics().rescan(context);
        },
      ),
      GameModel(
        icon: Icons.gamepad,
        title: AppStrings().game.rescan,
        subtitle: AppStrings().game.subRescan,
        onTap: (context) async {
          GameLogics().mountSearch(context);
        },
      ),
    ];
  }
}
