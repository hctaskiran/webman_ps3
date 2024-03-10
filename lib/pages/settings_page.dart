import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webman_ps3/components/settings/application_settings_widgets/about_app.dart';
import 'package:webman_ps3/components/settings/application_settings_widgets/faq.dart';
import 'package:webman_ps3/components/settings/system_settings.dart';
import 'package:webman_ps3/components/settings/system_settings_widgets/language_widget.dart';
import 'package:webman_ps3/components/settings/system_settings_widgets/theme_switch.dart';
import 'package:webman_ps3/constants/strings.dart';
import 'package:webman_ps3/extension/align.dart';
import 'package:webman_ps3/extension/padding.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final TextEditingController ipController = TextEditingController();
  late SharedPreferences _prefs;
  late String _savedIPAddress;

  @override
  void initState() {
    super.initState();
    _initPreferences();
  }

  Future<void> _initPreferences() async {
    _prefs = await SharedPreferences.getInstance();
    _savedIPAddress = _prefs.getString('ipAddress') ?? '';
    ipController.text = _savedIPAddress;
  }

  Future<void> _saveIPAddress(String ipAddress) async {
    await _prefs.setString('ipAddress', ipAddress);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppStrings().settings.title)),
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('IP Settings', style: Theme.of(context).textTheme.titleLarge)
                .onlyPadding(0, 0, 20, 0)
                .alignment(Alignment.centerLeft),
            SettingsWidget(
              children: [
                ListTile(
                  splashColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  leading: const Icon(Ionicons.wifi),
                  title: const Text('IP Address'),
                  subtitle: const Text('Configure the IP address of the PS3'),
                  onTap: () => showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('IP Address'),
                      content: TextFormField(
                        controller: ipController,
                        decoration: const InputDecoration(hintText: 'Enter IP Address'),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () {
                            _saveIPAddress(ipController.text);
                            Navigator.pop(context);
                          },
                          child: const Text('Save'),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
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
      ),
    );
  }
}
