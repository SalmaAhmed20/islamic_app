import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'IslamyText.dart';

class hadeth_content extends StatefulWidget {
  int index;
  hadeth_content(this.index);

  @override
  _hadeth_contentState createState() => _hadeth_contentState();
}

class _hadeth_contentState extends State<hadeth_content> {
  String data = "";
  // ignore: deprecated_member_use
  late List<String> Ahadth;
  final List<dynamic> title = [
    "الحديث الاول",
    "الحديث الثانى",
    "الحديث الثالث",
    "الحديث الرابع",
    "الحديث الخامس",
    "الحديث السادس",
    "الحديث السابع",
    "الحديث الثامن",
    "الحديث التاسع",
    "الحديث العاشر",
    "الحديث الحادى عشر",
    "الحديث الثانى عشر",
    "الحديث الثالث عشر",
    "الحديث الرابع عشر",
    "الحديث الخامس عشر",
    "الحديث السادس عشر",
    "الحديث السابع عشر",
    "الحديث الثامن عشر",
    "الحديث التاسع عشر",
    "الحديث العشرون",
    "الحديث الحادى والعشرون",
    "الحديث الثانى والعشرون",
    "الحديث الثالث والعشرون",
    "الحديث الرابع والعشرون",
    "الحديث الخامس والعشرون",
    "الحديث السادس والعشرون ",
    "الحديث السابع والعشرون ",
    "الحديث الثامن والعشرون ",
    "الحديث التاسع والعشرون ",
    "الحديث الثلاثون ",
    " الحديث الحادى والثلاثون",
    "الحديث الثانى والثلاثون ",
    "الحديث الثالث و الثلاثون",
    "الحديث الرابع والثلاثون",
    "الحديث الخامس والثلاثون",
    "الحديث السادس و الثلاثةن",
    "الحديث السابع و الثلاثون",
    "الحديث الثامن والثلاثون",
    "الحديث التاسع و الثلاثون ",
    "الحديث الاربعون ",
    "الحديث الحادى والاربعون ",
    "الحديث الثانى والاربعون",
    "الحديث والاربعون ",
    "الحديث الرابع والاربعون",
    "الحديث الخامس والاربعون ",
    "الحديث السادس والاربعون",
    "الحديث السابع والاربعون",
    "الحديث الثامن والاربعون ",
    "الحديث التاسع والاربعون ",
    "الحديث الخمسون"
  ];
  Future<void> loadAsset() async {
    String load;
    load = await rootBundle.loadString('assets/Texts/ahadeth.txt');
    setState(() {
      data = load;
      Ahadth = data.split('#');
    });
  }

  void initState() {
    loadAsset();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/2.0x/bg3@2x.png"),
                    fit: BoxFit.fill)),
            child: Center(
                child: SafeArea(
                    child: Column(children: [
              Row(children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    textDirection: TextDirection.ltr,
                    size: 30,
                    color: Colors.black87,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(90, 0, 0, 0),
                  child: IslamyText("إسلامي"),
                )
              ]),
              Container(
                width: MediaQuery.of(context).size.width / 1.3,
                height: MediaQuery.of(context).size.height / 1.2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/2.0x/Path 2@2x.png"),
                      fit: BoxFit.fill)
                    //borderRadius: BorderRadius.all(Radius.circular(25))
                  ),
                child: Column(children: [
                  Container(
                      margin: const EdgeInsets.only(top: 30),
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Color(0xFFB7935F), width: 2)),
                      ),
                      child: Text(title[widget.index],
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'ReemKufi',
                              fontWeight: FontWeight.w500),
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.center)),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Text(
                              Ahadth[widget.index].substring(
                                  Ahadth[widget.index].indexOf('\n'),
                                  Ahadth[widget.index].length),
                              style: TextStyle(
                                  fontSize: 26, fontFamily: 'DecoType Thuluth'),
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
