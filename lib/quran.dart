import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:islamic_app/IslamyText.dart';

class SurasName extends StatefulWidget {
  @override
  _SurasNameState createState() => _SurasNameState();
}

class _SurasNameState extends State<SurasName> {
  //-----------------------------------------
  List<String> _suras = [];
  Future<List<String>> _loadSuras() async {
    List<String> suras = [];
    await rootBundle.loadString('assets/Texts/Names.txt').then((q) {
      q = q.replaceAll(new RegExp(r"\s+"), "");
      q = q.replaceAll('"', '');
      suras = q.split(',');
      //print(suras);
    });
    return suras;
  }

//------------------------------------------------------------------
  _setup() async {
    // Retrieve the questions (Processed in the background)
    List<String> suras = await _loadSuras();
    setState(() {
      _suras = suras;
    });
  }

//-----------------------------------------------
  @override
  void initState() {
    _setup();
    super.initState();
  }

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
                  image: AssetImage('assets/icons/2.0x/Screenshot (1)@2x.png'),
                  width: 205,
                  height: 227,
                )),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFB7935F)),
              ),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    'اسم السورة',
                    style: TextStyle(
                      fontFamily: 'ElMessiri',
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center,
                  ))
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: _suras.length,
                  itemBuilder: (context, index) {
                    return Center(child: Text(_suras[index],style:TextStyle(fontSize: 30,fontFamily:'ReemKufi',fontWeight: FontWeight.w500) ));
                  }),
            )
          ]),
        ),
      ),
    ));
  }
}
