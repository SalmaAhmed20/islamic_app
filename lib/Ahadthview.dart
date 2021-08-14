import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'IslamyText.dart';
import 'hadethContent.dart';

class view extends StatelessWidget {
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
              Row(children: [Expanded(child: IslamyText("إسلامي"))]),
              Row(
                children: [
                  Expanded(
                      child: Image(
                    image: AssetImage(
                        'assets/icons/2.0x/59253-quran-basmala-islamic-kufic-arabic-calligraphy-icon@2x.png'),
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
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center,
                    )),
                  ])),
              Expanded(
                child: ListView.builder(
                  itemCount: 50,
                  itemBuilder: (_, index) {
                    int index2 = index + 1;
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ListTile(
                            // contentPadding:,

                            title: Text(
                              "الحديث رقم $index2",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 2.0,
                                  fontFamily: 'ReemKufi'),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => hadeth_content(index)),
                              );
                            },
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ])))));
  }
}
