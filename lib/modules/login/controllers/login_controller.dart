
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:getx_stack/app_view.dart';
import 'package:getx_stack/modules/auth/auth-service.dart';
import 'package:getx_stack/modules/login/models/login_request.dart';
import 'package:getx_stack/modules/login/services/login_service.dart';
import 'package:reactive_forms/reactive_forms.dart';

class LoginController extends GetxController  {
  final authService = Get.find<AuthService>();
  final loginApiService = LoginAPIService();

  final loginForm = FormGroup({
    'email': FormControl<String>(),
    'password': FormControl<String>(),
  });

  void loginHandler() {
    var email = loginForm.control('email').value;
    var password = loginForm.control('password').value;
    var loginRequest = LoginRequest(email: email, password: password);

    loginApiService.login(loginRequest)
      .then((response) {
        print(response.accessToken);
        authService.saveUserSession(response.accessToken);

        Get.to(AppView());
      })
      .catchError((Object obj) {
        switch (obj.runtimeType) {
          case DioError:
            final res = (obj as DioError).response;
            print("Got error : ${res?.statusCode} -> ${res?.statusMessage}");
            // print(res);
            // logger.e("Got error : ${res?.statusCode} -> ${res?.statusMessage}");
            // this.showErrorDialog(res.toString());
            break;

          default:
        }
      })
      .whenComplete(() {
        // cleanup
      });
  }

}