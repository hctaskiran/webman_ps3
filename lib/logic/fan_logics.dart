// ignore_for_file: use_build_context_synchronously, avoid_print

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webman_ps3/constants/strings.dart';
import 'package:webman_ps3/extension/snack.dart';

class FanLogics {
  // set the fan mode to SYSCON
  Future<void> sysconMode(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String ipAddress = prefs.getString('ipAddress')!;
    final uri = Uri.http(ipAddress, '/cpursx.ps3?fan=0');
    final response = await http.get(uri);

    try {
      response.statusCode == 200
          ? context.sneckBar(AppStrings().logic.fanSyscon, Colors.green[700])
          : context.sneckBar(AppStrings().logic.fanFailed, Colors.red[700]);
    } catch (e) {
      context.sneckBar(AppStrings().logic.fanFailed, Colors.red[700]);
    }
  }

  // set the fan mode to dynamic mode
  Future<void> dynamicMode(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String ipAddress = prefs.getString('ipAddress')!;
    final uri = Uri.http(ipAddress, '/cpursx.ps3?mode');
    final response = await http.get(uri);

    try {
      response.statusCode == 200
          ? context.sneckBar(AppStrings().logic.fanDynamic, Colors.green[700])
          : context.sneckBar(AppStrings().logic.fanFailed, Colors.red[700]);
    } catch (e) {
      context.sneckBar(AppStrings().logic.fanFailed, Colors.red[700]);
    }
  }

  // set the fan mode to auto mode
  Future<void> manualMode(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String ipAddress = prefs.getString('ipAddress')!;
    final uri = Uri.http(ipAddress, '/cpursx.ps3?man');
    final response = await http.get(uri);

    try {
      response.statusCode == 200
          ? context.sneckBar(AppStrings().logic.fanAuto, Colors.green[700])
          : context.sneckBar(AppStrings().logic.fanFailed, Colors.red[700]);
    } catch (e) {
      context.sneckBar(AppStrings().logic.fanFailed, Colors.red[700]);
    }
  }

  Future<void> fanOrTempUp(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String ipAddress = prefs.getString('ipAddress')!;
    final uri = Uri.http(ipAddress, '/cpursx.ps3?up');
    final response = await http.get(uri);

    try {
      response.statusCode == 200 ? print('fan temp up') : print('fan temp up failed');
    } catch (e) {
      print('fan temp up failed');
    }
  }

  Future<void> fanOrTempDown(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String ipAddress = prefs.getString('ipAddress')!;
    final uri = Uri.http(ipAddress, '/cpursx.ps3?dn');
    final response = await http.get(uri);

    try {
      response.statusCode == 200 ? print('fan temp down') : print('fan temp down failed');
    } catch (e) {
      print('fan temp down failed');
    }
  }
}


// /cpursx.ps3?max=<celcius> - Set the maximum temperature for the fan to start spinning faster