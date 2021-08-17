import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:quran/providerlangTheme.dart';
import 'SplashScreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (buildContext) => providerlangTheme(),
      builder: (buildContext, widget) {
        final provider = Provider.of<providerlangTheme>(buildContext);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          // supportedLocales: L10n.all,

          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          locale: Locale.fromSubtags(languageCode: provider.currentLocale),
          supportedLocales: AppLocalizations.supportedLocales,
          home: SplashScreen(),
        );
      },

    );
  }
}

