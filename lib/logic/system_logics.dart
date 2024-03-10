// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webman_ps3/constants/strings.dart';
import 'package:webman_ps3/extension/snack.dart';

class SystemLogics {
  /* Future<void> restart(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String ipAddress = prefs.getString('ipAddress')!;
    try {
      final uri = Uri.http(ipAddress, '/restart.ps3');
      final response = await http.get(uri);
      response.statusCode == 200
          ? context.sneckBar('Restart successful', Colors.purple[700])
          : context.sneckBar(
             AppStrings().logic.rebootFailed, Colors.red[700]);
    } catch (e) {
      context.sneckBar(
         AppStrings().logic.rebootFailed, Colors.red[700]);
    }
  } */

  Future<void> shutdown(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String ipAddress = prefs.getString('ipAddress')!;
    try {
      final uri = Uri.http(ipAddress, '/shutdown.ps3');
      final response = await http.get(uri);
      response.statusCode == 200
          ? context.sneckBar(AppStrings().logic.shutdownDone, Colors.purple[700])
          : context.sneckBar(AppStrings().logic.shutdownFailed, Colors.red[700]);
    } catch (e) {
      context.sneckBar(AppStrings().logic.shutdownFailed, Colors.red[700]);
    }
  }

  Future<void> reboot(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String ipAddress = prefs.getString('ipAddress')!;
    try {
      final uri = Uri.http(ipAddress, '/reboot.ps3', {'soft': ''});
      final response = await http.get(uri);
      response.statusCode == 200
          ? context.sneckBar(AppStrings().logic.rebootDone, Colors.purple[700])
          : context.sneckBar(AppStrings().logic.rebootFailed, Colors.red[700]);
    } catch (e) {
      context.sneckBar(AppStrings().logic.rebootFailed, Colors.red[700]);
    }
  }

  Future<void> beep(BuildContext context, int number) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String ipAddress = prefs.getString('ipAddress')!;
    try {
      final uri = Uri.http(ipAddress, '/beep.ps3?$number');
      final response = await http.get(uri);
      response.statusCode == 200
          ? context.sneckBar('Sounds good, doesn\'t it?', Colors.purple[700])
          : context.sneckBar('BEEP!', Colors.red[700]);
    } catch (e) {
      context.sneckBar('BEEP!', Colors.red[700]);
    }
  }
}
