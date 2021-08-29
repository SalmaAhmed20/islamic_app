class Radios {

  String name;
  String radio_url;

  Radios.fromJsonMap(Map<String, dynamic> map):
        name = map["name"],
        radio_url = map["radio_url"];
}
