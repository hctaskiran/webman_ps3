import 'package:flutter/material.dart';
import 'package:webman_ps3/components/joystick/button_layout/action_layout.dart';
import 'package:webman_ps3/components/joystick/button_layout/dpad_layout.dart';
import 'package:webman_ps3/components/joystick/button_layout/mid_layout.dart';
import 'package:webman_ps3/components/joystick/button_widgets/analogL_buttons.dart';
import 'package:webman_ps3/components/joystick/button_widgets/analogR_buttons.dart';
import 'package:webman_ps3/constants/strings.dart';
import 'package:webman_ps3/extension/padding.dart';

class ControllerPage extends StatefulWidget {
  const ControllerPage({super.key});

  @override
  State<ControllerPage> createState() => _ControllerPageState();
}

class _ControllerPageState extends State<ControllerPage> {
  @override
  Widget build(BuildContext context) {
    const String ip = '192.168.88.9';
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return Center(child: Text(AppStrings().controller.rotate));
        } else {
          return Scaffold(
            body: Column(
              children: [
                Row(
                  children: [
                    DpadButtonLayout(ip: ip).onlyPadding(20, 0, 70, 0),
                    const MidButtonLayout(ip: ip).onlyPadding(70, 0, 60, 0),
                    ActionButtonLayout(ip: ip).onlyPadding(20, 0, 60, 0),
                  ],
                ),
                const SizedBox(height: 40),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AnalogL(),
                    AnalogR(),
                  ],
                ).symetricPadding(20, 0)
              ],
            ),
          );
        }
      },
    );
  }
}
