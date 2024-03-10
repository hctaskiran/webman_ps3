import 'package:flutter/material.dart';

extension SnackExt on BuildContext {
  void sneckBar(String message, Color? backgroundColor) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
        backgroundColor: backgroundColor,
      ),
    );
  }
}
