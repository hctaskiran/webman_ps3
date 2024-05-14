import 'package:flutter/material.dart';
import 'package:webman_ps3/core/enum/translations_enum.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.info_outline),
      title: Text(Translations().ABOUT_APP, style: const TextStyle(fontSize: 18)),
      subtitle: Text(Translations().ABOUT_APP_DESC, style: const TextStyle(fontSize: 12)),
      onTap: () => showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: const Text('Webman PS3 Mobile'),
              content: RichText(
                  text: TextSpan(
                text: Translations().ABOUT_APP_CONTENT,
              )));
        },
      ),
    );
  }
}
