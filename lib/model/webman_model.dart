// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:webman_ps3/components/input_dialog.dart';
import 'package:webman_ps3/constants/strings.dart';
import 'package:webman_ps3/logic/browser_logics.dart';
import 'package:webman_ps3/logic/cd_logics.dart';
import 'package:webman_ps3/logic/fan_logics.dart';
import 'package:webman_ps3/logic/game_logics.dart';
import 'package:webman_ps3/logic/misc_logic.dart';
import 'package:webman_ps3/logic/system_logics.dart';

class WebmanModel {
  final IconData icon;
  final String title;
  final String subtitle;
  final void Function(BuildContext) onTap;

  WebmanModel({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });
}

class WebmanTile {
  WebmanTile();
  final TextEditingController ipController = TextEditingController();
  final TextEditingController urlController = TextEditingController();

  List<WebmanModel> get webman {
    return [
      WebmanModel(
        icon: Icons.warning_amber_outlined,
        title: 'Test',
        subtitle: 'Test?',
        onTap: (context) async {
          MiscLogic().prevIcon(context);
        },
      ),
      WebmanModel(
        icon: Icons.functions,
        title: 'Fan Mode',
        subtitle: 'Adjust the fan mode of the console',
        onTap: (context) async {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Choose Fan Mode'),
                  content: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Column(
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                        Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                FanLogics().sysconMode(context);
                                Navigator.pop(context);
                              },
                              child: const Text("Syscon"),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                FanLogics().dynamicMode(context);
                                Navigator.pop(context);
                              },
                              child: const Text("Dynamic"),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                FanLogics().manualMode(context);
                                Navigator.pop(context);
                              },
                              child: const Text("Auto"),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              });
        },
      ),
      // System
      WebmanModel(
        icon: Icons.close,
        title: AppStrings().system.shutdown,
        subtitle: AppStrings().system.subShutdown,
        onTap: (context) async {
          SystemLogics().shutdown(context);
        },
      ),
      WebmanModel(
        icon: Icons.restart_alt_outlined,
        title: AppStrings().system.reboot,
        subtitle: AppStrings().system.subReboot,
        onTap: (context) async {
          SystemLogics().reboot(context);
        },
      ),
      // Game
      WebmanModel(
        icon: Icons.exit_to_app_outlined,
        title: AppStrings().game.quit,
        subtitle: AppStrings().game.subQuit,
        onTap: (context) async {
          GameLogics().exit(context);
        },
      ),
      WebmanModel(
        icon: Icons.refresh_outlined,
        title: AppStrings().game.reload,
        subtitle: AppStrings().game.subReload,
        onTap: (context) async {
          SystemLogics().reboot(context);
        },
      ),
      WebmanModel(
        icon: Icons.document_scanner_outlined,
        title: AppStrings().game.rescan,
        subtitle: AppStrings().game.subRescan,
        onTap: (context) async {
          GameLogics().rescan(context);
        },
      ),
      // CD
      WebmanModel(
        icon: Icons.eject_outlined,
        title: AppStrings().game.mount,
        subtitle: AppStrings().game.subMount,
        onTap: (context) async {
          CDLogics().eject(context);
        },
      ),
      /*  WebmanModel(
        icon: Icons.install_desktop_outlined,
        title: AppStrings().game.mount,
        subtitle: AppStrings().game.subMount,
        onTap: (context) async {
          final TextEditingController mountController = TextEditingController();
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                  title: const Text('Mount Game'),
                  content: TextFormField(
                      controller: mountController,
                      onFieldSubmitted: (value) {
                        GameLogics().mountByText(context);
                        Navigator.pop(context);
                      })));
        },
      ), */
      // Browser
      WebmanModel(
        icon: Icons.wifi_outlined,
        title: AppStrings().misc.browser,
        subtitle: AppStrings().misc.subBrowser,
        onTap: (context) async {
          final TextEditingController urlController = TextEditingController();

          inputDialog(context, urlController, () => BrowserLogics().redirectTo(context, urlController.text.trim()),
              'Open Browser', "Enter the URL without 'https://www.'", 'e.g. google.com');
        },
      ),
      // Miscllaneous
    ];
  }
}
