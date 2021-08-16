import 'package:flutter/material.dart';
import 'ThemeAndLanguage.dart';

class PageBottomSheet extends StatefulWidget {
  @override
  _PageBottomSheetState createState() => _PageBottomSheetState();
}

class _PageBottomSheetState extends State<PageBottomSheet> {
  String flag="language";
  final ThemeAndLanguage t = new ThemeAndLanguage();
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Language'),
              onPressed: () {
                flag="language";
                t.bottomsheets(flag, context);

              },
            ),
            Padding(padding: EdgeInsets.symmetric(vertical:12,),),
            RaisedButton(
              child: Text('Theme'),
              onPressed: () {
                flag="Themes";
                t.bottomsheets( flag,context);

              },
            )
          ],
        ),
      ),
    );
  }


}
