import 'package:dress_market/cores/theme/theme_color.dart';
import 'package:dress_market/cores/theme/theme_light_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: ThemeColor.primary,
    cardTheme: CardThemeData(
      color: ThemeColor.secondarySurface,
      margin: EdgeInsets.all(15)
    ),
    textTheme: TextTheme(
      headlineMedium: GoogleFonts.playfairDisplay(
        color: ThemeColor.primary,
        fontWeight: FontWeight.bold,
      ),
       titleMedium: GoogleFonts.playfairDisplay(
        fontWeight: FontWeight.w600,
        fontSize: 18,
        color: ThemeColor.primaryWhite,
      ),
      bodyLarge: GoogleFonts.playfairDisplay(
        fontWeight: FontWeight.w600,
        color: ThemeColor.secondaryWhite,
      ),
      bodyMedium: GoogleFonts.playfairDisplay(
        fontWeight: FontWeight.w500,
        color: ThemeColor.secondaryWhite,
      ),
      bodySmall: GoogleFonts.playfairDisplay(color: ThemeColor.secondaryWhite),
    ),
    scaffoldBackgroundColor: ThemeColor.primarySurface,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: ThemeColor.primarySurface,
      // enableFeedback: false,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      unselectedItemColor: ThemeColor.secondaryWhite,

      selectedItemColor: ThemeColor.primary,
      selectedLabelStyle: GoogleFonts.playfairDisplay(),
    ),
    appBarTheme: AppBarThemeData(
      centerTitle: true,
      iconTheme: IconThemeData(
        color: ThemeColor.primaryWhite
      ),
      backgroundColor: ThemeColor.primarySurface,
      actionsIconTheme: IconThemeData(color: ThemeColor.primaryWhite),
    ),
     drawerTheme: DrawerThemeData(
      backgroundColor: ThemeColor.primarySurface,
      
    )
  );
  static ThemeData themeLight = ThemeData(
    brightness: Brightness.light,
    primaryColor: ThemeLightColor.primary,
    
    cardTheme: CardThemeData(
      color: ThemeLightColor.primarySurface,
      margin: EdgeInsets.all(15)
    ),
    textTheme: TextTheme(
      headlineMedium: GoogleFonts.playfairDisplay(
        color: ThemeLightColor.primary,
        fontWeight: FontWeight.bold,
      ),
       titleMedium: GoogleFonts.playfairDisplay(
        fontWeight: FontWeight.w600,
        color: ThemeLightColor.primaryBlack,
      ),
      
      bodyLarge: GoogleFonts.playfairDisplay(
        fontWeight: FontWeight.w600,
        color: ThemeLightColor.secondaryBlack,
      ),
      bodyMedium: GoogleFonts.playfairDisplay(
        fontWeight: FontWeight.w500,
        color: ThemeLightColor.secondaryBlack,
      ),
      bodySmall: GoogleFonts.playfairDisplay(
        color: ThemeLightColor.secondaryBlack,
      ),
    ),
    scaffoldBackgroundColor: ThemeLightColor.secondarySurface,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: ThemeLightColor.primarySurface,
      // enableFeedback: false,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      unselectedItemColor: ThemeLightColor.secondaryBlack,

      selectedItemColor: ThemeLightColor.primary,
      selectedLabelStyle: GoogleFonts.playfairDisplay(),
    ),
    appBarTheme: AppBarThemeData(
      centerTitle: true,
      iconTheme: IconThemeData(
        color: ThemeLightColor.primaryBlack
      ),
      backgroundColor: ThemeLightColor.primarySurface,
      actionsIconTheme: IconThemeData(color: ThemeLightColor.primaryBlack),
      
    ),
    drawerTheme: DrawerThemeData(
      
      backgroundColor: ThemeLightColor.primarySurface,
      
    ),
    
  
  );
}
