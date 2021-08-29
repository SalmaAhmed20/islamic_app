import 'package:quran/radioPage/Radios.dart';

class RadiosResponse {
  List<Radios> radios;

  RadiosResponse.fromJsonMap(Map<String, dynamic> map):
        radios = List<Radios>.from(map["radios"].map((it) => Radios.fromJsonMap(it)));

}