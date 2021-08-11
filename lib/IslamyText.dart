import 'package:flutter/material.dart';

class IslamyText extends StatelessWidget {
  String Txt = '';
  IslamyText(this.Txt);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        Txt,
        style: TextStyle(
            color: Colors.black,
            fontFamily: 'ELMessiri',
            fontWeight: FontWeight.bold,
            fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}
