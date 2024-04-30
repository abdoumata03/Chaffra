import 'package:chaffra/themes/tokens.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: const Color(0xFF1A1B20),
    appBarTheme: AppBarTheme(
      color: Colors.grey[900],
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.white),
    ),
  );
}

