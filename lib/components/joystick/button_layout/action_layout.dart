import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:webman_ps3/components/joystick/button_widgets/action_buttons.dart';
import 'package:webman_ps3/extension/padding.dart';
import 'package:webman_ps3/logic/joystick_logic.dart';

class ActionButtonLayout extends StatelessWidget {
  ActionButtonLayout({
    super.key,
    required this.ip,
  });

  final String ip;

  final List _actionButtons = [
    const Icon(Ionicons.triangle_outline),
    const Icon(Ionicons.logo_xbox),
    const Icon(Ionicons.square_outline),
    const Icon(Ionicons.help_circle_outline),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ActionButtons(onPressed: () => JoystickLogic().action(context, ip, 'triangle'), icon: _actionButtons[0])
            .onlyPadding(0, 0, 70, 0),
        ActionButtons(onPressed: () => JoystickLogic().action(context, ip, 'cross'), icon: _actionButtons[1])
            .onlyPadding(100, 0, 70, 0),
        ActionButtons(onPressed: () => JoystickLogic().action(context, ip, 'square'), icon: _actionButtons[2])
            .onlyPadding(50, 0, 10, 0),
        ActionButtons(onPressed: () => JoystickLogic().action(context, ip, 'circle'), icon: _actionButtons[3])
            .onlyPadding(50, 0, 130, 0),
      ],
    );
  }
}
