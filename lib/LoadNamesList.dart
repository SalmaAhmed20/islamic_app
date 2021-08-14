import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'SuraContent.dart';

class ReadFrmFileStateState extends StatefulWidget {
  final String path;
  ReadFrmFileStateState(this.path);

  @override
  _ReadFrmFileStateStateState createState() => _ReadFrmFileStateStateState();
}

class _ReadFrmFileStateStateState extends State<ReadFrmFileStateState> {
  List<String> Names = [];
  List<String> Numbers = [];
  Future<List<String>> _loadSuras() async {
    String Path = widget.path;
    List<String> name = [];
    await rootBundle.loadString(Path).then((q) {
      q = q.replaceAll(new RegExp(r"\s+"), "");
      q = q.replaceAll('"', '');
      name = q.split(',');
    });
      await rootBundle.loadString('assets/Texts/sura_size.txt').then((num) {
        Numbers = num.split(' ');
      });
    return name;
  }

  _setup() async {
    // Retrieve the Surars (Processed in the background)
    final List<String> suras = await _loadSuras();
    setState(() {
      Names = suras;
      Numbers = Numbers;
    });
  }

  @override
  void initState() {
    _setup();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: Names.length,
        itemBuilder: (context, index) {
          return Center(
            child: new TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => contant('${index+1}',Names[index])));
              },
              child: Row(
                children: [
                  Expanded(
              child:  new Text(Numbers[index],
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'ReemKufi',
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center)
                ),
                  Expanded(
                    child: new Text(
                         Names[index] ,
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'ReemKufi',
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center)
                 ),
                ],
              ),
            ),
          );
        });
  }
}
