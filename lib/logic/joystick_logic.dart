import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:webman_ps3/extension/snack.dart';

class JoystickLogic {
  Future<void> dPad(BuildContext context, String ipAddress, String button) async {
    try {
      final uri = Uri.http(ipAddress, '/pad.ps3?$button');
      final response = await http.get(uri);
      response.statusCode == 200 ? print('$button tapped') : print('$button failed');
    } catch (e) {
      context.sneckBar('Tap failed', 2, Colors.red[700]);
    }
  }

  Future<void> action(BuildContext context, String ipAddress, String button) async {
    try {
      final uri = Uri.http(ipAddress, '/pad.ps3?$button');
      final response = await http.get(uri);
      response.statusCode == 200 ? print('$button tapped') : print('$button failed');
    } catch (e) {
      context.sneckBar('Tap failed', 2, Colors.red[700]);
    }
  }

  Future<void> midButtons(BuildContext context, String ipAddress, String button) async {
    try {
      final uri = Uri.http(ipAddress, '/pad.ps3?$button');
      final response = await http.get(uri);
      response.statusCode == 200 ? print('$button tapped') : print('$button failed');
    } catch (e) {
      context.sneckBar('Tap failed', 2, Colors.red[700]);
    }
  }

  Future<void> analogButtons(BuildContext context, String ipAddress, String button) async {
    try {
      final uri = Uri.http(ipAddress, '/pad.ps3?$button');
      final response = await http.get(uri);
      response.statusCode == 200 ? print('$button tapped') : print('$button failed');
    } catch (e) {
      context.sneckBar('Tap failed', 2, Colors.red[700]);
    }
  }
}
