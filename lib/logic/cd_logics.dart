// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webman_ps3/constants/strings.dart';
import 'package:webman_ps3/extension/snack.dart';

class CDLogics {
  Future<void> eject(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String ipAddress = prefs.getString('ipAddress')!;
    final uri = Uri.http(ipAddress, '/extgd.ps3?status');
    final response = await http.get(uri);

    try {
      response.statusCode == 200
          ? context.sneckBar(AppStrings().logic.cdEjectDone, Colors.purple[700])
          : context.sneckBar(AppStrings().logic.cdEjectFailed, Colors.red[700]);
    } catch (e) {
      context.sneckBar(AppStrings().logic.cdEjectFailed, Colors.red[700]);
    }
  }
}
