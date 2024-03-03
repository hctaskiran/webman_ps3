import 'package:flutter/material.dart';
import 'package:webman_ps3/components/settings/application_settings_widgets/about_app.dart';
import 'package:webman_ps3/components/settings/application_settings_widgets/faq.dart';
import 'package:webman_ps3/components/settings/system_settings.dart';
import 'package:webman_ps3/components/settings/system_settings_widgets/language_widget.dart';
import 'package:webman_ps3/components/settings/system_settings_widgets/theme_switch.dart';
import 'package:webman_ps3/constants/strings.dart';
import 'package:webman_ps3/extension/align.dart';
import 'package:webman_ps3/extension/padding.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            AppStrings().settings.systemSettings,
            style: Theme.of(context).textTheme.titleLarge,
          ).onlyPadding(0, 0, 20, 0).alignment(Alignment.centerLeft),
          const Column(
            children: [
              SettingsWidget(
                children: [
                  ThemeSwitch(),
                  LanguageWidget(),
                ],
              ),
            ],
          ),
          Text(
            AppStrings().settings.appSettings,
            style: Theme.of(context).textTheme.titleLarge,
          ).onlyPadding(0, 0, 20, 0).alignment(Alignment.centerLeft),
          const SettingsWidget(
            children: [
              FAQ(),
              AboutApp(),
            ],
          )
        ],
      ),
    );
  }
}
