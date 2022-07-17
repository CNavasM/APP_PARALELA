import 'package:flutter/material.dart';
import 'package:app_utem_grupoj/features/login/controllers/login_controller.dart';
import 'package:app_utem_grupoj/routes/my_routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/login",
      getPages: routes(),
      title: 'Utem Asistencia',
      initialBinding: BindingsBuilder(() {
        Get.put(LoginController());
      }),
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
    );
  }
}
