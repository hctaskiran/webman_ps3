// ignore_for_file: use_build_context_synchronously

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:webman_ps3/components/bottom_navigation_bar.dart';
import 'package:webman_ps3/core/enum/language_enum.dart';
import 'package:webman_ps3/core/enum/translations_enum.dart';
import 'package:webman_ps3/theme/anim/fade_anim.dart';

class LanguageWidget extends StatefulWidget {
  const LanguageWidget({
    super.key,
  });

  @override
  State<LanguageWidget> createState() => _LanguageWidgetState();
}

Future<dynamic> _changeLanguage(Languages save, Languages toLocale, BuildContext context, Widget page) async {
  await save.saveLocale();
  context.setLocale(toLocale.toLocale());
  Navigator.pushReplacement(context, FadeAnim(page: page));
}

class _LanguageWidgetState extends State<LanguageWidget> {
  @override
  Widget build(BuildContext context) {
    String currentLanguage = context.locale.toLanguageTag();
    return ExpansionTile(
      enableFeedback: false,
      leading: const Icon(Icons.language),
      title: Text(Translations().LANGUAGE, style: const TextStyle(fontSize: 18)),
      subtitle: Text(Translations().LANGUAGE_DESC, style: const TextStyle(fontSize: 12)),
      children: [
        ListTile(
          title: Row(
            children: [
              const Text('🇹🇷 Türkçe'),
              Icon(Icons.check,
                  color: currentLanguage == Languages.turkish.toLocale().toLanguageTag()
                      ? Colors.green
                      : Colors.transparent),
            ],
          ),
          onTap: () async {
            _changeLanguage(
              Languages.turkish,
              Languages.turkish,
              context,
              const BottomNavBar(),
            );
          },
        ),
        ListTile(
          title: Row(
            children: [
              const Text('🇷🇺 Русский'),
              Icon(Icons.check,
                  color: currentLanguage == Languages.russian.toLocale().toLanguageTag()
                      ? Colors.green
                      : Colors.transparent),
            ],
          ),
          onTap: () async {
            await Languages.russian.saveLocale();
            context.setLocale(Languages.russian.toLocale());
            Navigator.pushReplacement(context, FadeAnim(page: const BottomNavBar()));
          },
        ),
        ListTile(
          title: const Text('🇬🇧 English'),
          onTap: () async {
            await Languages.english.saveLocale();
            context.setLocale(Languages.english.toLocale());
            Navigator.pushReplacement(context, FadeAnim(page: const BottomNavBar()));
          },
        ),
      ],
    );
  }
}
