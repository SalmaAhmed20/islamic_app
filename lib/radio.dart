import 'package:flutter/material.dart';

class radio extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage("assets/images/2.0x/bg3@2x.png"),
            fit: BoxFit.fill),
        ),
    child: SafeArea(
      child: Column(
        children: [
         Row(
          children: [
          Expanded(
          child: Text(
            'إسلامي',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'ELMessiri',
                fontWeight: FontWeight.bold,
                fontSize: 30),
            textAlign: TextAlign.center,
          ),
          )]
         ),
      Row(
          children: [
            Expanded(
              child: Container(
                child: Image(
                image: AssetImage("assets/images/2.0x/radio@2x.png"),
                width: 330,
                height: 380,
          ),
              ),
            ),
         ]),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0,10),
                  child: Text('إذاعة القرآن الكريم',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ELMessiri',
                      fontSize: 23,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),

      Row(
          children: [
            Expanded(
              child: IconButton(
                icon: ImageIcon(AssetImage("assets/icons/2.0x/metro-next@2x.png")),
                iconSize: 25,
                color: Color.fromRGBO(183, 147, 95, 0.9882352941176471),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: IconButton(
                icon: ImageIcon(AssetImage("assets/icons/2.0x/awesome-play@2x.png")),
                iconSize: 40,
                color: Color.fromRGBO(183, 147, 95, 0.9882352941176471),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: IconButton(
                icon: ImageIcon(AssetImage("assets/icons/2.0x/metro-next-right@2x.png")),
                iconSize: 25,
                color: Color.fromRGBO(183, 147, 95, 0.9882352941176471),
                onPressed: () {},
              ),
            ),
          ]
      ),
        ]),
    ),),);
  }
}
