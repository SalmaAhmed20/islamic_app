import 'package:flutter/material.dart';

class providerlangTheme extends ChangeNotifier
{
  String currentLocale='ar';
  void changeLanguage(String lang)
  {
    if(currentLocale==lang)
      return;
    currentLocale=lang;
    notifyListeners();

}
  }