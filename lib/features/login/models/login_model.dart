// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
    this.token,
    this.sign,
    this.redirectUrl,
    this.created,
  });

  String? token;
  String? sign;
  String? redirectUrl;
  DateTime? created;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        token: json["token"],
        sign: json["sign"],
        redirectUrl: json["redirectUrl"],
        created: DateTime.parse(json["created"]),
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "sign": sign,
        "redirectUrl": redirectUrl,
        "created": created!.toIso8601String(),
      };
}
