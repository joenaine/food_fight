import 'dart:convert';

import 'package:http/http.dart';

class SendAdressRepository {
  static Future<bool> sendAdress(Map<String, dynamic> pswData) async {
    try {
      String tok = 'Wr13dcc34SDC231';
      Response response = await post(
        Uri.parse('https://food-battle-app.onrender.com/send'),
        body: jsonEncode(pswData),
        headers: {
          'Authorization': tok,
          "Accept": "application/json",
          "content-type": "application/json"
        },
      );
      print(response.body);
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }
}
