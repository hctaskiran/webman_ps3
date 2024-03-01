import 'package:flutter/material.dart';

class IPBarLogic {
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (_isValid(newValue.text)) {
      return newValue;
    } else {
      return oldValue;
    }
  }

  bool _isValid(String value) {
    final RegExp ipRegex = RegExp(r'^[\d.]*$');
    return ipRegex.hasMatch(value);
  }
}
