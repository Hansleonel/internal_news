import 'package:flutter/material.dart';

class AppTheme {
  static final internalNewsTheme = ThemeData.light().copyWith(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      inputDecorationTheme: InputDecorationTheme(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(16.0),
        ),
        filled: true,
        fillColor: Colors.grey[200],
      ));
}
