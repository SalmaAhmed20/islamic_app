/*import 'package:flutter/material.dart';
import 'package:quran/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,  
     home: MyHomePage(),
    );
  }
}*/
import 'package:flutter/material.dart';

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
            image:AssetImage("assets/bg3.png"),
            fit:BoxFit.cover,
            ),
        ),
       child: Scaffold(
         backgroundColor: Colors.transparent,
        body:Center(
         child: Column(children: [
           
           Container(
             height: 250.0,
           child: Image.asset('assets/icone.png'),
           ),
           
          container(),
            Text (' الاحاديث',style: TextStyle(fontSize: 27,color: Colors.black ,fontFamily: 'ElMessiri'),
            ),

          container(),
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
                        
  class App3 extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text("FirstScreen"),
      ),
      body:Center(
        child:Text("FirstScreen",
        style : TextStyle(fontSize: 18.0)),
      )
    );
   }
  }
            
  class App2 extends StatelessWidget{
     @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text("FirstScreen"),
      ),
      body:Center(
        child:Text("FirstScreen",
        style : TextStyle(fontSize: 18.0)),
      )
    );
   }
}
      
 class App extends StatelessWidget{
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text("FirstScreen"),
      ),
      body:Center(
        child:Text("FirstScreen",
        style : TextStyle(fontSize: 18.0)),
      )
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