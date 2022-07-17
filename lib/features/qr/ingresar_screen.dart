import 'package:flutter/material.dart'
    show
        BuildContext,
        Column,
        ElevatedButton,
        Key,
        MainAxisAlignment,
        Row,
        Scaffold,
        SizedBox,
        StatelessWidget,
        Text,
        Image,
        TextStyle,
        Widget;
import 'package:get/get.dart';

class IngresarScreen extends StatelessWidget {
  const IngresarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                'Cuando tengas tu QR en mano Ingresa',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                width: 20,
              ),
              Image.asset('assets/QRCODE.png')
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
                onPressed: () {
                  Get.offAllNamed('/qr',
                      arguments: {'jwt': 'algo', 'tipo': 'ingresar'});
                },
                child: Text('Ingresar')),
            SizedBox(
              width: 10,
            ),
          ])
        ],
      ),
    );
  }
}
