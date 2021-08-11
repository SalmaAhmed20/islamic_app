
import 'package:flutter/material.dart';
import 'hadeth1.dart';
import 'hadeth2.dart';
import 'hadeth3.dart';
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
        body:Center(
         child: Column(children: [
           Container(
             height: 250,
           child: Image.asset('images/icone.png'),
           ),
           
          container(),

           Text (' الاحاديث',style: TextStyle(fontSize: 27,color: Colors.black ,fontFamily: 'ElMessiri'),
            ),

          container(),

           /*SizedBox(
             height:20
           ),*/

            navigator(context,"1الحديث رقم ",App()),
            navigator(context,"2الحديث رقم ",App2()),
            navigator(context,"3الحديث رقم ",App3()),
            navigator(context,"4الحديث رقم ",App2()),
            navigator(context,"5الحديث رقم ",App2()),
            navigator(context,"6الحديث رقم ",App2()),
            navigator(context,"7الحديث رقم ",App2()),
                                            
            ],
            
            )
          ),
          ),
     );
    }
  }
                        

Widget navigator(BuildContext context,text,text2) {
      return FlatButton(
         child: Text(
          '$text',
          style: TextStyle(
            fontSize: 23,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            fontFamily: 'JF'),
        ),
        onPressed: () {
           
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => text2,
              ));
        },
        );
}
Widget container(){
  return  Container(
           height: 3,
           color: Colors.orangeAccent,
           
         );
}