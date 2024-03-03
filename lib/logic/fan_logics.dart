// ignore_for_file: use_build_context_synchronously, avoid_print

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:webman_ps3/extension/snack.dart';

class FanLogics {
  Future<void> sysconMode(BuildContext context, String ipAddress) async {
    try {
      final uri = Uri.http(ipAddress, '/cpursx.ps3?fan=0');
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        print('done');
      }
    } catch (e) {
      // context.sneckBar('Error! $e', 2, Colors.red[700]);
      print('$e');
    }
  }

  Future<void> dynamicMode(BuildContext context, String? ipAddress) async {
    try {
      final uri = Uri.http(ipAddress ?? '', '/cpursx.ps3?fan=1');
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        print("done");
      }
    } catch (e) {
      context.sneckBar('Error!', 2, Colors.red[700]);
    }
  }

  Future<void> autoMode(BuildContext context, String ipAddress) async {
    try {
      final uri = Uri.http(ipAddress, '/cpursx.ps3?fan=2');
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        print("done");
      }
    } catch (e) {
      context.sneckBar('Error!', 2, Colors.red[700]);
    }
  }
}
