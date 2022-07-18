import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AsistenciaScreen extends StatelessWidget {
  const AsistenciaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: AppBar(
            backgroundColor: Colors.blue[10],
            title: Text('Asistencias'),
            centerTitle: true,
          ),
        ),
        drawer: menulateral(),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Text(
                            'Sala:',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('Seccion:', style: TextStyle(fontSize: 20)),
                          SizedBox(
                            height: 20,
                          ),
                          Text('JWT:', style: TextStyle(fontSize: 20)),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              )
            ],
          ),
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
              Get.toNamed('/ingresar', arguments: ['jwt']);
            },
          ),
          new ListTile(
            title: Text("Integrantes"),
            leading: Icon(Icons.accessibility_new_sharp),
            onTap: () {
              Get.toNamed('/equipo', arguments: ['jwt']);
            },
          ),
        ],
      ),
    );
  }
}
