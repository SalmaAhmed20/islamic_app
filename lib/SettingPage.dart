import 'package:flutter/material.dart';

import 'IslamyText.dart';

class SettingPage extends StatefulWidget {
  @override
  _setting createState() => _setting();
}
class _setting extends State<SettingPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: new AssetImage("assets/images/3.0x/bg3@3x.png"),
              fit: BoxFit.fill),
        ),

              child: SafeArea(
      child: Column(
        children: [
      Row(children: [
      IconButton(
        icon: Icon(
        Icons.arrow_back,
        textDirection: TextDirection.ltr,
        size: 30,
        color: Colors.black87,
      ),
        onPressed: () {Navigator.pop(context);},
      ),
        Padding(
          padding: const EdgeInsets.fromLTRB(90,0,0,0),
          child: IslamyText("إسلامي"),
        )
        ]),
            Container(
                padding: EdgeInsets.symmetric(vertical: 48 ,horizontal: 24),
             child: Column(
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                 children: [
                   InkWell(
                     onTap: (){},
                     child: Container(
                       color: Colors.white38,
                       padding: EdgeInsets.symmetric(vertical: 15),
                       child: _Labels('Language'),
                     ),
                   ),
          InkWell(
            onTap: (){},
            child: Container(
                color: Colors.white38,
              padding: EdgeInsets.symmetric(vertical: 15),
              child: _Labels('Theme'),
            ),
          ),
          ] )),
        ],
           ),
          )
    ));
  }
}
_Labels(String labels) {
  return Text(
    labels,
    style: TextStyle(
      fontFamily: 'ElMessiri',
      fontWeight: FontWeight.w400,
      fontSize: 25,
    ),
    textAlign: TextAlign.left,
  );
}
