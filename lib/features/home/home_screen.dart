// ignore_for_file: lines_longer_than_80_chars

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:app_utem_grupoj/features/home/controllers/home_controller.dart';
import 'package:get/get.dart';

/// Pantalla principal de la app
class HomeScreen extends GetWidget<HomeController> {
  /// Inicializa pantalla home
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    controller.jwt.value = data['jwt'];
    return Scaffold(
        backgroundColor: Colors.blueGrey[50],
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: AppBar(
            backgroundColor: Colors.blue[10],
            title: Text('QR UTEM'),
            centerTitle: true,
          ),
        ),
        drawer: menulateral(),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/Utemlogo.png',
                      height: 300,
                      width: 300,
                    ),
                    Text(
                      'Bienvenido',
                      style: TextStyle(fontSize: 50),
                    ),
                    Text('Ve al menú y marca asistencia')
                  ],
                )
              ],
            )
          ],
        ));
  }
}

class menulateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountName: Text('Bienvenidos'),
              accountEmail: Text("Elija una opcion"),
              currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text('U', style: TextStyle(fontSize: 40.0)))),
          new ListTile(
            title: Text("LectorQR"),
            leading: Icon(Icons.qr_code),
            onTap: () {
              Get.toNamed('/ingresar');
            },
          ),
          new ListTile(
            title: Text("Asistencia"),
            leading: Icon(Icons.access_alarm),
            onTap: () {
              Get.offAllNamed('/asistencias', arguments: ['jwt']);
            },
          ),
          new ListTile(
            title: Text("Integrantes"),
            leading: Icon(Icons.accessibility_new_sharp),
            onTap: () {
              Get.toNamed('/equipo');
            },
          ),
        ],
      ),
    );
  }
}
