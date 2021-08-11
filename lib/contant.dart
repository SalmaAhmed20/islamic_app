import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'package:quran_app/main.dart';
import 'main.dart';

  class contant extends State<MyApp> {
    String name='';
    contant(String name) {
      this.name = name;
    }
  String data='';
  String Titlename='';
  fetchFileData() async{
  String responseText;
  String responseTitle;
  responseText = await rootBundle.loadString('asset/files/$name.txt');
  responseTitle = await rootBundle.loadString('asset/files/Names.txt');
  setState(() {
  data= responseText;
  Titlename=responseTitle;
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
    appBar: AppBar(
      title:Text("سورة الفاتحة"),
      centerTitle: true,
      backgroundColor:Colors.white60,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.exit_to_app),
          onPressed:(){},
        ),
      ]
    ),
  body:Stack(
  children: <Widget>[
   new Container(
  decoration: BoxDecoration(
  image: DecorationImage(
  image:new AssetImage("asset/bg3@3x.png"),
  fit: BoxFit.fill
  ),
  ),
  ),

  new Center(
  child: Container(
    color: Colors.black.withOpacity(0.6),
    child: new Text(parse(data),style: TextStyle(fontSize:28),textDirection:TextDirection.rtl),
    )

  )
  ]
  )
  );

  }
  }
  String parse(String data){
  return data.replaceAllMapped('\n', (match) => '(*)');
  }
  //String parseTitle(String data){
  //  return data.;
  //}

