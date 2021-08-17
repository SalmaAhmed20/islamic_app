import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'SplashScreen.dart';
import 'providerlangTheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (buildContext)=>proLangThm(),
    builder: (buildContext,widget){
      final provider=Provider.of<proLangThm>(buildContext);
      return MaterialApp(
        themeMode: provider.get_themeMode(),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      );
    });

  }
}


