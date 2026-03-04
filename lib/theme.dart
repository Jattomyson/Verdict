import 'package:flutter/material.dart';

ThemeData buildTheme() {
  const bg = Color(0xFF0B0B0B);
  const fg = Color(0xFFF2F2F2);

  return ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: bg,
    colorScheme: const ColorScheme.dark(
      surface: bg,
      primary: fg,
      secondary: fg,
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
          fontSize: 40, fontWeight: FontWeight.w800, color: fg),
      headlineMedium: TextStyle(
          fontSize: 26, fontWeight: FontWeight.w800, color: fg),
      bodyLarge: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w600, color: fg),
      bodyMedium: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w600, color: fg),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: fg,
        foregroundColor: bg,
        padding:
            const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14)),
        textStyle: const TextStyle(
            fontWeight: FontWeight.w800, fontSize: 16),
      ),
    ),
  );
}