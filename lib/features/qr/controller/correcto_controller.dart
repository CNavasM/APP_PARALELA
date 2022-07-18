import 'package:app_utem_grupoj/features/qr/services/correcto_service.dart'
    show CorrectoService;
import 'package:get/get.dart';

class CorrectoController extends GetxController {
  RxBool correcto = true.obs;
  void IngresarApi(String jwt, Map<String, String> data) async {
    try {
      bool info = await CorrectoService.ingresar(jwt, data);
      if (!info) {
        correcto.value = false;
      }
    } catch (e) {
      print('error');
      correcto.value = false;
      print(e);
    }
  }
}
