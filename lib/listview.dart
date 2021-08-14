import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'content.dart';
import 'hadeth.dart';

class view extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
                      fontSize: 23,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                      fontFamily: 'JF'),
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
    );
  }
}
