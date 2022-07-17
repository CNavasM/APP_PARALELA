import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:app_utem_grupoj/features/login/controllers/login_controller.dart';
import 'package:app_utem_grupoj/features/login/datasource/login_datasource.dart';
import 'package:app_utem_grupoj/features/login/login_web_view_screen.dart';
import 'package:app_utem_grupoj/features/login/models/login_model.dart';
import 'package:get/get.dart';

class LoginScreen extends GetWidget<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Obx(() => controller.url.value == ''
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/Cuenta.png'),
                  Text(
                    'INGRESA A TU CUENTA UTEM',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: GoogleAuthButton(
                      style: AuthButtonStyle(
                        iconType: AuthIconType.outlined,
                      ),
                      text: 'Ingresar con Google',
                      onPressed: () async {
                        controller.loginApi();
                        print(controller.url.value);
                      },
                    ),
                  )
                ],
              )
            : LoginWebViewScreen(controller.url.value)));
  }
}
