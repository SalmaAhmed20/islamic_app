
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providerlangTheme.dart';
import 'IslamyText.dart';

class SettingPage extends StatefulWidget {

  @override
  _setting createState() => _setting();
}
class _setting extends State<SettingPage> {
  providerlangTheme provider;

  @override
  Widget build(BuildContext context) {
    provider = Provider.of<providerlangTheme>(context);
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
                    Expanded(child: IslamyText(AppLocalizations
                        .of(context)
                        .title))
                  ]),
                  Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 48, horizontal: 24),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            InkWell(
                              onTap: () {
                                bottomsheets("language", context);
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(vertical: 20),
                                child: _Labels(AppLocalizations.of(context).title11),
                                decoration: BoxDecoration(
                                  color: Color(0x59FB7935F),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                padding: EdgeInsets.symmetric(vertical: 15),

                              ),
                            ),
                            InkWell(
                              onTap: () {
                                bottomsheets("theme", context);
                              },
                              child: Container(

                                padding: EdgeInsets.symmetric(vertical: 15),
                                child: _Labels(AppLocalizations.of(context).title12),
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

  void bottomsheets(String flag, BuildContext context) {
    //Provider.of<providerlangTheme>(context);
    showModalBottomSheet(
        context: context,
        elevation: 50.0,
        builder: (context) {
          return Container(
            color: Color(0xFF737373),
            height: 180,
            child: Container(
              child:
              flag == "language"
                  ? (bottomSheetLanguage(context))
                  : bottomSheetTheme(context),
              decoration: BoxDecoration(
                  color: Theme
                      .of(context)
                      .canvasColor,
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(10),
                    topRight: const Radius.circular(10),
                  )
              ),
            ),
          );
        });
  }

  Column bottomSheetLanguage(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        ListTile(
          title: Text('English', textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20.0, fontFamily: 'ElMessiri',
                shadows: [
                  Shadow(
                      color: Colors.black26,
                      offset: Offset(10, 5),
                      blurRadius: 5)
                ]),),
          onTap: () {
            // pop(context);
            provider.changeLanguage("en");
            pop(context);
          },
        ),
        ListTile(
          title: Text('العربية', textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20.0, fontFamily: 'ElMessiri',
                shadows: [
                  Shadow(
                      color: Colors.black26,
                      offset: Offset(10, 5),
                      blurRadius: 5)
                ]),
          ),
          onTap: () {
            // pop(context);
            provider.changeLanguage("ar");
            pop(context);
          },
        )
      ],
    );
  }

  Column bottomSheetTheme(BuildContext context) {
    return Column(

      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        ListTile(
          title: Text('Light', textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20.0, fontFamily: 'ElMessiri',
                shadows: [
                  Shadow(
                      color: Colors.black26,
                      offset: Offset(10, 5),
                      blurRadius: 5)
                ]),),
          onTap: () => pop(context),
        ),
        ListTile(
          title: Text('Dark', textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20.0, fontFamily: 'ElMessiri',
                shadows: [
                  Shadow(
                      color: Colors.black26,
                      offset: Offset(10, 5),
                      blurRadius: 5)
                ]),
          ),
          onTap: () => pop(context),
        )
      ],
    );
  }

  void pop(BuildContext context) {
    Navigator.pop(context);
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
}
