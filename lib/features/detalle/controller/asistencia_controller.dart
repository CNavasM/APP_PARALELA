import 'package:app_utem_grupoj/features/detalle/models/asistencia_model.dart';
import 'package:app_utem_grupoj/features/detalle/services/asistencia_service.dart';
import 'package:get/get.dart';

class AsistenciaController extends GetxController {
  RxList<AsistenciaModel> asistencias =
      List<AsistenciaModel>.empty(growable: true).obs;

  void AsistenciaApi(String jwt) async {
    try {
      asistencias.value = await AsistenciaService.asistencias(jwt);
    } catch (e) {
      print('error');
      print(e);
    }
  }
}
