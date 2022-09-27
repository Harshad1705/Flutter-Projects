import 'dart:ui';

import 'package:flutter/material.dart';

// TODO 3 : Create class for text style

class AppLargeText extends StatelessWidget {
  double size;
  final String text;
  final Color color;

  AppLargeText({
     this.size=30,
    required this.text,
     this.color=Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
