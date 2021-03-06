import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'OtherPages/SplashScreen.dart';
import 'Provider-lang-theme/providerlangTheme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(ChangeNotifierProvider(
      child: MyApp(),
      create: (BuildContext context) =>
          ProviderLangTheme(((prefs.getBool("isDark") ?? false)),prefs.getBool("isArab") ?? true)));
}

class MyApp extends StatelessWidget {
  late ProviderLangTheme provider;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    provider = Provider.of<ProviderLangTheme>(context);
    return Consumer<ProviderLangTheme>(builder: (context, theme, child) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          locale: Locale.fromSubtags(languageCode: provider.currentLocale),
          supportedLocales: AppLocalizations.supportedLocales,
          home: SplashScreen());
    });
  }
}
