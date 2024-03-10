// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webman_ps3/constants/strings.dart';
import 'package:webman_ps3/extension/snack.dart';

class BrowserLogics {
  Future<void> redirectTo(BuildContext context, String url) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String ipAddress = prefs.getString('ipAddress')!;
    final uri = Uri.http(ipAddress, '/browser.ps3?https://www.$url');
    final response = await http.get(uri);

    try {
      response.statusCode == 200
          ? context.sneckBar(AppStrings().logic.redirectDone, Colors.purple[700])
          : context.sneckBar(AppStrings().logic.redirectFailed, Colors.red[700]);
    } catch (e) {
      context.sneckBar(AppStrings().logic.redirectFailed, Colors.red[700]);
    }
  }
}
