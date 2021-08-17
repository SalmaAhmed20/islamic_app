import 'package:flutter/material.dart';

class proLangThm extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.dark;
  //static final ThemeData light = ThemeData();
  void toggleTheme() {
    print("light");
    if (this._themeMode == ThemeMode.light)
      this._themeMode = ThemeMode.dark;
    else
      _themeMode = ThemeMode.light;
    notifyListeners();
  }

  ThemeMode get_themeMode() {
    return this._themeMode;
  }

  bool isDark() {
    return _themeMode == ThemeMode.dark;
  }
}
