import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webman_ps3/constants/strings.dart';
import 'package:webman_ps3/extension/snack.dart';

class JoystickLogic {
  Future<void> dPad(BuildContext context, String button) async {
    final String ipAddress;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String getIp = prefs.getString('ipAddress') ?? '';
    ipAddress = getIp;

    try {
      final uri = Uri.http(ipAddress, '/pad.ps3?$button');
      final response = await http.get(uri);
      response.statusCode == 200
          ? print('$button tapped')
          : context.sneckBar(AppStrings().logic.joystickFailed, Colors.red[700]);
    } catch (e) {
      context.sneckBar(AppStrings().logic.joystickFailed, Colors.red[700]);
    }
  }

  Future<void> action(BuildContext context, String button) async {
    final String ipAddress;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String getIp = prefs.getString('ipAddress') ?? '';
    ipAddress = getIp;

    try {
      final uri = Uri.http(ipAddress, '/pad.ps3?$button');
      final response = await http.get(uri);
      response.statusCode == 200
          ? print('$button tapped')
          : context.sneckBar(AppStrings().logic.joystickFailed, Colors.red[700]);
    } catch (e) {
      context.sneckBar(AppStrings().logic.joystickFailed, Colors.red[700]);
    }
  }

  Future<void> midButtons(BuildContext context, String button) async {
    final String ipAddress;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String getIp = prefs.getString('ipAddress') ?? '';
    ipAddress = getIp;

    try {
      final uri = Uri.http(ipAddress, '/pad.ps3?$button');
      final response = await http.get(uri);
      response.statusCode == 200
          ? print('$button tapped')
          : context.sneckBar(AppStrings().logic.joystickFailed, Colors.red[700]);
    } catch (e) {
      context.sneckBar(AppStrings().logic.joystickFailed, Colors.red[700]);
    }
  }

  Future<void> analogButtons(BuildContext context, String? ipAddress, String button) async {
    final String ipAddress;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String getIp = prefs.getString('ipAddress') ?? '';
    ipAddress = getIp;

    try {
      final uri = Uri.http(ipAddress, '/pad.ps3?$button');
      final response = await http.get(uri);
      response.statusCode == 200
          ? print('$button tapped')
          : context.sneckBar(AppStrings().logic.joystickFailed, Colors.red[700]);
    } catch (e) {
      context.sneckBar(AppStrings().logic.joystickFailed, Colors.red[700]);
    }
  }
}
