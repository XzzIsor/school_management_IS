// To parse this JSON data, do
//
//     final schedule = scheduleFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class Schedule {
    Schedule({
        required this.id,
        required this.idPeriod,
        required this.idUser,
        required this.day,
        required this.hour,
        required this.idCompetency,
        required this.idClassroom,
    });

    String id;
    String idPeriod;
    String idUser;
    String day;
    String hour;
    String idCompetency;
    String idClassroom;

    Schedule copyWith({
        String? id,
        String? idPeriod,
        String? idUser,
        String? day,
        String? hour,
        String? idCompetency,
        String? idClassroom,
    }) => 
        Schedule(
            id: id ?? this.id,
            idPeriod: idPeriod ?? this.idPeriod,
            idUser: idUser ?? this.idUser,
            day: day ?? this.day,
            hour: hour ?? this.hour,
            idCompetency: idCompetency ?? this.idCompetency,
            idClassroom: idClassroom ?? this.idClassroom,
        );

    factory Schedule.fromJson(String str) => Schedule.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Schedule.fromMap(Map<String, dynamic> json) => Schedule(
        id: json["id"],
        idPeriod: json["idPeriod"],
        idUser: json["idUser"],
        day: json["day"],
        hour: json["hour"],
        idCompetency: json["idCompetency"],
        idClassroom: json["idClassroom"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "idPeriod": idPeriod,
        "idUser": idUser,
        "day": day,
        "hour": hour,
        "idCompetency": idCompetency,
        "idClassroom": idClassroom,
    };
}
