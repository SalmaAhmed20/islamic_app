import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tasbeeh extends StatefulWidget {
  const tasbeeh({Key? key}) : super(key: key);

  @override
  _tasbeehState createState() => _tasbeehState();
}

class _tasbeehState extends State<tasbeeh> {
  int counter=0;
  int i=0;
  String typeTasbeeh='سبحان الله';
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
                Row(
                  children: [ Expanded(
                    child:Text('إسلامي',
                    style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'ELMessiri',
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
                    textAlign: TextAlign.center,
                   ),
                ),
                  ]),
                Row(
                    children: [
                      Expanded(
                          child: Image(
                            image: AssetImage("assets/images/2.0x/head of seb7a@2x.png"),
                            width: 41,
                            height: 57,
                          )),
                    ]
                ),
                Row(
                  children: [
                    Expanded(
                        child: Image(
                          image: AssetImage("assets/images/2.0x/body of seb7a@2x.png"),
                          width: 205,
                          height: 227,
                        )),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Expanded(
                    child:Container(

                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                         color: Colors.brown.withOpacity(0.8),

                ),
                margin: EdgeInsets.fromLTRB(130, 40, 130, 40),
                child: Text('$counter',style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,),
                textAlign: TextAlign.center,
                ),
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      height: 50,
                ),
                ),
                    ],
              ),
              Row( crossAxisAlignment:CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                  Expanded(
                  child:Container(
                    child: ElevatedButton(
                    onPressed: () { incrementCounter(); },
                    child: Text(typeTasbeeh,
                    style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
                    style: ButtonStyle(
                    backgroundColor:MaterialStateProperty.all<Color>(
                    Colors.brown.withOpacity(0.5))
                    ),

                  ) ,
                    margin: EdgeInsets.fromLTRB(100, 30, 100, 30),
                  ),
                ),
              ],
              ),
       ],
    ),

          ),
        ),

      ),
    );
  }

  void incrementCounter() {

    setState(() {
      counter++;
      if (counter>=33)
        {
          counter=0;
          i++;
        }
      if(i==0)
        typeTasbeeh='سبحان الله';
      if(i==1)
        typeTasbeeh='الله اكبر';
      if(i==2)
        typeTasbeeh='لا اله الا الله';
    }
    );
    if(i==3)
      i=0;

  }
}
