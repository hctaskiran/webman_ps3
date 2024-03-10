import 'package:flutter/material.dart';
import 'package:html/dom.dart' as dom;
import 'package:http/http.dart' as http;
import 'package:webman_ps3/extension/snack.dart';

class InfoLogics {
  Future<void> hddInfo(BuildContext context, String ipAddress) async {
    try {
      final uri = Uri.http(ipAddress, '/cpursx.ps3');
      final response = await http.get(uri);
      final html = dom.Document.html(response.body);
      final hdd = html
          .querySelectorAll('<a href  </a>')
          .map(
            (e) => e.innerHtml.trim(),
          )
          .toList();
      if (response.statusCode == 200) {
        print(hdd);
      }
    } catch (e) {
      context.sneckBar('Error!', Colors.red[700]);
    }
  }
}
//  192.168.88.9