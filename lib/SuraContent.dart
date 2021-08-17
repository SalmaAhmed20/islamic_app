import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'IslamyText.dart';

class contant extends StatefulWidget {
  String name = '';
  String nameofSura = '';
  contant(String name, String ns) {
    this.name = name;
    this.nameofSura = ns;
  }

  @override
  _contantState createState() => _contantState();
}

class _contantState extends State<contant> {
  String data = '';

  //String Titlename = '';

  fetchFileData() async {
    String responseText;
    responseText =
        await rootBundle.loadString('assets/Texts/Quran/${widget.name}.txt');
    setState(() {
      data = responseText;
    });
  }

  @override
  void initState() {
    fetchFileData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: new AssetImage("assets/images/3.0x/bg3@3x.png"),
                  fit: BoxFit.fill),
            ),
            child: Center(
                child: SafeArea(
              child: Column(
                children: [
                  Row(children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        textDirection: TextDirection.ltr,
                        size: 30,
                        color: Colors.black87,
                      ),
                      onPressed: () {Navigator.pop(context);},
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(90,0,0,0),
                      child: IslamyText(AppLocalizations.of(context).title),
                    )
                  ]),
                  SizedBox(height: 20),
                  Container(
                      width: MediaQuery.of(context).size.width / 1.3,
                      height: MediaQuery.of(context).size.height / 1.2,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/2.0x/Path 2@2x.png"),
                              fit: BoxFit.fill)
                        //borderRadius: BorderRadius.all(Radius.circular(25))
                      ),
                      child: Column(children: <Widget>[
                        SizedBox(height: 20),
                        Container(
                            decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Color(0xFFB7935F), width: 2)),
                            ),
                            child: Text("سـورة" + widget.nameofSura,
                                style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'ReemKufi',
                                    fontWeight: FontWeight.w500),
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center)),
                        SizedBox(height: 20),
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Container(
                              margin: EdgeInsets.all(10),
                              child: Text(
                                  " \n" +
                                      "بـسم الله الرحمن الرحـيم" +
                                      "\n\n" +
                                      parse(data),
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontFamily: 'DecoType Thuluth'),
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.center),
                            ),
                          ),
                        ),
                      ])),
                ],
              ),
            ))));
  }
}

String parse(String data) {
  var list = data.split("\n");
  String sura = "";
  int num = 0;
  for (var i = 0; i < list.length; i++) {
    num = i + 1;
    sura = sura + list.elementAt(i) + "($num)\n";
  }
  return sura;
}
