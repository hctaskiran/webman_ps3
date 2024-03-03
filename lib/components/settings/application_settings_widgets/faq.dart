import 'package:flutter/material.dart';
import 'package:webman_ps3/constants/strings.dart';

class FAQ extends StatelessWidget {
  const FAQ({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.help_outline),
      title: Text(AppStrings().settings.faq, style: const TextStyle(fontSize: 18)),
      subtitle: Text(AppStrings().settings.subFaq, style: const TextStyle(fontSize: 12)),
    );
  }
}
