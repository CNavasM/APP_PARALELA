import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class CorrectoService extends GetxService {
  static Dio client = Dio();

  static Future<bool> ingresar(String jwt, Map<String, String> datos) async {
    try {
      var response = await client.post(
          'https://api.sebastian.cl/classroom/v1/classroom/getin',
          data: jsonEncode(datos),
          options: Options(headers: {
            'jwt': jwt,
            HttpHeaders.contentTypeHeader: "application/json",
          }));
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
