import 'package:flutter/material.dart';
import 'IslamyText.dart';

class Ahadth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/2.0x/bg3@2x.png"),
                  fit: BoxFit.fill),
            ),
            child: Center(
                child: SafeArea(
                    child: Column(children: [
              Row(children: [IslamyText("إسلامي")]),
              Row(
                children: [
                  Expanded(
                      child: Image(
                    image:
                        AssetImage('assets/icons/2.0x/59253-quran-basmala-islamic-kufic-arabic-calligraphy-icon@2x.png'),
                    width: 205,
                    height: 227,
                  )),
                ],
              ),
              Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFB7935F)),
                  ),
                  child: Row(children: [
                    Expanded(
                        child: Text(
                      'الأحاديث',
                      style: TextStyle(
                        fontFamily: 'ElMessiri',
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
                      ),
                      textAlign: TextAlign.center,
                    ))
                  ]))
            ]))
            ))
    );
  }
}
