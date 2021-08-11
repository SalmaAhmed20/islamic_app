import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'SecondScreen.dart';
class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState()
  {
    super.initState();
    Timer(Duration(seconds:3),()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>SecondScreen())));
  }
  Widget build(BuildContext context) {
    return Container(
      decoration:BoxDecoration(
        image: DecorationImage(
            image:AssetImage("assets/splash_bg.png"),
            fit:BoxFit.cover,
            colorFilter:ColorFilter.mode(
                Colors.black.withOpacity(0.1),
                BlendMode.darken)
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment:CrossAxisAlignment.stretch,
          children: [
            SizedBox(height:30.0),
            SpinKitChasingDots(color: Colors.orange[900],)
          ],
        ),
      ),
    );
  }
}
