import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:webman_ps3/components/joystick/action_buttons.dart';
import 'package:webman_ps3/components/joystick/dpad_button.dart';
import 'package:webman_ps3/components/joystick/mid_buttons.dart';
import 'package:webman_ps3/extension/padding.dart';
import 'package:webman_ps3/logic/joystick_logic.dart';

class ControllerPage extends StatefulWidget {
  const ControllerPage({super.key});

  @override
  State<ControllerPage> createState() => _ControllerPageState();
}

class _ControllerPageState extends State<ControllerPage> {
  List dPadIcons = [
    const Icon(Ionicons.arrow_up_circle),
    const Icon(Ionicons.arrow_down_circle),
    const Icon(Ionicons.arrow_back_circle),
    const Icon(Ionicons.arrow_forward_circle),
  ];

  @override
  Widget build(BuildContext context) {
    const String ip = '192.168.88.9';
    return Scaffold(
      body: Row(
        children: [
          Stack(
            children: [
              DPAD(onPressed: () => JoystickLogic().dPad(context, ip, 'up'), icon: dPadIcons[0])
                  .onlyPadding(0, 0, 70, 0),
              DPAD(onPressed: () => JoystickLogic().dPad(context, ip, 'down'), icon: dPadIcons[1])
                  .onlyPadding(100, 0, 70, 0),
              DPAD(onPressed: () => JoystickLogic().dPad(context, ip, 'left'), icon: dPadIcons[2])
                  .onlyPadding(50, 0, 10, 0),
              DPAD(onPressed: () => JoystickLogic().dPad(context, ip, 'right'), icon: dPadIcons[3])
                  .onlyPadding(50, 0, 130, 0),
            ],
          ).onlyPadding(20, 0, 70, 0),
          // const SizedBox(width: 50),
          Stack(
            children: [
              MidButtons(text: 'Select', onTap: () => JoystickLogic().midButtons(context, ip, 'select')),
              MidButtons(text: 'PS', onTap: () => JoystickLogic().midButtons(context, ip, 'psbtn'))
                  .onlyPadding(50, 0, 100, 0),
              MidButtons(text: 'Start', onTap: () => JoystickLogic().midButtons(context, ip, 'start'))
                  .onlyPadding(0, 0, 200, 0),
            ],
          ).onlyPadding(70, 0, 60, 0),
          Stack(
            children: [
              IconButton(
                      onPressed: () => JoystickLogic().dPad(context, ip, 'triangle'),
                      icon: const Icon(Ionicons.triangle_outline))
                  .onlyPadding(0, 0, 70, 0),
              ActionButtons(
                      onPressed: () => JoystickLogic().action(context, ip, 'cross'),
                      icon: const Icon(Ionicons.logo_xbox))
                  .onlyPadding(100, 0, 70, 0),
              ActionButtons(
                      onPressed: () => JoystickLogic().action(context, ip, 'square'),
                      icon: const Icon(Ionicons.square_outline))
                  .onlyPadding(50, 0, 10, 0),
              ActionButtons(
                      onPressed: () => JoystickLogic().action(context, ip, 'circle'),
                      icon: const Icon(Ionicons.help_circle_outline))
                  .onlyPadding(50, 0, 130, 0),
            ],
          ).onlyPadding(20, 0, 60, 0)
        ],
      ),
    );
  }
}
