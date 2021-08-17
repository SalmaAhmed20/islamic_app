import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'IslamyText.dart';
import 'LoadNamesList.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SurasName extends StatefulWidget {
  @override
  _SurasNameState createState() => _SurasNameState();
}

class _SurasNameState extends State<SurasName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/2.0x/bg3@2x.png"),
            fit: BoxFit.fill),
      ),
      child: Center(
        child: SafeArea(
          child: Column(children: [
            Row(children: [Expanded(child: IslamyText(AppLocalizations.of(context).title))]),
            Row(
              children: [
                Expanded(
                    child: Image(
                  image: AssetImage('assets/icons/2.0x/Screenshot (1)@2x.png'),
                  width: 205,
                  height: 227,
                )),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFB7935F)),
              ),
              child: Row(
                children: [
                  Expanded(child: _Labels(AppLocalizations.of(context).title4)),
                  Expanded(child: _Labels(AppLocalizations.of(context).title5))],),
            ),
            Expanded(child: ReadFrmFileStateState('assets/Texts/Names.txt')),
          ]),
        ),
      ),
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
