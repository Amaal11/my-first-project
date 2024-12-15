import 'package:flutter/material.dart';
import 'amaal_color.dart';

class AmaalTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: amaalColors.skyBlue,
      scaffoldBackgroundColor: amaalColors.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: amaalColors.skyBlue,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      textTheme: const TextTheme(
        headline1: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: amaalColors.skyBlue,
        ),
        bodyText1: TextStyle(
          fontSize: 16,
          color: amaalColors.skyBlue,
        ),
        bodyText2: TextStyle(
          fontSize: 14,
          color: amaalColors.skyBlue,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: amaalColors.skyBlue.withOpacity(0.6),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: amaalColors.skyBlue.withOpacity(0.4),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: amaalColors.skyBlue,
            width: 2,
          ),
        ),
        labelStyle: const TextStyle(
          color: amaalColors.skyBlue,
          fontWeight: FontWeight.w500,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: amaalColors.skyBlue,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        ),
      ),
    );
  }
}