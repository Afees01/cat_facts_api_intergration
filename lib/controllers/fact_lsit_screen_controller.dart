import 'package:cat_facts_api_intergration/models/facts_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FactLsitScreenController with ChangeNotifier {
  Catchlist? resobj;
  Future<void> getfactlist() async {
    final url = Uri.parse("https://catfact.ninja/facts");
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        resobj = catchlistFromJson(response.body);
        
      }
    } catch (e) {}
  }
}
