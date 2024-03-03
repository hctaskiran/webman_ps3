import 'package:flutter/material.dart';
import 'package:webman_ps3/constants/strings.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.info_outline),
      title: Text(AppStrings().settings.aboutApp, style: const TextStyle(fontSize: 18)),
      subtitle: Text(AppStrings().settings.subAboutApp, style: const TextStyle(fontSize: 12)),
      onTap: () => showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: const Text('Webman PS3 Mobile'),
              content: RichText(
                  text: TextSpan(
                text: AppStrings().settings.aboutAppDialog,
              )));
        },
      ),
    );
  }
}
