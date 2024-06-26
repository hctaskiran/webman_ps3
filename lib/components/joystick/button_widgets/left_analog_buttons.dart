// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:webman_ps3/logic/analog_logic.dart';

class AnalogL extends StatefulWidget {
  const AnalogL({super.key});

  @override
  _AnalogLState createState() => _AnalogLState();
}

class _AnalogLState extends State<AnalogL> {
  Offset position = const Offset(0, 0);
  double knobRadius = 20;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
        setState(() {
          position += details.delta;
          AnalogLogic().analogGesture(context, 'analogL', position, knobRadius);
        });
      },
      onPanEnd: (details) {
        setState(() {
          position = const Offset(0, 0);
        });
      },
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Transform.translate(
            offset: position,
            child: Container(
              width: knobRadius * 2,
              height: knobRadius * 2,
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(knobRadius),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
