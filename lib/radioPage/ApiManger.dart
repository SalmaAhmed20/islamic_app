import 'dart:convert';
import 'package:quran/radioPage/RadiosResponse.dart';
import 'package:http/http.dart' as http;

Future<RadiosResponse> getRadioResponse() async {
  final uri = Uri.https('api.mp3quran.net', 'radios/radio_arabic.json');
  final response = await http.get(uri);
  print(response.body);
  if (response.statusCode == 200) {
    return RadiosResponse.fromJsonMap(jsonDecode(response.body));
  } else {
    throw Exception(response.body);
  }
}