// ignore_for_file: avoid_print, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webman_ps3/extension/snack.dart';

class GameLogics {
  late SharedPreferences prefs;
  late String? ipAddress = prefs.getString('ipAddress');
  Future<void> exit(BuildContext context, String ipAddress) async {
    try {
      final uri = Uri.http(ipAddress, '/xmb.ps3\$exit');
      final response = await http.get(uri);
      response.statusCode == 200 ? print('exit done') : print('exit failed');
    } catch (e) {
      context.sneckBar('exit failed', 2, Colors.red[700]);
    }
  }

  Future<void> reload(BuildContext context, String ipAddress) async {
    try {
      final uri = Uri.http(ipAddress, '/xmb.ps3\$reloadgame');
      final response = await http.get(uri);
      response.statusCode == 200 ? print('reload done') : print('reload failed');
    } catch (e) {
      context.sneckBar('reload failed', 2, Colors.red[700]);
    }
  }

  Future<void> rescan(BuildContext context, String ipAddress) async {
    try {
      final uri = Uri.http(ipAddress, '/index.ps3?launchpad');
      final response = await http.get(uri);
      response.statusCode == 200 ? print('Rescan done!') : print('Rescan failed');
    } catch (e) {
      context.sneckBar('Rescan failed', 2, Colors.red[700]);
    }
  }

  Future<void> mountByText(BuildContext context, String ipAddress) async {
    try {
      final uri = Uri.http(ipAddress, '/mount.ps3?');
      final response = await http.get(uri);
      response.statusCode == 200 ? print('Rescan done!') : print('Rescan failed');
    } catch (e) {
      context.sneckBar('Rescan failed', 2, Colors.red[700]);
    }
  }
}
