// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:webman_ps3/extension/snack.dart';

class SystemLogics {
  Future<void> restart(BuildContext context, String ipAddress) async {
    try {
      final uri = Uri.http(ipAddress, '/restart.ps3');
      final response = await http.get(uri);
      response.statusCode == 200
          ? context.sneckBar('Restart successful', 2, Colors.purple[700])
          : context.sneckBar(
              'Restart failed, please check your connection to PS or check if HEN is activated.', 2, Colors.red[700]);
    } catch (e) {
      context.sneckBar(
          'Restart failed, please check your connection to PS or check if HEN is activated.', 2, Colors.red[700]);
    }
  }

  Future<void> shutdown(BuildContext context, String ipAddress) async {
    try {
      final uri = Uri.http(ipAddress, '/shutdown.ps3');
      final response = await http.get(uri);
      response.statusCode == 200
          ? context.sneckBar('Shutdown successful', 2, Colors.purple[700])
          : context.sneckBar(
              'Shutdown failed, please check your connection to PS or check if HEN is activated.', 2, Colors.red[700]);
    } catch (e) {
      context.sneckBar(
          'Shutdown failed, please check your connection to PS or check if HEN is activated.', 2, Colors.red[700]);
    }
  }

  Future<void> reboot(BuildContext context, String ipAddress) async {
    try {
      final uri = Uri.http(ipAddress, '/reboot.ps3', {'soft': ''});
      final response = await http.get(uri);
      response.statusCode == 200
          ? context.sneckBar('Reboot successful', 2, Colors.purple[700])
          : context.sneckBar(
              'Reboot failed, please check your connection to PS or check if HEN is activated.', 2, Colors.red[700]);
    } catch (e) {
      context.sneckBar(
          'Reboot failed, please check your connection to PS or check if HEN is activated.', 2, Colors.red[700]);
    }
  }

  Future<void> beep(BuildContext context, String ipAddress, int number) async {
    try {
      final uri = Uri.http(ipAddress, '/beep.ps3?$number');
      final response = await http.get(uri);
      response.statusCode == 200
          ? context.sneckBar('Sounds good, isn\'t it?', 2, Colors.purple[700])
          : context.sneckBar('BEEP!', 2, Colors.red[700]);
    } catch (e) {
      context.sneckBar('BEEP!', 2, Colors.red[700]);
    }
  }
}
