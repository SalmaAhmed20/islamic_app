
import 'package:flutter/material.dart';

class ThemeAndLanguage{
  void bottomsheets(String flag,BuildContext context) {
    showModalBottomSheet(
        context: context,
        elevation: 50.0,
        builder: (context) {
          return Container(
            color: Color(0xFF737373),
            height: 180,
            child: Container(
              child:
              flag=="language"?(bottomSheetLanguage( context)):bottomSheetTheme( context),
              decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(10),
                    topRight: const Radius.circular(10),
                  )
              ),
            ),
          );
        });
  }
  Column bottomSheetLanguage(BuildContext context) {
    return Column(

      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        ListTile(
          title: Text('English',textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20.0,fontFamily: 'ElMessiri',
                shadows: [
                  Shadow(
                      color: Colors.black26, offset: Offset(10, 5), blurRadius: 5)
                ]),),
          onTap: () => pop( context),
        ),
        ListTile(
          title: Text('العربية',textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20.0,fontFamily: 'ElMessiri',
                shadows: [
                  Shadow(
                      color: Colors.black26, offset: Offset(10, 5), blurRadius: 5)
                ]),
          ),
          onTap: () => pop( context),
        )
      ],
    );
  }

  Column bottomSheetTheme(BuildContext context) {
    return Column(

      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        ListTile(
          title: Text('Light',textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20.0,fontFamily: 'ElMessiri',
                shadows: [
                  Shadow(
                      color: Colors.black26, offset: Offset(10, 5), blurRadius: 5)
                ]),),
          onTap: () => pop(context),
        ),
        ListTile(
          title: Text('Dark',textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20.0,fontFamily: 'ElMessiri',
                shadows: [
                  Shadow(
                      color: Colors.black26, offset: Offset(10, 5), blurRadius: 5)
                ]),
          ),
          onTap: () => pop( context),
        )
      ],
    );
  }

  void pop(BuildContext context) {
    Navigator.pop(context);
  }

}