import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'package:quran_app/main.dart';
import 'main.dart';

class contant extends State<MyApp> {
  String data='';
  fetchFileData() async{
    String responseText;
    responseText = await rootBundle.loadString('asset/files/file1.txt');
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
      appBar: AppBar(),
      body: Center(
        child: Text(data)
      )
    );
  }
}

class sura {
  String name;
  String sura_contant;
    sura(this.name,this.sura_contant){
      name=this.name;
      sura_contant=this.sura_contant;
}
  Future<String> loadAsset(BuildContext context) async{
    return await DefaultAssetBundle.of(context).loadString('asset/files/file1.txt');
  }

  }

