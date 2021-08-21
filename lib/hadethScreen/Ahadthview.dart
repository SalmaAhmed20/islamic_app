import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../App/IslamyText.dart';
import 'HadethContent.dart';
import '../Provider-lang-theme/providerlangTheme.dart';

class view extends StatelessWidget {
  late ProviderLangTheme provider;
  @override
  Widget build(BuildContext context) {
    Provider.of<ProviderLangTheme>(context);
    provider = Provider.of<ProviderLangTheme>(context);
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(provider.isDark()
                      ? "assets/images/Dark/darkbasicbg@2x.png"
                      : "assets/images/2.0x/lightbasicbg@2x.png"),
                  fit: BoxFit.fill),
            ),
            child: Center(
                child: SafeArea(
                    child: Column(children: [
              Row(children: [
                Expanded(child: IslamyText(AppLocalizations.of(context)!.title))
              ]),
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
                    border: Border(
                        top: BorderSide(
                            color: provider.isDark()
                                ? Color(0xFFFACC1D)
                                : Color(0xFFB7935F),
                            width: 3),
                        bottom: BorderSide(
                            color: provider.isDark()
                                ? Color(0xFFFACC1D)
                                : Color(0xFFB7935F),
                            width: 3)),
                  ),
                  child: Row(children: [
                    Expanded(
                        child: Text(
                      AppLocalizations.of(context)!.title2,
                      style: TextStyle(
                          fontFamily: 'ElMessiri',
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                          color:
                              provider.isDark() ? Colors.white : Colors.black),
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
                              AppLocalizations.of(context)!.title3 + "$index2",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 25,
                                  color: provider.isDark()
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.w600,
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
