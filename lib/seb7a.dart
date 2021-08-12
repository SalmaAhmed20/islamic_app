import 'package:flutter/material.dart';

class seb7a extends StatelessWidget {
  degreeOfRotate Degree;
  seb7a(this.Degree);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Image(
                image: AssetImage("assets/images/2.0x/head of seb7a@2x.png"),
                width: 41,
                height: 50,
              ),
              new RotationTransition(
                turns: new AlwaysStoppedAnimation(Degree.degree / 360),
                child: Image(
                  image: AssetImage("assets/images/2.0x/body of seb7a@2x.png"),
                  width: 205,
                  height: 200,
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}

class degreeOfRotate {
  int degree;
  degreeOfRotate(this.degree);
}