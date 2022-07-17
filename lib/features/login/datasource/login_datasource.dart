import 'package:dio/dio.dart';
import 'package:app_utem_grupoj/features/login/models/login_model.dart';
import 'package:get/get.dart';

class LoginService extends GetxService {
  static Dio client = Dio();

  static Future<LoginModel> login() async {
    var response = await client.get(
      'https://api.sebastian.cl/classroom/v1/authentication/login',
    );
    return LoginModel.fromJson(response.data);
  }
}
