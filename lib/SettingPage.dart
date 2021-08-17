
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran/ThemeAndLanguage.dart';
import 'providerlangTheme.dart';
import 'IslamyText.dart';

class SettingPage extends StatefulWidget {

  @override
  _setting createState() => _setting();
}
class _setting extends State<SettingPage>{
   providerlangTheme provider;

  @override
  Widget build(BuildContext context) {
    provider = Provider.of<providerlangTheme>(context);
    ThemeAndLanguage _Thema=new ThemeAndLanguage();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: new AssetImage("assets/images/3.0x/bg3@3x.png"),
              fit: BoxFit.fill),
        ),

              child: SafeArea(
      child: Column(
        children: [
      Row(children: [
        Expanded(child: IslamyText(AppLocalizations.of(context).title))
        ]),
            Container(
                padding: EdgeInsets.symmetric(vertical: 48 ,horizontal: 24),
             child: Column(
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                 children: [
                   InkWell(
                     onTap: (){_Thema.bottomsheets("language",context);},
                     child: Container(
                       margin: EdgeInsets.symmetric(vertical: 20),
                       child: _Labels('Language'),
                       decoration: BoxDecoration(
                         color: Color(0x59FB7935F),
                         borderRadius: BorderRadius.circular(15),
                       ),
                       padding: EdgeInsets.symmetric(vertical: 15),

                     ),
                   ),
          InkWell(
            onTap: (){_Thema.bottomsheets("theme",context);},
            child: Container(

              padding: EdgeInsets.symmetric(vertical: 15),
              child: _Labels('Theme'),
              decoration: BoxDecoration(
                color: Color(0x59FB7935F),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          ] )),
        ],
           ),
          )
    ));
  }
}
_Labels(String labels) {
  return Text(
    labels,
    style: TextStyle(
      fontFamily: 'ElMessiri',
      fontWeight: FontWeight.w400,
      fontSize: 25,
    ),
    textAlign: TextAlign.center,
  );
}
