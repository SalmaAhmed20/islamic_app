import 'package:flutter/material.dart';
import 'package:islamic_app/seb7a.dart';

class tasbeeh extends StatefulWidget {
  const tasbeeh({Key? key}) : super(key: key);

  @override
  _tasbeehState createState() => _tasbeehState();
}

class _tasbeehState extends State<tasbeeh> {
  int counter=0;
  int i=0,rotate=0;
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

                seb7a(degreeOfRotate(rotate)),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child:Text('عدد التسبيحات',style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ELMessiri',
                    fontSize: 20,),
                    textAlign: TextAlign.center,
                  ),

                ),


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Expanded(
                    child:Container(

                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                         color: Color.fromARGB(195, 183, 147, 95),

                ),
                margin: EdgeInsets.fromLTRB(130, 40, 130, 10),
                child: Text('$counter',style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,),
                textAlign: TextAlign.center,
                ),
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      height: 50,
                      width: 90,
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
                    fontFamily: 'ReemKufi',
                    fontSize: 20)),
                    style: ButtonStyle(
                    backgroundColor:MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 186, 147, 107)),
                    ),

                  ) ,
                    margin: EdgeInsets.fromLTRB(100, 40, 100, 30),
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
      rotate+=15;
      if (counter>=33)
        {
          counter=0;
          i++;
          rotate=0;
        }
      if(i==0)
        typeTasbeeh='سبحان اللـه';
      if(i==1)
        typeTasbeeh='اللـه اكبر';
      if(i==2)
        typeTasbeeh='لا اله الا اللـه';
    }
    );
    if(i==3) {
      i = 0;
      typeTasbeeh='سبحان الله';
    }

  }
}
