import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webman_ps3/logic/joystick_logic.dart';

class AnalogLogic {
  Offset position = const Offset(0, 0);
  double knobRadius = 20;
  Future<void> analogGesture(BuildContext context, String analog, Offset position, double knobRadius) async {
    double dx = position.dx;
    double dy = position.dy;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String getIp = prefs.getString('ipAddress') ?? '';
    String ipAddress = getIp;

    if (dx.abs() > dy.abs()) {
      if (dx < -knobRadius) {
        JoystickLogic().analogButtons(context, ipAddress, '${analog}_left');
      } else if (dx > knobRadius) {
        JoystickLogic().analogButtons(context, ipAddress, '${analog}_right');
      }
    } else {
      if (dy < -knobRadius) {
        JoystickLogic().analogButtons(context, ipAddress, '${analog}_up');
      } else if (dy > knobRadius) {
        JoystickLogic().analogButtons(context, ipAddress, '${analog}_down');
      }
    }
  }
}
