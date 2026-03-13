import 'package:flutter/material.dart';

class ThemeModeState extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;
  ThemeMode get themeMode => _themeMode;
  bool get isDark=>_themeMode==ThemeMode.dark;
  void toggle() {
    _themeMode == ThemeMode.light
        ? _themeMode = ThemeMode.dark
        : _themeMode = ThemeMode.light;

    notifyListeners();
  }
}
