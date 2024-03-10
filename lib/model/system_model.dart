// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:webman_ps3/constants/strings.dart';
import 'package:webman_ps3/logic/system_logics.dart';

class SystemModel {
  final IconData icon;
  final String title;
  final String subtitle;
  final void Function(BuildContext) onTap;

  SystemModel({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });
}

class SystemTile {
  SystemTile();
  final TextEditingController ipController = TextEditingController();
  final TextEditingController urlController = TextEditingController();

  List<SystemModel> get system {
    return [
      SystemModel(
        icon: Icons.close,
        title: AppStrings().system.shutdown,
        subtitle: AppStrings().system.subShutdown,
        onTap: (context) async {
          SystemLogics().shutdown(context);
        },
      ),
      SystemModel(
        icon: Icons.restart_alt_outlined,
        title: AppStrings().system.reboot,
        subtitle: AppStrings().system.subReboot,
        onTap: (context) async {
          SystemLogics().reboot(context);
        },
      ),
    ];
  }
}
