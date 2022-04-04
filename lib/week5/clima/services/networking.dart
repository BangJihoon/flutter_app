import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelpter {
  final Uri url;
  NetworkHelpter(this.url);

  Future getData() async {
    http.Response responce = await http.get(url);
    if (responce.statusCode == 200) {
      String data = responce.body;
      var decodedData = jsonDecode(data);
      return decodedData;
    } else
      print(responce.statusCode);
  }
}
