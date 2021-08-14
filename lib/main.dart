
import 'package:flutter/material.dart';
import 'content.dart';
import 'hadeth.dart';
import 'listview.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHome()
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:BoxDecoration(
        image: DecorationImage(
          image:AssetImage("images/bg3.png"),
          fit:BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body:Column(children: [

          Container(
            height: 250,
            child: Image.asset('images/icone.png'),
          ),


          container(),

          Text (' الاحاديث',style: TextStyle(fontSize: 27,color: Colors.black ,fontFamily: 'JF'),
          ),

          container(),

          //list(context),

          Expanded(

            child: view() ,),


        ],
        ),
      ),


    );
  }
}


Widget container(){
  return  Container(
    height: 3,
    color: Colors.orangeAccent,

  );
}


