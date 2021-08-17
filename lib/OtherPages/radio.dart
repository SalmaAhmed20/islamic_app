import 'package:flutter/material.dart';
import 'package:quran/App/IslamyText.dart';
import 'package:provider/provider.dart';
import '../Provider-lang-theme/providerlangTheme.dart';
class radio extends StatelessWidget {
  late proLangThm provider;
  @override
  Widget build(BuildContext context) {
    provider = Provider.of<proLangThm>(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.isDark()
             ? "assets/images/Dark/bg1@2x.png"
              :"assets/images/2.0x/bg3@2x.png"),
              fit: BoxFit.fill),

        ),
        child: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Expanded(
                   child: IslamyText('إسلامي'),
                  )
                ]),
                SizedBox(height: 40),
                Row(children: [
                  Expanded(
                    child: Image(
                        image: AssetImage("assets/images/2.0x/radio@2x.png")),
                  ),
                ]),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'إذاعة القرآن الكريم',
                        style: TextStyle(
                          color: provider.isDark()?Colors.white:Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'ELMessiri',
                          fontSize: 23,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Row(children: [
                  Expanded(
                    child: IconButton(
                      icon: ImageIcon(
                          AssetImage(provider.isDark()
                              ?"assets/icons/dark/metro-next@2x.png"
                          :"assets/icons/2.0x/metro-next@2x.png" )),
                      iconSize: 25,
                      color:provider.isDark()?Color(0xFFFFDE37) :
                      Color.fromRGBO(183, 147, 95, 0.9882352941176471),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: ImageIcon(
                          AssetImage(provider.isDark()
                              ?"assets/icons/dark/awesome-play@2x.png"
                              :"assets/icons/2.0x/awesome-play@2x.png")),
                      iconSize: 40,
                      color:provider.isDark()?Color(0xFFFFDE37) :
                      Color.fromRGBO(183, 147, 95, 0.9882352941176471),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: ImageIcon(AssetImage(provider.isDark()
                          ?"assets/icons/dark/Icon metro-next@2x.png"
                          :"assets/icons/2.0x/metro-next-right@2x.png")),
                      iconSize: 25,
                      color:provider.isDark()?Color(0xFFFFDE37) :
                      Color.fromRGBO(183, 147, 95, 0.9882352941176471),

                      onPressed: () {},
                    ),
                  ),
                ]),
                SizedBox(height: 80),
              ]),
        ),
      ),
    );
  }
}
