import 'package:flutter/material.dart';
import 'package:webman_ps3/components/input_dialog.dart';
import 'package:webman_ps3/constants/strings.dart';
import 'package:webman_ps3/logic/browser_logics.dart';
import 'package:webman_ps3/logic/cd_logics.dart';
import 'package:webman_ps3/logic/fan_logics.dart';
import 'package:webman_ps3/logic/game_logics.dart';
import 'package:webman_ps3/logic/info_logic.dart';
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
  WebmanTile({required this.ipController});

  final TextEditingController ipController;
  final TextEditingController urlController = TextEditingController();

  List<WebmanModel> get webman {
    return [
      WebmanModel(
        icon: Icons.voice_chat_outlined,
        title: 'Test',
        subtitle: 'Test?',
        onTap: (context) {
          String ipAddress = '192.168.88.9';
          InfoLogics().hddInfo(context, ipAddress);
        },
      ),
      WebmanModel(
        icon: Icons.functions,
        title: 'Fan Mode',
        subtitle: 'Adjust the fan mode of the console',
        onTap: (context) {
          String ipAddress = '192.168.88.9';
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
                              onPressed: () => FanLogics().sysconMode(context, ipAddress),
                              child: const Text("Syscon"),
                            ),
                            ElevatedButton(
                              onPressed: () => FanLogics().dynamicMode(context, ipAddress),
                              child: const Text("Dynamic"),
                            ),
                            ElevatedButton(
                              onPressed: () => FanLogics().autoMode(context, ipAddress),
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
        onTap: (context) {
          String ipAddress = ipController.text.trim();
          SystemLogics().shutdown(context, ipAddress);
        },
      ),
      WebmanModel(
        icon: Icons.restart_alt_outlined,
        title: AppStrings().system.reboot,
        subtitle: AppStrings().system.subReboot,
        onTap: (context) {
          String ipAddress = ipController.text.trim();
          SystemLogics().reboot(context, ipAddress);
        },
      ),
      // Game
      WebmanModel(
        icon: Icons.exit_to_app_outlined,
        title: AppStrings().game.quit,
        subtitle: AppStrings().game.subQuit,
        onTap: (context) {
          String ipAddress = ipController.text.trim();
          GameLogics().exit(context, ipAddress);
        },
      ),
      WebmanModel(
        icon: Icons.refresh_outlined,
        title: AppStrings().game.reload,
        subtitle: AppStrings().game.subReload,
        onTap: (context) {
          String ipAddress = ipController.text.trim();
          SystemLogics().reboot(context, ipAddress);
        },
      ),
      WebmanModel(
        icon: Icons.document_scanner_outlined,
        title: AppStrings().game.rescan,
        subtitle: AppStrings().game.subRescan,
        onTap: (context) {
          String ipAddress = ipController.text.trim();
          GameLogics().rescan(context, ipAddress);
        },
      ),
      // CD
      WebmanModel(
        icon: Icons.eject_outlined,
        title: AppStrings().game.mount,
        subtitle: AppStrings().game.subMount,
        onTap: (context) {
          String ipAddress = ipController.text.trim();
          CDLogics().eject(context, ipAddress);
        },
      ),
      WebmanModel(
        icon: Icons.install_desktop_outlined,
        title: AppStrings().game.mount,
        subtitle: AppStrings().game.subMount,
        onTap: (context) {
          String ipAddress = ipController.text.trim();
          GameLogics().mountByText(context, ipAddress);
        },
      ),
      // Browser
      WebmanModel(
        icon: Icons.wifi_outlined,
        title: AppStrings().misc.browser,
        subtitle: AppStrings().misc.subBrowser,
        onTap: (context) {
          String ipAddress = ipController.text.trim();
          final TextEditingController urlController = TextEditingController();
          inputDialog(
              context,
              ipAddress,
              urlController,
              () => BrowserLogics().redirectTo(context, ipAddress, urlController.text.trim()),
              'Open Browser',
              "Enter the URL without 'https://www.'",
              'e.g. google.com');
        },
      ),
      // Miscllaneous
    ];
  }
}
