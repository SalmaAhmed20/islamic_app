
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title : Text("SecondScreen"),
        ),
        body:Center(
          child:Text("SecondScreen",
              style : TextStyle(fontSize: 18.0)),
        )
    );
  }
}