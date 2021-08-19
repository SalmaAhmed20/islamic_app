import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProviderLangTheme extends ChangeNotifier {
  String currentLocale='ar';
  void changeLanguage(String lang)
  {
    if(currentLocale==lang)
      return;
    currentLocale=lang;
    notifyListeners();

  }
   late ThemeMode _themeMode ;
   ProviderLangTheme( bool isdark)
   {
     if(isdark) {
       this._themeMode=ThemeMode.dark;
     } else {
       this._themeMode=ThemeMode.light;
     }
   }
  Future<void> toggleTheme() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (this._themeMode == ThemeMode.light) {
      this._themeMode = ThemeMode.dark;
       prefs.setBool("isDark", true);
    }
    else {
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
}
