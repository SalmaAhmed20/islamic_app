import 'dart:convert';
import 'package:quran/radioPage/RadiosResponse.dart';
import 'package:http/http.dart' as http;

Future<RadiosResponse> getRadioResponse(bool isArabic ) async {
  final uri = Uri.https('api.mp3quran.net',isArabic ?'radios/radio_arabic.json':'radios/radio_english.json');
  final response = await http.get(uri);
  print(response.body);
  if (response.statusCode == 200) {
    return RadiosResponse.fromJsonMap(jsonDecode(response.body));
  } else {
    throw Exception(response.body);
  }
}