import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'OtherPages/SplashScreen.dart';
import 'Provider-lang-theme/providerlangTheme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(ChangeNotifierProvider(
      child: MyApp(),
      create: (BuildContext context) =>
          proLangThm(((prefs.getBool("isDark")??false)))
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<proLangThm>(builder: (context, theme, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      );
    });
  }
}
