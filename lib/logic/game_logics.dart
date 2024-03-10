// ignore_for_file: avoid_print, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webman_ps3/constants/strings.dart';
import 'package:webman_ps3/extension/snack.dart';

class GameLogics {
  Future<void> exit(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String ipAddress = prefs.getString('ipAddress')!;
    try {
      final uri = Uri.http(ipAddress, '/xmb.ps3\$exit');
      final response = await http.get(uri);
      response.statusCode == 200
          ? context.sneckBar(AppStrings().logic.gameExit, Colors.green[700])
          : context.sneckBar(AppStrings().logic.gameExitFailed, Colors.red[700]);
    } catch (e) {
      context.sneckBar(AppStrings().logic.gameExitFailed, Colors.red[700]);
    }
  }

  Future<void> reload(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String ipAddress = prefs.getString('ipAddress')!;
    final uri = Uri.http(ipAddress, '/xmb.ps3\$reloadgame');
    final response = await http.get(uri);

    try {
      response.statusCode == 200
          ? context.sneckBar(AppStrings().logic.gameReloadDone, Colors.green[700])
          : context.sneckBar(AppStrings().logic.gameReloadFailed, Colors.red[700]);
    } catch (e) {
      context.sneckBar(AppStrings().logic.gameReloadFailed, Colors.red[700]);
    }
  }

  Future<void> rescan(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String ipAddress = prefs.getString('ipAddress')!;
    final uri = Uri.http(ipAddress, '/index.ps3?launchpad');
    final response = await http.get(uri);

    try {
      response.statusCode == 200
          ? context.sneckBar(AppStrings().logic.gameRescanDone, Colors.green[700])
          : context.sneckBar(AppStrings().logic.gameRescanFailed, Colors.red[700]);
    } catch (e) {
      context.sneckBar(AppStrings().logic.gameRescanFailed, Colors.red[700]);
    }
  }

  Future<void> mountSearch(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String ipAddress = prefs.getString('ipAddress')!;
    final uri = Uri.http(ipAddress, '/mount.ps3?black');
    final response = await http.get(uri);

    try {
      response.statusCode == 200
          ? context.sneckBar(AppStrings().logic.gameRescanDone, Colors.green[700])
          : context.sneckBar(AppStrings().logic.gameRescanFailed, Colors.red[700]);
    } catch (e) {
      context.sneckBar(AppStrings().logic.gameRescanFailed, Colors.red[700]);
    }
  }

  // Future<void> mountByText(BuildContext context) async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //         String ipAddress = prefs.getString('ipAddress')!;

  //   final uri = Uri.http(ipAddress, '/mount.ps3?');
  //   final response = await http.get(uri);

  //   try {
  //     response.statusCode == 200
  //         ? context.sneckBar('Game mounted', Colors.green[700])
  //         : context.sneckBar('Mount failed, try again or check for \'troubleshooting\'.', Colors.red[700]);
  //   } catch (e) {
  //     context.sneckBar(AppStrings().logic.gameRescanFailed, Colors.red[700]);
  //   }
  // }
}
