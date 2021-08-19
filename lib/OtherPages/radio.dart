import 'package:flutter/material.dart';
import 'package:quran/App/IslamyText.dart';
import 'package:provider/provider.dart';
import '../Provider-lang-theme/providerlangTheme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class radio extends StatelessWidget {
  late ProviderLangTheme provider;
  @override
  Widget build(BuildContext context) {
    provider = Provider.of<ProviderLangTheme>(context);
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
                   child: IslamyText(AppLocalizations.of(context)!.title),
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
                        AppLocalizations.of(context)!.title8,
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
                          AssetImage("assets/icons/2.0x/metro-next@2x.png")),
                      iconSize: 25,
                      color: provider.isDark()?Color(0xFFFBC927):Color.fromRGBO(183, 147, 95, 0.9882352941176471),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: ImageIcon(
                          AssetImage("assets/icons/2.0x/awesome-play@2x.png")),
                      iconSize: 40,
                      color: provider.isDark()?Color(0xFFFBC927):Color.fromRGBO(183, 147, 95, 0.9882352941176471),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: ImageIcon(AssetImage(
                          "assets/icons/2.0x/metro-next-right@2x.png")),
                      iconSize: 25,
                      color:provider.isDark()?Color(0xFFFBC927):Color.fromRGBO(183, 147, 95, 0.9882352941176471),
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
