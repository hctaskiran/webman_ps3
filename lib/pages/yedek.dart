import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:webman_ps3/components/joystick/action_buttons.dart';
import 'package:webman_ps3/components/joystick/dpad_button.dart';
import 'package:webman_ps3/components/joystick/mid_buttons.dart';
import 'package:webman_ps3/extension/padding.dart';
import 'package:webman_ps3/logic/joystick_logic.dart';

class TestYedek extends StatefulWidget {
  const TestYedek({super.key});

  @override
  State<TestYedek> createState() => _TestYedekState();
}

class _TestYedekState extends State<TestYedek> {
  List dPadIcons = [
    const Icon(Ionicons.arrow_up_circle),
    const Icon(Ionicons.arrow_down_circle),
    const Icon(Ionicons.arrow_back_circle),
    const Icon(Ionicons.arrow_forward_circle),
  ];

  @override
  Widget build(BuildContext context) {
    const String ip = '192.168.88.9';
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return const Center(child: Text('Rotate the device in order to use the controller'));
        } else {
          return SafeArea(
            child: Scaffold(
              body: Stack(
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
                  ).symetricPadding(0, 20),
                  MidButtons(text: 'Select', onTap: () => JoystickLogic().midButtons(context, ip, 'select'))
                      .onlyPadding(60, 0, 240, 0),
                  MidButtons(
                      text: 'PS',
                      onTap: () => JoystickLogic().midButtons(context, ip, 'psbtn'),
                      onLongPress: () => JoystickLogic().midButtons(context, ip, 'psbtn')).onlyPadding(120, 0, 350, 0),
                  MidButtons(text: 'Start', onTap: () => JoystickLogic().midButtons(context, ip, 'start'))
                      .onlyPadding(60, 0, 450, 0),
                  Stack(
                    children: [
                      IconButton(
                        onPressed: () => JoystickLogic().dPad(context, ip, 'up'),
                        icon: const Icon(Ionicons.triangle_outline),
                      ).onlyPadding(0, 0, 70, 0),
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
                          .onlyPadding(50, 0, 130, 0)
                    ],
                  ).symetricPadding(600, 20)
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
