import 'package:flutter/material.dart';

/// Screen del equipo, pagina estatica con informacion del team
class EquipoScreen extends StatelessWidget {
  /// Inicializa la pantalla
  const EquipoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
          backgroundColor: Colors.blue[10],
          title: Text('Equipo'),
          centerTitle: true,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Image.asset('assets/Andriuw.png'),
                        Text('Andrés Velásquez'),
                        Text('avelasquezravanal@utem.cl')
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Image.asset('assets/Camilo.png'),
                        Text('Camilo Navas'),
                        Text('camilo.navasm@utem.cl')
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
