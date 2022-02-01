
import 'package:get/get.dart';
import 'package:getx_stack/modules/login/models/login_request.dart';
import 'package:reactive_forms/reactive_forms.dart';

class LoginController extends GetxController  {
  final loginForm = FormGroup({
    'email': FormControl<String>(),
    'password': FormControl<String>(),
  });

  // final apiService = NewsAPIService();
  // List<Article> newsList = [];

  void loginHandler() {
    var email = loginForm.control('email').value;
    var password = loginForm.control('password').value;
    var loginRequest = LoginRequest(email: email, password: password);
    var loginResponse;
  }

}