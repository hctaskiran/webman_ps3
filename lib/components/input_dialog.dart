import 'package:flutter/material.dart';

Future<dynamic> inputDialog(BuildContext context, String ipAddress, TextEditingController urlController,
    Function()? onPressed, String title, String subtitle, String hintText) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      actions: [
        TextButton(
          onPressed: () {
            onPressed!();
            Navigator.pop(context);
          },
          child: const Text('Go!'),
        )
      ],
      title: Text(title),
      content: SizedBox(
        height: MediaQuery.of(context).size.height * 0.1,
        child: Column(
          children: [
            Text(subtitle),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            TextField(
              textCapitalization: TextCapitalization.none,
              autocorrect: false,
              keyboardType: TextInputType.url,
              controller: urlController,
              decoration: const InputDecoration(hintText: 'e.g. google.com'),
            ),
          ],
        ),
      ),
    ),
  );
}
