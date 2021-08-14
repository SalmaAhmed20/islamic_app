import 'package:flutter/material.dart';
import 'package:quran/IslamyText.dart';

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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Expanded(
                   child: IslamyText('إسلامي'),
                  )
                ]),
                SizedBox(height: 40),
                Row(children: [
                  Expanded(
                    child: Image(
                        image: AssetImage("assets/images/2.0x/radio@2x.png")),
                  ),
                ]),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'إذاعة القرآن الكريم',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'ELMessiri',
                          fontSize: 23,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Row(children: [
                  Expanded(
                    child: IconButton(
                      icon: ImageIcon(
                          AssetImage("assets/icons/2.0x/metro-next@2x.png")),
                      iconSize: 25,
                      color: Color.fromRGBO(183, 147, 95, 0.9882352941176471),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: ImageIcon(
                          AssetImage("assets/icons/2.0x/awesome-play@2x.png")),
                      iconSize: 40,
                      color: Color.fromRGBO(183, 147, 95, 0.9882352941176471),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: ImageIcon(AssetImage(
                          "assets/icons/2.0x/metro-next-right@2x.png")),
                      iconSize: 25,
                      color: Color.fromRGBO(183, 147, 95, 0.9882352941176471),
                      onPressed: () {},
                    ),
                  ),
                ]),
                SizedBox(height: 80),
              ]),
        ),
      ),
    );
  }
}