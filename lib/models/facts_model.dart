// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

class Welcome {
  String? fact;
  int? length;

  Welcome({
    this.fact,
    this.length,
  });

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        fact: json["fact"],
        length: json["length"],
      );
}
