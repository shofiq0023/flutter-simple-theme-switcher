import 'package:flutter/material.dart';
import 'package:provider_demo/theme/theme_data.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = lightMode;
  int themeMode = 0;

  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
      themeMode = 1;
    } else {
      themeData = lightMode;
      themeMode = 0;
    }
  }
}
