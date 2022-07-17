import 'package:flutter/material.dart'
    show BuildContext, Column, Key, Scaffold, Text, Widget;
import 'package:app_utem_grupoj/features/qr/controller/correcto_controller.dart';
import 'package:get/get.dart';

class CorrectoScreen extends GetWidget<CorrectoController> {
  const CorrectoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var datos = Get.arguments;
    if (datos['tipo'] == 'ingresar') {
      controller.IngresarApi(datos['jwt'], {
        'classroom': datos['classroom'],
        'subject': datos['subject'],
        'entrance': '2022-07-15T20:00:37.705Z'
      });
    } else {
      controller.SalirApi(datos['jwt'], {
        'classroom': datos['classroom'],
        'subject': datos['subject'],
        'entrance': '2022-07-15T20:00:35.705Z',
        'leaving': '2022-07-15T21:05:02.007Z'
      });
    }

    return Scaffold(
      body: Column(
        children: [
          Obx(() => Text(controller.correcto.value == true
              ? 'Datos Ingresados Correctamente'
              : 'hubo un problema'))
        ],
      ),
    );
  }
}
