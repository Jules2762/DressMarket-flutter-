import 'package:dress_market/cores/theme/theme_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    textTheme: TextTheme(
      headlineMedium: GoogleFonts.playfairDisplay(
        color: ThemeColor.primary,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
