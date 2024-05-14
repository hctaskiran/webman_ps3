import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:webman_ps3/core/enum/translations_enum.dart';
import 'package:webman_ps3/logic/fan_logics.dart';
import 'package:webman_ps3/model/system_model.dart';

class SystemCommands extends StatefulWidget {
  const SystemCommands({super.key});

  @override
  State<SystemCommands> createState() => _SystemCommandsState();
}

class _SystemCommandsState extends State<SystemCommands> {
  final TextEditingController ipController = TextEditingController();
  final TextEditingController urlController = TextEditingController();
  // Translations locale = Translations(AppStrings());
  final List<SystemModel> system = SystemTile().system;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: system.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(system[index].icon),
                    titleTextStyle: const TextStyle(fontSize: 18),
                    title: Text(system[index].title),
                    subtitle: Text(system[index].subtitle),
                    subtitleTextStyle: const TextStyle(fontSize: 12),
                    onTap: () {
                      system[index].onTap(context);
                    },
                  );
                },
              ),
              ExpansionTile(
                leading: const FaIcon(FontAwesomeIcons.fan),
                title: Text(
                  Translations().FAN_SETTINGS_TITLE,
                  style: const TextStyle(fontSize: 18),
                ),
                subtitle: Text(
                  Translations().FAN_SETTINGS_DESC,
                  style: const TextStyle(fontSize: 12),
                ),
                children: [
                  ListTile(
                    onTap: () => FanLogics().sysconMode(context),
                    title: const Text('Syscon'),
                    subtitle: const Text('Set the fan speed to the default'),
                    subtitleTextStyle: const TextStyle(fontSize: 13),
                  ),
                  ListTile(
                    onTap: () => FanLogics().dynamicMode(context),
                    title: const Text('Dynamic'),
                    subtitle: const Text('Automatically adjust the fan speed based on the console temperature'),
                    subtitleTextStyle: const TextStyle(fontSize: 13),
                  ),
                  ListTile(
                    onTap: () => FanLogics().manualMode(context),
                    title: const Text('Manual'),
                    subtitle: const Text('Manually adjust the fan speed'),
                    subtitleTextStyle: const TextStyle(fontSize: 13),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        color: Colors.red,
                        onPressed: () => FanLogics().fanOrTempDown(context),
                        icon: const FaIcon(FontAwesomeIcons.angleLeft),
                      ),
                      const Text('Adjust temperature / fan speed'),
                      IconButton(
                        color: Colors.green,
                        onPressed: () => FanLogics().fanOrTempUp(context),
                        icon: const FaIcon(FontAwesomeIcons.angleRight),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
