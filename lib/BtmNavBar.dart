import 'package:flutter/material.dart';
import 'PlaceholderWidget.dart';

class BtmNavBar extends StatefulWidget {
  @override
  _BtmNavBarState createState() => _BtmNavBarState();
}

class _BtmNavBarState extends State<BtmNavBar> {
  int _currentIndex = 3;
//put here your pages
  List _screens = [
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.deepOrange),
    PlaceholderWidget(Colors.green),
    PlaceholderWidget(Colors.black87)
  ];

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _updateIndex,
        backgroundColor: Color(0xFFB7935F),
        unselectedItemColor: Color(0xFFF8F8F8),
        selectedItemColor: Colors.black,
        showUnselectedLabels: false,
        selectedFontSize: 12,
        selectedLabelStyle: TextStyle(fontFamily: 'JF Flat'),
        iconSize: 40,
        items: [
          BottomNavigationBarItem(
            label: "الأذاعة",
            icon: ImageIcon(AssetImage("assets/icons/2.0x/radio@2x.png")),
          ),
          BottomNavigationBarItem(
            label: "التسبيح",
            icon: ImageIcon(AssetImage("assets/icons/2.0x/sebha_blue@2x.png")),
          ),
          BottomNavigationBarItem(
            label: "الأحاديث",
            icon: ImageIcon(AssetImage("assets/icons/2.0x/Group 6@2x.png")),
          ),
          BottomNavigationBarItem(
            label: "القرآن",
            icon: ImageIcon(AssetImage('assets/icons/2.0x/quran@2x.png')),
          ),
        ],
      ),
    );
  }
}
