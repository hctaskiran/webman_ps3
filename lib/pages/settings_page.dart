import 'package:flutter/material.dart';
import 'package:webman_ps3/components/ip_input_bar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController ipController = TextEditingController();
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          const SizedBox(height: 50),
          const Text('Enter IP Address'),
          const SizedBox(height: 10),
          InputIP(ipController: ipController),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Save'),
          ),
        ],
      )),
    );
  }
}
