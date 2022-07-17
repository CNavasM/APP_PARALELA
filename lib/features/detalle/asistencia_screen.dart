import 'package:flutter/material.dart';
import 'package:app_utem_grupoj/features/detalle/controller/asistencia_controller.dart';
import 'package:get/get.dart';

class AsistenciaScreen extends GetWidget<AsistenciaController> {
  const AsistenciaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    controller.AsistenciaApi(data['jwt']);
    return Scaffold(
        body: Obx(
      () => controller.asistencias.value.isEmpty
          ? Column()
          : Container(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  itemCount: controller.asistencias.value.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Text(
                            'Sala: ${controller.asistencias.value[index].classroom!}'),
                        Text(
                            'Seccion: ${controller.asistencias.value[index].subject!}'),
                        Text(
                            'Hora Entrada: ${controller.asistencias.value[index].entrance!.toString()}'),
                        Text(
                            'Hora Salida: ${controller.asistencias.value[index].leaving!.toString()}'),
                        Text(
                            'Correo: ${controller.asistencias.value[index].email!}'),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    );
                  }),
            ),
    ));
  }
}
