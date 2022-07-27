// To parse this JSON data, do
//
//     final competency = competencyFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Competency competencyFromMap(String str) =>
    Competency.fromMap(json.decode(str));

String competencyToMap(Competency data) => json.encode(data.toMap());

class Competency {
  Competency({
    required this.id,
    required this.name,
  });

  String id;
  String name;

  Competency copyWith({
    String? id,
    String? name,
  }) =>
      Competency(
        id: id ?? this.id,
        name: name ?? this.name,
      );

  factory Competency.fromMap(Map<String, dynamic> json) => Competency(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
      };
}
