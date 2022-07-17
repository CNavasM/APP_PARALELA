import 'package:app_utem_grupoj/features/detalle/controller/asistencia_controller.dart';
import 'package:get/get.dart';

class AsistenciaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(AsistenciaController.new);
  }
}
