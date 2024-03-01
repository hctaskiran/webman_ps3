// ignore_for_file: avoid_print, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:webman_ps3/extension/snack.dart';

class GameLogics {
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
      final uri = Uri.http(ipAddress, '/mount.ps3?san%20andreas');
      final response = await http.get(uri);
      response.statusCode == 200 ? print('Rescan done!') : print('Rescan failed');
    } catch (e) {
      context.sneckBar('Rescan failed', 2, Colors.red[700]);
    }
  }

  Future<void> searchAndPlay(BuildContext context, String ipAddress) async {
    try {
      final uri = Uri.http(ipAddress, '/play.ps3?grand%20theft%20auto%20san%20andreas');
      final response = await http.get(uri);
      response.statusCode == 200 ? print('Game launched!') : print('Launch failed');
    } catch (e) {
      context.sneckBar('Launch failed', 2, Colors.red[700]);
    }
  }
}
