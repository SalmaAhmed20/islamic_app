import 'package:flutter/material.dart';
import 'package:islamic_app/IslamyText.dart';

class SurasName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/2.0x/bg3@2x.png"), fit: BoxFit.fill),
      ),
      child: Center(
        child: SafeArea(
          child: ListView(
            children: [
              Row(children: [IslamyText("إسلامي")]),
              Row(
                children: [
                  Expanded(
                      child: Image(image: AssetImage(
                              'assets/icons/2.0x/Screenshot (1)@2x.png'),
                        width: 205,height: 227,)),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
