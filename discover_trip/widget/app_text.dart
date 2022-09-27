import 'dart:ui';

import 'package:flutter/material.dart';

// TODO 3 : Create class for text style

class AppText extends StatelessWidget {
  double size;
  final String text;
  final Color color;

  AppText({
    this.size=16,
    required this.text,
    this.color=Colors.black54,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
      ),
    );
  }
}
