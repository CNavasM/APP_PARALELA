import 'package:flutter/cupertino.dart';
import 'package:app_utem_grupoj/features/login/datasource/login_datasource.dart';
import 'package:app_utem_grupoj/features/login/models/login_model.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  RxBool loading = false.obs;

  Rx<LoginModel> login = LoginModel().obs;
  RxString url = ''.obs;
  Rx<UniqueKey> key = UniqueKey().obs;

  void loginApi() async {
    try {
      login.value = await LoginService.login();
      url.value = login.value.redirectUrl!;
    } catch (e) {
      print('error');
    }
  }
}
