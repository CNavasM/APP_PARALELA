import 'package:app_utem_grupoj/features/detalle/asistencia_screen.dart'
    show AsistenciaScreen;

import 'package:app_utem_grupoj/features/home/controllers/home_binding.dart';
import 'package:app_utem_grupoj/features/home/home_screen.dart';
import 'package:app_utem_grupoj/features/integrantes/integrantes_screen.dart';
import 'package:app_utem_grupoj/features/login/controllers/login_binding.dart';
import 'package:app_utem_grupoj/features/login/login_screen.dart';
import 'package:app_utem_grupoj/features/login/login_web_view_screen.dart';
import 'package:app_utem_grupoj/features/qr/controller/correcto_binding.dart';
import 'package:app_utem_grupoj/features/qr/correcto_screen.dart';
import 'package:app_utem_grupoj/features/qr/ingresar_screen.dart';
import 'package:app_utem_grupoj/features/qr/qr_screen.dart';
import 'package:get/get.dart';

dynamic routes() => [
      GetPage(name: '/login', page: LoginScreen.new, binding: LoginBinding()),
      GetPage(name: '/home', page: HomeScreen.new, binding: HomeBinding()),
      GetPage(name: '/qr', page: QrScan.new),
      GetPage(name: '/ingresar', page: IngresarScreen.new),
      GetPage(
        name: '/asistencias',
        page: AsistenciaScreen.new,
      ),
      GetPage(name: '/equipo', page: EquipoScreen.new),
      GetPage(
          name: '/correcto',
          page: CorrectoScreen.new,
          binding: CorrectoBinding())
    ];
