import 'package:flutter/material.dart';
import 'package:webman_ps3/core/enum/translations_enum.dart';

class FAQ extends StatelessWidget {
  const FAQ({super.key});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.help_outline),
      title: Text(Translations().FAQ, style: const TextStyle(fontSize: 18)),
      subtitle: Text(Translations().FAQ_CONTENT, style: const TextStyle(fontSize: 12)),
      onTap: () {},
    );
  }
}
