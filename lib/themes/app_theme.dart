import 'package:chaffra/themes/tokens.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    tabBarTheme: TabBarTheme(
      labelStyle: GoogleFonts.dmSans(
          fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),
      unselectedLabelStyle: GoogleFonts.dmSans(fontSize: 14, color: Colors.grey),
      labelColor: Colors.white,
      indicatorColor: Colors.white,
      unselectedLabelColor: Colors.grey,
    ),
    scaffoldBackgroundColor: const Color(0xFF121212),
    appBarTheme: AppBarTheme(
      color: Colors.grey[900],
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.white),
    ),
  );
}
