// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:webman_ps3/extension/snack.dart';

class CDLogics {
  Future<void> eject(BuildContext context, String ipAddress) async {
    try {
      final uri = Uri.http(ipAddress, '/extgd.ps3?status');
      final response = await http.get(uri);
      response.statusCode == 200
          ? context.sneckBar('CD ejected!', 2, Colors.purple[700])
          : context.sneckBar(
              'Eject failed, please check your connection to PS or check if HEN is activated.', 2, Colors.red[700]);
    } catch (e) {
      context.sneckBar(
          'Eject failed, please check your connection to PS or check if HEN is activated.', 2, Colors.red[700]);
    }
  }
}
