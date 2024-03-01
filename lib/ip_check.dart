// https://api.ipify.org
//regione codice postale e citta e ip   region postal ip city

import "dart:convert";
import "package:http/http.dart" as http;
import "models/info.dart";
const stringUrl= "https://ipapi.co/json";

Future<Info> getIp() async{
  final url = Uri.parse(stringUrl);
  final res = await http.get(url);
  final Map<String,dynamic> data = json.decode(res.body);

  return Info(ip:data["ip"],region:data["region"],city:data["city"],postal:data["postal"]);
}

