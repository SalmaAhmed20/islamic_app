import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providerlangTheme.dart';

class ThemeAndLanguage {
  late ProviderLangTheme provider;
  void bottomsheets(String flag, BuildContext context) {
    showModalBottomSheet(
        context: context,
        elevation: 50.0,
        builder: (context) {
          provider = Provider.of<ProviderLangTheme>(context);
          return Container(
            color: Color(0xFF737373),
            height: 180,
            child: Container(
              child: flag == "language"
                  ? (bottomSheetLanguage(context))
                  : bottomSheetTheme(context),
              decoration: BoxDecoration(
                  color: provider.isDark()
                      ? Color(0xFF141A2E)
                      : Color(0x59FB7935F),
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(10),
                    topRight: const Radius.circular(10),
                  )),
            ),
          );
        });
  }

  Column bottomSheetLanguage(BuildContext context) {
    provider = Provider.of<ProviderLangTheme>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        ListTile(
          title: Text(
            'English',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'ElMessiri',
              shadows: [
                Shadow(
                    color: provider.isDark() ? Colors.white38 : Colors.black26,
                    offset: Offset(10, 5),
                    blurRadius: 5)
              ],
              color: provider.isDark() ? Colors.white38 : Colors.black87,
            ),
          ),
          onTap: () {
            provider.changeLanguage("en");
            Navigator.pop(context);
          },
        ),
        ListTile(
            title: Text(
              'العربية',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'ElMessiri',
                shadows: [
                  Shadow(
                      color:
                          provider.isDark() ? Colors.white38 : Colors.black26,
                      offset: Offset(10, 5),
                      blurRadius: 5)
                ],
                color: provider.isDark() ? Colors.white38 : Colors.black87,
              ),
            ),
            onTap: () {
              provider.changeLanguage("ar");
              Navigator.pop(context);
            })
      ],
    );
  }

  Column bottomSheetTheme(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        ListTile(
          title: Text(
            'Light',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'ElMessiri',
              shadows: [
                Shadow(
                    color: provider.isDark() ? Colors.white38 : Colors.black26,
                    offset: Offset(10, 5),
                    blurRadius: 5)
              ],
              color: provider.isDark() ? Colors.white38 : Colors.white,
            ),
          ),
          onTap: () {
            if (provider.isDark()) provider.toggleTheme();
            Navigator.pop(context);
          },
        ),
        ListTile(
            title: Text(
              'Dark',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'ElMessiri',
                shadows: [
                  Shadow(
                      color:
                          provider.isDark() ? Colors.white38 : Colors.black26,
                      offset: Offset(10, 5),
                      blurRadius: 5)
                ],
                color: provider.isDark() ? Colors.amber : Colors.black87,
              ),
            ),
            onTap: () {
              if (!provider.isDark()) provider.toggleTheme();
              Navigator.pop(context);
            })
      ],
    );
  }

  void pop(BuildContext context) {
    Navigator.pop(context);
  }
}
