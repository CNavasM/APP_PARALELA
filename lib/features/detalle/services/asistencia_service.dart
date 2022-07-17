import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:app_utem_grupoj/features/detalle/models/asistencia_model.dart';
import 'package:get/get.dart';

class AsistenciaService extends GetxService {
  static Dio client = Dio();

  static Future<List<AsistenciaModel>> asistencias(String jwt) async {
    var response = await client.get(
        'https://api.sebastian.cl/classroom/v1/classroom/attendances',
        options: Options(headers: {'jwt': jwt}));
    return asistenciaModelFromJson(json.encode(response.data));
  }
}
