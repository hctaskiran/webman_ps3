import 'package:flutter/material.dart';

class DPAD extends StatefulWidget {
  const DPAD({
    super.key,
    required this.icon,
    this.onPressed,
  });

  final void Function()? onPressed;
  final Widget icon;

  @override
  State<DPAD> createState() => _DPADState();
}

class _DPADState extends State<DPAD> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: widget.onPressed,
      icon: widget.icon,
    );
  }
}
