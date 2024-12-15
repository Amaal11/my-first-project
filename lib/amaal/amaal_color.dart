import 'package:flutter/material.dart';

class amaalColors {
  static const Color white = Color(0xFFFFFF);
  static const Color skyBlue = Color(0xFF87CEEB);
  static const Gradient backgroundGradient = LinearGradient(
    colors: [skyBlue, white],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}