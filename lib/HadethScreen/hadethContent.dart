import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:quran/Provider-lang-theme/providerlangTheme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../App/IslamyText.dart';

class hadeth_content extends StatefulWidget {
  int index;
  hadeth_content(this.index);

  @override
  _hadeth_contentState createState() => _hadeth_contentState();
}

class _hadeth_contentState extends State<hadeth_content> {
  String data = "";
  String Cont = "";
  String title = "";
  // ignore: deprecated_member_use
  late ProviderLangTheme provider;
  late List Ahadth;

  Future<void> loadHadeth() async {
    String load;
    load = await rootBundle.loadString('assets/Texts/ahadeth.txt');
    setState(() {
      data = load;
      Ahadth = data.split('#');
      Cont = Ahadth[widget.index].substring(
          Ahadth[widget.index].indexOf('\n'), Ahadth[widget.index].length);
      title =
          Ahadth[widget.index].substring(0, Ahadth[widget.index].indexOf('\n'));
    });
  }

  void initState() {
    Ahadth = List.empty();
    loadHadeth();
    super.initState();
  }

  Widget build(BuildContext context) {
    provider = Provider.of<ProviderLangTheme>(context);
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(provider.isDark()
                      ? "assets/images/Dark/bg1@2x.png"
                      : "assets/images/2.0x/bg3@2x.png"),
                  fit: BoxFit.fill),
            ),
            child: Center(
                child: SafeArea(
                    child: Column(children: [
              Directionality(
                textDirection: TextDirection.ltr,
                child: Row(children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      textDirection: TextDirection.ltr,
                      size: 30,
                      color: provider.isDark() ? Colors.white : Colors.black87,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(90, 0, 0, 0),
                    child: IslamyText(AppLocalizations.of(context)!.title),
                  )
                ]),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.3,
                height: MediaQuery.of(context).size.height / 1.2,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(provider.isDark()
                            ? "assets/images/Dark/Component 1 – 1@2x.png"
                            : "assets/images/2.0x/Path 2@2x.png"),
                        fit: BoxFit.fill)
                    //borderRadius: BorderRadius.all(Radius.circular(25))
                    ),
                child: Column(children: [
                  Container(
                      margin: const EdgeInsets.only(top: 30),
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: provider.isDark()
                                    ? Color(0xFFFACC1D)
                                    : Color(0xFFB7935F),
                                width: 1)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(title,
                              style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'ReemKufi',
                                  fontWeight: FontWeight.w500,
                                  color: provider.isDark()
                                      ? Color(0xFFFACC1D)
                                      : Colors.black),
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.center),
                        ],
                      )),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Text(Cont,
                              style: TextStyle(
                                  fontSize: 26,
                                  fontFamily: 'DecoType Thuluth',
                                  color: provider.isDark()
                                      ? Color(0xFFFACC1D)
                                      : Colors.black),
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.center),
                        ),
                      ),
                    ),
                  ),
                ]),
              )
            ])))));
  }
}
