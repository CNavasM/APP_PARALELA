// To parse this JSON data, do
//
//     final asistenciaModel = asistenciaModelFromJson(jsonString);

import 'dart:convert';

List<AsistenciaModel> asistenciaModelFromJson(String str) =>
    List<AsistenciaModel>.from(
        json.decode(str).map((x) => AsistenciaModel.fromJson(x)));

String asistenciaModelToJson(List<AsistenciaModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AsistenciaModel {
  AsistenciaModel({
    this.classroom,
    this.subject,
    this.entrance,
    this.leaving,
    this.email,
  });

  String? classroom;
  String? subject;
  DateTime? entrance;
  DateTime? leaving;
  String? email;

  factory AsistenciaModel.fromJson(Map<String, dynamic> json) =>
      AsistenciaModel(
        classroom: json["classroom"],
        subject: json["subject"],
        entrance: DateTime.parse(json["entrance"]),
        leaving: DateTime.parse(json["leaving"]),
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "classroom": classroom,
        "subject": subject,
        "entrance": entrance!.toIso8601String(),
        "leaving": leaving!.toIso8601String(),
        "email": email,
      };
}
