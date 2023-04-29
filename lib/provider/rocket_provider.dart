import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:rocket_app/models/rocket_modal.dart';
import 'package:http/http.dart';

class RocketProvider with ChangeNotifier {
  RocketModal? currentpage ;

  Future<String> getBaseData(
      {String url =
          "https://spacelaunchnow.me/api/ll/2.1.0/event/upcoming/?format=json"}) async {
    try {
      var response = await get(Uri.parse(url),
          headers: {'Content-Type': 'application/json'});
      if (response.statusCode == 200) {
        var result = json.decode(response.body);
        currentpage = RocketModal.fromJson(result);
        notifyListeners();

        return "working";
      } else {
        var result = json.decode(response.body);
        print(result);
        throw ('${result['detail']} ${response.statusCode}');
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
