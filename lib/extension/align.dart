import 'package:flutter/material.dart';

extension ExtendAlign on Widget {
  alignment(AlignmentGeometry alignment) {
    return Align(
      alignment: alignment,
      child: this,
    );
  }
}
