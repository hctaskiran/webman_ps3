import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputIP extends StatefulWidget {
  const InputIP({
    super.key,
    required this.ipController,
  });

  final TextEditingController ipController;

  @override
  State<InputIP> createState() => _InputIPState();
}

class _InputIPState extends State<InputIP> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
      ],
      validator: (String? value) {
        if (value == null) {
          return 'Please enter some text';
        } else if (value.contains(' ')) {
          return 'Cannot be blank';
        }
        return null;
      },
      controller: widget.ipController,
      decoration: const InputDecoration(hintText: 'Enter IP Address'),
      maxLength: 15,
    );
  }
}
