import 'package:app_utem_grupoj/features/home/controllers/home_controller.dart';
import 'package:app_utem_grupoj/features/qr/controller/correcto_controller.dart';
import 'package:get/get.dart';

class CorrectoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(CorrectoController.new);
  }
}
