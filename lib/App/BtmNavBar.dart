import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../HadethScreen/Ahadthview.dart';
import '../Provider-lang-theme/providerlangTheme.dart';
import '../OtherPages/radio.dart';
import '../Tasbeeh/tasbeeh.dart';
import '../FirstScreen/quran.dart';
import '../OtherPages/SettingPage.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BtmNavBar extends StatefulWidget {
  @override
  _BtmNavBarState createState() => _BtmNavBarState();
}

class _BtmNavBarState extends State<BtmNavBar> {
  late ProviderLangTheme provider;
  int _currentIndex = 0;
//put here your pages
  List _screens = [SurasName(),view(),tasbeeh(), radio(),SettingPage() ];

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    provider = Provider.of<ProviderLangTheme>(context);
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: Directionality(
        textDirection: TextDirection.rtl,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: _updateIndex,
          backgroundColor: provider.isDark() ? Color(0xFF141A2E) : Color(0xFFB7935F),
          unselectedItemColor: Color(0xFFF8F8F8),
          selectedItemColor: provider.isDark() ? Color(0xFFFBC927) : Colors.black,
          showUnselectedLabels: false,
          selectedFontSize: 12,
          selectedLabelStyle: TextStyle(fontFamily: 'JF Flat'),
          iconSize: 40,
          items: [
            BottomNavigationBarItem(
              label: AppLocalizations.of(context)!.title16,
              icon: ImageIcon(AssetImage('assets/icons/3.0x/quran@3x.png')),
            ),
            BottomNavigationBarItem(
              label: AppLocalizations.of(context)!.title2,
              icon: ImageIcon(AssetImage("assets/icons/3.0x/Group 6@3x.png")),
            ), BottomNavigationBarItem(
              label: AppLocalizations.of(context)!.title15,
              icon: ImageIcon(AssetImage("assets/icons/3.0x/sebha_blue@3x.png")),
            ),BottomNavigationBarItem(
              label: AppLocalizations.of(context)!.title14,
              icon: ImageIcon(AssetImage("assets/icons/3.0x/radio@3x.png")),
            ), BottomNavigationBarItem(
              label: AppLocalizations.of(context)!.title13,
              icon: Icon(Icons.settings),
            ),

          ],
        ),
      ),
    );
  }
}
