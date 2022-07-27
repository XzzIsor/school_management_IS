// To parse this JSON data, do
//
//     final classroom = classroomFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Classroom classroomFromMap(String str) => Classroom.fromMap(json.decode(str));

String classroomToMap(Classroom data) => json.encode(data.toMap());

class Classroom {
  Classroom({
    required this.cod,
    required this.name,
    required this.type,
    required this.location,
    required this.capacity,
    required this.state,
  });

  String cod;
  String name;
  String type;
  String location;
  int capacity;
  bool state;

  Classroom copyWith({
    String? cod,
    String? name,
    String? type,
    String? location,
    int? capacity,
    bool? state,
  }) =>
      Classroom(
        cod: cod ?? this.cod,
        name: name ?? this.name,
        type: type ?? this.type,
        location: location ?? this.location,
        capacity: capacity ?? this.capacity,
        state: state ?? this.state,
      );

  factory Classroom.fromMap(Map<String, dynamic> json) => Classroom(
        cod: json["cod"],
        name: json["name"],
        type: json["type"],
        location: json["location"],
        capacity: json["capacity"],
        state: json["state"],
      );

  Map<String, dynamic> toMap() => {
        "cod": cod,
        "name": name,
        "type": type,
        "location": location,
        "capacity": capacity,
        "state": state,
      };
}
