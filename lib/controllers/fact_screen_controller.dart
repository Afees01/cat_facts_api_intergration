import 'dart:convert';
import 'dart:developer';

import 'package:cat_facts_api_intergration/models/facts_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FactScreenController with ChangeNotifier {
  Welcome? resobj;
  bool isLoading = false;
  Future<void> getfact() async {
    final url = Uri.parse("https://catfact.ninja/fact");
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        resobj = welcomeFromJson(response.body);
      }
    } catch (e) {
      print(e);
    }
    isLoading = false;
    notifyListeners();
  }
}
