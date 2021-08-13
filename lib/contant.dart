import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'package:quran_app/main.dart';
import 'main.dart';

class contant extends State<MyApp> {
  String name = '';

  contant(String name) {
    this.name = name;
  }

  String data = '';
  String Titlename = '';

  fetchFileData() async {
    String responseText;
    String responseTitle;
    responseText = await rootBundle.loadString('asset/files/$name.txt');
    responseTitle = await rootBundle.loadString('asset/files/Names.txt');
    setState(() {
      data = responseText;
      Titlename = responseTitle;
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
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            title: Text("اسلامـي",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'ELMessiri',
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  textDirection: TextDirection.rtl,
                  size: 38,
                  color: Colors.black87,
                ),
                onPressed: () {},
              ),
            ]),
        body: Stack(children: <Widget>[
          new Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: new AssetImage("asset/bg3@3x.png"), fit: BoxFit.fill),
            ),
          ),
          Center(
              child: Container(
                  width: MediaQuery.of(context).size.width / 1.3,
                  height: MediaQuery.of(context).size.height / 1.4,
                  color: Colors.brown.withOpacity(0.1),
                  child: Column(children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Colors.black, width: 3.0))),
                        child: Text("سـورة" + parseTitle(Titlename, name),
                            style: TextStyle(
                                fontSize: 26,
                                fontFamily: 'ELMessiri',
                                fontWeight: FontWeight.bold),
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.center)),
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text(
                            "\n" +
                                "بـسم الله الرحمن الرحـيم" +
                                "\n\n" +
                                parse(data),
                            style: TextStyle(
                                fontSize: 26, fontFamily: 'ELMessiri'),
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.center),
                      ),
                    ),
                  ])))
        ]));
  }
}

String parse(String data) {
  var list = data.split("\n");
  String sura = "";
  int num = 0;
  for (var i = 0; i < list.length; i++) {
    num = i + 1;
    sura = sura + list.elementAt(i) + "($num)";
  }
  return sura;
}

String parseTitle(String data, String name) {
  var list = data.split(",");
  var num_of_sura = int.parse(name);
  return list.elementAt(num_of_sura - 1);
}
