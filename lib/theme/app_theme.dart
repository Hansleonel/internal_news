import 'package:flutter/material.dart';
import 'package:internal_news/theme/app_colors.dart';

class AppTheme {
  static final internalNewsTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppColors.backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.backgroundColor,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.secondaryColor),
    ),
    textTheme: ThemeData.light().textTheme.apply(
          fontFamily: 'Urbanist',
        ),
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(16.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
            color: Color(
                0xFF1b998e)), // Cambia esto al color que prefieras para los bordes cuando el campo está seleccionado
        borderRadius: BorderRadius.circular(16.0),
      ),
      filled: true,
      fillColor: Color(0xFFf7f7f7),
    ),
  );
}
