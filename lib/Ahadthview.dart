import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'IslamyText.dart';
import 'hadethContent.dart';
import 'package:quran/providerlangTheme.dart';
import 'package:provider/provider.dart';


class view extends StatelessWidget {
  providerlangTheme provider=new providerlangTheme();
  @override
  Widget build(BuildContext context) {
    Provider.of<providerlangTheme>(context);
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
                    image: AssetImage(
                        'assets/icons/2.0x/59253-quran-basmala-islamic-kufic-arabic-calligraphy-icon@2x.png'),
                    width: 205,
                    height: 227,
                  )),
                ],
              ),
              Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFB7935F)),
                  ),
                  child: Row(children: [
                    Expanded(
                        child: Text(
                      AppLocalizations.of(context).title2,
                      style: TextStyle(
                        fontFamily: 'ElMessiri',
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center,
                    )),
                  ])),
              Expanded(
                child: ListView.builder(
                  itemCount: 50,
                  itemBuilder: (_, index) {
                    int index2 = index + 1;
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ListTile(
                            // contentPadding:,

                            title: Text(
                              AppLocalizations.of(context).title3+"$index2",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 2.0,
                                  fontFamily: 'ReemKufi'),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        hadeth_content(index)),
                              );
                            },
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ])))));
  }
}
