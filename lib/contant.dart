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
  fetchFileData() async{
  String responseText;
  responseText = await rootBundle.loadString('asset/files/$name.txt');
  setState(() {
  data= responseText;
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
  body:new Stack(
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
  child:new Text(parse(data),style: TextStyle(fontSize:28),textDirection:TextDirection.rtl),

  )
  ]
  )
  );

  }
  }
  String parse(String data){
  return data.replaceAllMapped('\n', (match) => '(*)');
  }


