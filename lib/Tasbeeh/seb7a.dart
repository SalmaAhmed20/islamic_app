import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider-lang-theme/providerlangTheme.dart';
class seb7a extends StatelessWidget {
  degreeOfRotate Degree;
  late ProviderLangTheme provider;
  seb7a(this.Degree);

  @override
  Widget build(BuildContext context) {
    provider = Provider.of<ProviderLangTheme>(context);
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Image(
                image: AssetImage(provider.isDark()
                    ?"assets/images/Dark/head of seb7a@2x.png"
                    :"assets/images/2.0x/head of seb7a@2x.png"),
                width: 41,
                height: 50,
              ),
              new RotationTransition(
                turns: new AlwaysStoppedAnimation(Degree.degree / 360),
                child: Image(
                  image: AssetImage(provider.isDark()
                      ? "assets/images/Dark/body of seb7a@2x.png"
                      :"assets/images/2.0x/body of seb7a@2x.png"),
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
