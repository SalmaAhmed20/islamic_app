import 'package:flutter/material.dart';
import 'package:islamic_app/tasbeeh.dart';

import 'BtmNavBar.dart';

import 'SplashScreen.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }

}


