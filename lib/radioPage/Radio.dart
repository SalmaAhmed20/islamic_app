import 'package:flutter/material.dart';
import 'package:quran/App/IslamyText.dart';
import 'package:provider/provider.dart';
import 'package:quran/radioPage/ApiManger.dart';
import 'package:quran/radioPage/RadiosResponse.dart';
import '../Provider-lang-theme/providerlangTheme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:radio_player/radio_player.dart';
//import 'package:http/http.dart'as http;

class radio extends StatefulWidget {

  static const ROUTE_NAME = "radio";

  @override
  _radioState createState() => _radioState();
}

class _radioState extends State<radio> {
  bool isPlay = false;
  late ProviderLangTheme provider;
  late Future<RadiosResponse> newsFuture;
  RadioPlayer radioPlayer = RadioPlayer();
  static int index=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    provider = Provider.of<ProviderLangTheme>(context);
    newsFuture = getRadioResponse(provider.currentLocale=='ar');
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.isDark()
                  ? "assets/images/Dark/darkbasicbg@2x.png"
                  : "assets/images/2.0x/lightbasicbg@2x.png"),
              fit: BoxFit.fill),
        ),
        child: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Expanded(
                    child: IslamyText(AppLocalizations.of(context)!.title),
                  )
                ]),
                SizedBox(height: 40),
                Row(children: [
                  Expanded(
                    child: Image(
                        image: AssetImage("assets/images/2.0x/radio@2x.png")),
                  ),
                ]),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        AppLocalizations.of(context)!.title8,
                        style: TextStyle(
                          color:
                              provider.isDark() ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'ELMessiri',
                          fontSize: 23,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Center(
                    child: FutureBuilder<RadiosResponse>(
                        future: newsFuture,
                        builder: (context, snapShot) {
                          if (snapShot.hasData) {
                            return Directionality(
                              textDirection: TextDirection.ltr,
                              child: Row(children: [
                               /* Expanded(
                                  child: Text(
                                    snapShot.data!.radios.elementAt(index).name,
                                    style: TextStyle(
                                      color:
                                      provider.isDark() ? Colors.white : Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'ELMessiri',
                                      fontSize: 23,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),*/
                                Expanded(
                                  child: IconButton(
                                    icon: ImageIcon(AssetImage(
                                        "assets/icons/2.0x/metro-next@2x.png")),
                                    iconSize: 25,
                                    color: provider.isDark()
                                        ? Color(0xFFFBC927)
                                        : Color.fromRGBO(
                                            183, 147, 95, 0.9882352941176471),
                                    onPressed: () {
                                      index==0? index: index--;
                                      radioPlayer.setMediaItem('', snapShot.data!.radios.elementAt(index).radio_url);
                                      setState(() {});
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: IconButton(
                                    icon: isPlay?Icon(Icons.pause):ImageIcon(AssetImage(
                                        "assets/icons/2.0x/awesome-play@2x.png")
                                    ),
                                    iconSize: 40,
                                    color: provider.isDark()
                                        ? Color(0xFFFBC927)
                                        : Color.fromRGBO(
                                            183, 147, 95, 0.9882352941176471),
                                    onPressed: () {
                                      radioPlayer.setMediaItem('',snapShot.data!.radios.elementAt(index).radio_url);
                                      isPlay = isPlay?false:true;
                                      isPlay ? radioPlayer.play() : radioPlayer.pause();
                                      setState(() {});
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: IconButton(
                                    icon: ImageIcon(AssetImage(
                                        "assets/icons/2.0x/metro-next-right@2x.png")),
                                    iconSize: 25,
                                    color: provider.isDark()
                                        ? Color(0xFFFBC927)
                                        : Color.fromRGBO(
                                            183, 147, 95, 0.9882352941176471),
                                    onPressed: () {
                                      index == snapShot.data!.radios.length? index : index++;
                                      radioPlayer.setMediaItem('', snapShot.data!.radios.elementAt(index).radio_url);
                                      setState(() {});

                                    },
                                  ),
                                ),
                              ]),
                            );
                          } else if (snapShot.hasError) {
                            return Text("Error loading radio");
                          }
                          return CircularProgressIndicator();
                        })),
                SizedBox(height: 80),
              ]),
        ),
      ),
    );
  }
}
