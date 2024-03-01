import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:webman_ps3/extension/snack.dart';

class BrowserLogics {
  Future<void> redirectTo(BuildContext context, String ipAddress, String url) async {
    try {
      final uri = Uri.http(ipAddress, '/browser.ps3?https://www.$url');
      final response = await http.get(uri);
      response.statusCode == 200
          ? context.sneckBar('Redirected!', 2, Colors.purple[700])
          : context.sneckBar('Redirect failed', 2, Colors.red[700]);
    } catch (e) {
      context.sneckBar('Redirect failed', 2, Colors.red[700]);
    }
  }
}
