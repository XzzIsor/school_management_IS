// To parse this JSON data, do
//
//     final user = userFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class User {
  User({
    required this.id,
    required this.idType,
    required this.name,
    required this.lastName,
    required this.email,
    required this.type,
    required this.contract,
    required this.area,
    required this.teacher,
    required this.state,
    required this.hoursWeek,
    required this.hoursDay,
  });

  String id;
  String idType;
  String name;
  String lastName;
  String email;
  String type;
  String contract;
  String area;
  bool teacher;
  bool state;
  int hoursWeek;
  int hoursDay;

  User copyWith({
    String? id,
    String? idType,
    String? name,
    String? lastName,
    String? email,
    String? type,
    String? contract,
    String? area,
    bool? teacher,
    bool? state,
    int? hoursWeek,
    int? hoursDay,
  }) =>
      User(
        id: id ?? this.id,
        idType: idType ?? this.idType,
        name: name ?? this.name,
        lastName: lastName ?? this.lastName,
        email: email ?? this.email,
        type: type ?? this.type,
        contract: contract ?? this.contract,
        area: area ?? this.area,
        teacher: teacher ?? this.teacher,
        state: state ?? this.state,
        hoursWeek: hoursWeek ?? this.hoursWeek,
        hoursDay: hoursDay ?? this.hoursDay,
      );

  factory User.fromJson(String str) => User.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory User.fromMap(Map<String, dynamic> json) => User(
        id: json["id"],
        idType: json["idType"],
        name: json["name"],
        lastName: json["lastName"],
        email: json["email"],
        type: json["type"],
        contract: json["contract"],
        area: json["area"],
        teacher: json["teacher"],
        state: json["state"],
        hoursWeek: json["hoursWeek"],
        hoursDay: json["hoursDay"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "idType": idType,
        "name": name,
        "lastname": lastName,
        "email": email,
        "type": type,
        "contract": contract,
        "area": area,
        "teacher": teacher,
        "state": state,
        "hoursWeek": hoursWeek,
        "hoursDay": hoursDay,
      };
}
