import 'package:flutter/material.dart';

class MidButtons extends StatefulWidget {
  const MidButtons({super.key, required this.onTap, required this.text, this.onLongPress});

  final void Function()? onTap;
  final void Function()? onLongPress;
  final String text;
  @override
  State<MidButtons> createState() => _MidButtonsState();
}

class _MidButtonsState extends State<MidButtons> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      onLongPress: widget.onLongPress,
      child: Container(
        height: 20,
        width: 70,
        decoration: BoxDecoration(
          color: Colors.grey[700],
        ),
        child: Text(
          widget.text,
          style: const TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
