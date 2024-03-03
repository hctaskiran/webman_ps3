import 'package:flutter/material.dart';
import 'package:webman_ps3/logic/joystick_logic.dart';

class AnalogLogic {
  Offset position = const Offset(0, 0);
  double knobRadius = 20;
  void analogGesture(BuildContext context, String analog, Offset position, double knobRadius) {
    double dx = position.dx;
    double dy = position.dy;

    if (dx.abs() > dy.abs()) {
      if (dx < -knobRadius) {
        JoystickLogic().analogButtons(context, '192.168.88.9', '${analog}_left');
      } else if (dx > knobRadius) {
        JoystickLogic().analogButtons(context, '192.168.88.9', '${analog}_right');
      }
    } else {
      if (dy < -knobRadius) {
        JoystickLogic().analogButtons(context, '192.168.88.9', '${analog}_up');
      } else if (dy > knobRadius) {
        JoystickLogic().analogButtons(context, '192.168.88.9', '${analog}_down');
      }
    }
  }
}
