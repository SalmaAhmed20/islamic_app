import 'package:flutter/material.dart';

import 'content.dart';
import 'main.dart';
class hadeth_content extends StatelessWidget {
  final int index;
  hadeth_content (this.index);
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Container(
        //margin:const EdgeInsets.only(top:10) ,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/bg3.png"), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text('اسلامى',style: TextStyle(fontSize: 35,color: Colors.black)),
            centerTitle: true,
            leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 35,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder:(context)=>MyApp()),
                  );
                }),
          ),
          body: content(index),

        ),
      ),



    );
  }
}