

import 'package:flutter/material.dart';

class SuraContent extends StatelessWidget
{
  String suraNumber;
  SuraContent(this.suraNumber);
  @override
  Widget build(BuildContext context) {
    print(suraNumber);
    return Scaffold(
      appBar: AppBar(
        title: Text("$suraNumber under done"),
        
      ),
    );
  }
  
}