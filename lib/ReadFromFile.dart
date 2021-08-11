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

  Future<List<String>> _loadSuras() async {
    String Path = widget.path;
    List<String> name = [];
    await rootBundle.loadString(Path).then((q) {
      q = q.replaceAll(new RegExp(r"\s+"), "");
      q = q.replaceAll('"', '');
      name = q.split(',');
    });
    return name;
  }

  _setup() async {
    // Retrieve the questions (Processed in the background)
    final List<String> suras = await _loadSuras();
    setState(() {
      Names = suras;
    });
  }

  @override
  void initState() {
    _setup();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: Names.length,
        itemBuilder: (context, index) {
          return Center(
            child: new TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SuraContent('$index.txt'))
                );
              },
              child: new Text(Names[index],
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'ReemKufi',
                      color: Colors.black,
                      fontWeight: FontWeight.w500)),
            ),
          );
        });
  }
}
