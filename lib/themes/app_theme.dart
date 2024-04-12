import 'package:flutter/material.dart';

class AppTheme {
  static final darkTheme = ThemeData(
  
    textTheme: TextTheme(),
    brightness: Brightness.dark,
    primaryColor: Colors.grey[900],
    scaffoldBackgroundColor: Colors.grey[900],
    appBarTheme: AppBarTheme(
      color: Colors.grey[900],
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.white),
    ),
  );
}
