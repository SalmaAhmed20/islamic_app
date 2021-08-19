import 'package:flutter/material.dart';
import 'package:quran/Provider-lang-theme/ThemeAndLanguage.dart';
import 'package:provider/provider.dart';
import 'package:quran/Provider-lang-theme/providerlangTheme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../App/IslamyText.dart';

class SettingPage extends StatefulWidget {
  @override
  _setting createState() => _setting();
}
class _setting extends State<SettingPage> {
  late ProviderLangTheme provider;

  @override
  Widget build(BuildContext context) {
    provider = Provider.of<ProviderLangTheme>(context);
    ThemeAndLanguage _Thema = new ThemeAndLanguage();
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: new AssetImage(provider.isDark()
                      ? "assets/images/Dark/bg1@2x.png"
                      : "assets/images/2.0x/bg3@2x.png"),
                  fit: BoxFit.fill),
            ),

            child: SafeArea(
              child: Column(
                children: [
                  Row(children: [
                    Expanded(child: IslamyText("إسلامي"))
                  ]),
                  Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 48, horizontal: 24),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            InkWell(
                              onTap: () {
                                _Thema.bottomsheets("language", context);
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(vertical: 20),
                                child: _Labels(AppLocalizations.of(context)!.title11),
                                decoration: BoxDecoration(
                                  color: Color(0x59FB7935F),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                padding: EdgeInsets.symmetric(vertical: 15),

                              ),
                            ),
                            InkWell(
                              onTap: () {
                                _Thema.bottomsheets("theme", context);
                              },
                              child: Container(

                                padding: EdgeInsets.symmetric(vertical: 15),
                                child: _Labels(AppLocalizations.of(context)!.title17),
                                decoration: BoxDecoration(
                                  color: Color(0x59FB7935F),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ])),
                ],
              ),
            )
        ));
  }

  _Labels(String labels) {
    return Text(
      labels,
      style: TextStyle(
        fontFamily: 'ElMessiri',
        fontWeight: FontWeight.w400,
        fontSize: 25,
        color: provider.isDark() ? Colors.amber : Colors.black,
      ),
      textAlign: TextAlign.center,
    );
  }
}