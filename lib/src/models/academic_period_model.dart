// To parse this JSON data, do
//
//     final academicPeriod = academicPeriodFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

AcademicPeriod academicPeriodFromMap(String str) =>
    AcademicPeriod.fromMap(json.decode(str));

String academicPeriodToMap(AcademicPeriod data) => json.encode(data.toMap());

class AcademicPeriod {
  AcademicPeriod({
    required this.id,
    required this.name,
    required this.startDate,
    required this.endDate,
  });

  String id;
  String name;
  String startDate;
  String endDate;

  AcademicPeriod copyWith({
    String? id,
    String? name,
    String? startDate,
    String? endDate,
  }) =>
      AcademicPeriod(
        id: id ?? this.id,
        name: name ?? this.name,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
      );

  factory AcademicPeriod.fromMap(Map<String, dynamic> json) => AcademicPeriod(
        id: json["id"],
        name: json["name"],
        startDate: json["startDate"],
        endDate: json["endDate"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "startDate": startDate,
        "endDate": endDate,
      };
}
