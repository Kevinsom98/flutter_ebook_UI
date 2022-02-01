import 'package:getx_stack/core/http_helper.dart';
import 'package:getx_stack/modules/login/models/login_request.dart';
import 'package:getx_stack/modules/login/models/login_response.dart';
import 'package:injectable/injectable.dart';

import 'login_api.dart';

@lazySingleton
class LoginAPIService {
  final api = LoginAPI(HttpHelper().dioClient());

  Future<LoginResponse> login(LoginRequest model) async {
    return api.login(model);
  }

}