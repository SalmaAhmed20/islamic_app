import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

class content extends StatefulWidget {

  final int index;
  content (this.index);


  @override
  _contentState createState() => _contentState(index);
}

class _contentState extends State<content> {
  final int index;
  _contentState (this.index);
  List<dynamic>names=new List<dynamic>();
  final List<dynamic>hadeth=["الحديث الاول","الحديث الثانى","الحديث الثالث","الحديث الرابع","الحديث الخامس","الحديث السادس","الحديث السابع","الحديث الثامن","الحديث التاسع","الحديث العاشر","الحديث الحادى عشر","الحديث الثانى عشر","الحديث الثالث عشر","الحديث الرابع عشر","الحديث الخامس عشر","الحديث السادس عشر","الحديث السابع عشر","الحديث الثامن عشر","الحديث التاسع عشر","الحديث العشرون","الحديث الحادى والعشرون","الحديث الثانى والعشرون","الحديث الثالث والعشرون","الحديث الرابع والعشرون","الحديث الخامس والعشرون","الحديث السادس والعشرون ","الحديث السابع والعشرون ","الحديث الثامن والعشرون ","الحديث التاسع والعشرون ","الحديث الثلاثون "," الحديث الحادى والثلاثون","الحديث الثانى والثلاثون ","الحديث الثالث و الثلاثون","الحديث الرابع والثلاثون","الحديث الخامس والثلاثون","الحديث السادس و الثلاثةن","الحديث السابع و الثلاثون","الحديث الثامن والثلاثون","الحديث التاسع و الثلاثون ","الحديث الاربعون ","الحديث الحادى والاربعون ","الحديث الثانى والاربعون","الحديث والاربعون ","الحديث الرابع والاربعون","الحديث الخامس والاربعون ","الحديث السادس والاربعون","الحديث السابع والاربعون","الحديث الثامن والاربعون ","الحديث التاسع والاربعون ","الحديث الخمسون"];
  String m="";
  String data="";
  Future<void> loadAsset() async {
    String load;
    load=await rootBundle.loadString('textfiles/ahadeth.txt');
    setState(() {
      data=load;
      names=data.split( '#');

    });
  }
  void initState(){
    loadAsset() ;
    super.initState();

  }


  Widget build(BuildContext context) {
    return  Scaffold(

      body:SingleChildScrollView(
        child: Card(
            margin:const EdgeInsets.all(19.0) ,
            color: Colors.white,
            child: Column(children: [
              Container(
                margin:const EdgeInsets.only(top:30) ,
                child: Text(
                    hadeth[index],textAlign: TextAlign.right,style: TextStyle(fontSize: 25,color: Colors.black,fontFamily: "ElMessiri",fontWeight: FontWeight.bold)),
              ),
              Container(
                width: 300,
                height: 1,
                color: Colors.orangeAccent,

              ),

              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Center(child:Text(
                    names[index],textAlign: TextAlign.right,style: TextStyle(fontSize: 20,color: Colors.black,fontFamily: "ArefBold")
                ),),
              ),
            ],)


        ),
      ),




    );

  }
}