// ignore_for_file: avoid_print, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:webman_ps3/extension/snack.dart';

class MiscLogic {
  Future<void> nextTheme(BuildContext context, String ipAddress) async {
    try {
      final uri = Uri.http(ipAddress, '/theme.ps3?next');
      final response = await http.get(uri);
      response.statusCode == 200 ? print('reload done') : print('reload failed');
    } catch (e) {
      context.sneckBar('reload failed', 2, Colors.red[700]);
    }
  }

  Future<void> prevTheme(BuildContext context, String ipAddress) async {
    try {
      final uri = Uri.http(ipAddress, '/theme.ps3?next');
      final response = await http.get(uri);
      response.statusCode == 200 ? print('reload done') : print('reload failed');
    } catch (e) {
      context.sneckBar('reload failed', 2, Colors.red[700]);
    }
  }

  Future<void> nextIcon(BuildContext context, String ipAddress) async {
    try {
      final uri = Uri.http(ipAddress, '/wallpaper.ps3?next');
      final response = await http.get(uri);
      response.statusCode == 200 ? print('reload done') : print('reload failed');
    } catch (e) {
      context.sneckBar('reload failed', 2, Colors.red[700]);
    }
  }

  Future<void> prevIcon(BuildContext context, String ipAddress) async {
    try {
      final uri = Uri.http(ipAddress, '/browser.ps3/cpursx.ps3 ');
      final response = await http.get(uri);
      response.statusCode == 200 ? print('reload done') : print('reload failed');
    } catch (e) {
      context.sneckBar('reload failed', 2, Colors.red[700]);
    }
  }
}
