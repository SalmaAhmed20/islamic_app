import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider-lang-theme/providerlangTheme.dart';

class IslamyText extends StatelessWidget {
  String Txt = '';
  IslamyText(this.Txt);
  late ProviderLangTheme provider;
  @override
  Widget build(BuildContext context) {
    provider =Provider.of<ProviderLangTheme>(context);
    return Text(
      Txt,
      style: TextStyle(
          color: provider.isDark()?Colors.white:Colors.black,
          fontFamily: 'ELMessiri',
          fontWeight: FontWeight.bold,
          fontSize: 30),
      textAlign: TextAlign.center,
    );
  }
}
