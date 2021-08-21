import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProviderLangTheme extends ChangeNotifier {
  late String currentLocale;
  late ThemeMode _themeMode;
  ProviderLangTheme(bool isdark, bool isArab) {
    if (isdark)
      this._themeMode = ThemeMode.dark;
    else
      this._themeMode = ThemeMode.light;

    if (isArab)
      this.currentLocale = 'ar';
    else
      this.currentLocale = 'en';
  }
  Future<void> toggleTheme() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (this._themeMode == ThemeMode.light) {
      this._themeMode = ThemeMode.dark;
      prefs.setBool("isDark", true);
    } else {
      _themeMode = ThemeMode.light;
      prefs.setBool("isDark", false);
    }
    notifyListeners();
  }

  ThemeMode get_themeMode() {
    return this._themeMode;
  }

  bool isDark() {
    return _themeMode == ThemeMode.dark;
  }

  Future<void> changeLanguage(String lang) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (lang == 'ar') {
      prefs.setBool("isArab", true);
      currentLocale = lang;
    } else {
      prefs.setBool("isArab", false);
      currentLocale = lang;
    }
    notifyListeners();
  }
}
