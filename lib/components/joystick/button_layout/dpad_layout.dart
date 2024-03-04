import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:webman_ps3/components/joystick/button_widgets/dpad_button.dart';
import 'package:webman_ps3/extension/padding.dart';
import 'package:webman_ps3/logic/joystick_logic.dart';

class DpadButtonLayout extends StatelessWidget {
  DpadButtonLayout({
    super.key,
  });

  final List _dPadIcons = [
    const Icon(Ionicons.arrow_up_circle),
    const Icon(Ionicons.arrow_down_circle),
    const Icon(Ionicons.arrow_back_circle),
    const Icon(Ionicons.arrow_forward_circle),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DPAD(onPressed: () => JoystickLogic().dPad(context, 'up'), icon: _dPadIcons[0]).onlyPadding(0, 0, 70, 0),
        DPAD(onPressed: () => JoystickLogic().dPad(context, 'down'), icon: _dPadIcons[1]).onlyPadding(100, 0, 70, 0),
        DPAD(onPressed: () => JoystickLogic().dPad(context, 'left'), icon: _dPadIcons[2]).onlyPadding(50, 0, 10, 0),
        DPAD(onPressed: () => JoystickLogic().dPad(context, 'right'), icon: _dPadIcons[3]).onlyPadding(50, 0, 130, 0),
      ],
    );
  }
}
