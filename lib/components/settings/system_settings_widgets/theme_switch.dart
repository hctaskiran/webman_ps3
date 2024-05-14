import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webman_ps3/bloc/theme_bloc.dart';
import 'package:webman_ps3/bloc/theme_event.dart';
import 'package:webman_ps3/core/enum/translations_enum.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeData>(
      builder: (context, themeData) {
        return ListTile(
          title: Text(Translations().THEME, style: const TextStyle(fontSize: 18)),
          leading: const Icon(Icons.palette_outlined),
          subtitle: Text(
              themeData == ThemeData.dark() ? Translations().THEME_DARK : Translations().THEME_LIGHT,
              style: const TextStyle(fontSize: 12)),
          trailing: CupertinoSwitch(
            value: themeData == ThemeData.dark(),
            onChanged: (bool val) {
              context.read<ThemeBloc>().add(ThemeSwitchEvent());
            },
          ),
        );
      },
    );
  }
}
