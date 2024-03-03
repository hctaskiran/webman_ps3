// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webman_ps3/extension/padding.dart';
import 'package:webman_ps3/theme/theme_mods/bloc/theme_bloc.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({
    super.key,
    required this.children,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeData>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: state == ThemeData.dark() ? const Color.fromRGBO(27, 55, 44, 100) : Colors.grey[500],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(children: children),
        );
      },
    ).symetricPadding(0, 10);
  }
}
