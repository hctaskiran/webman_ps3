import 'package:flutter/material.dart';
import 'package:webman_ps3/components/joystick/button_widgets/mid_buttons.dart';
import 'package:webman_ps3/extension/padding.dart';
import 'package:webman_ps3/logic/joystick_logic.dart';

class MidButtonLayout extends StatelessWidget {
  const MidButtonLayout({
    super.key,
    required this.ip,
  });

  final String ip;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MidButtons(text: 'Select', onTap: () => JoystickLogic().midButtons(context, ip, 'select')),
        MidButtons(text: 'PS', onTap: () => JoystickLogic().midButtons(context, ip, 'psbtn'))
            .onlyPadding(50, 0, 100, 0),
        MidButtons(text: 'Start', onTap: () => JoystickLogic().midButtons(context, ip, 'start'))
            .onlyPadding(0, 0, 200, 0),
      ],
    );
  }
}
