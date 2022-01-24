import 'package:dio/dio.dart';

import '../app_config.dart';

/*
 * This is a singleton class to be used for HTTP requests.
 */
class HttpHelper {
  static final HttpHelper _instance = HttpHelper._internal();

  factory HttpHelper() {
    return _instance;
  }

  HttpHelper._internal();

  Dio dioClient() {
    var dio = Dio();
    dio.options.baseUrl = AppConfig.getDefault().apiUrl;
    dio.options.headers["Content-Type"] = "application/json";
    dio.options.headers["Accept"] = "application/json";

    // TODO
    // dio.interceptors.add(AuthInterceptor());
    // dio.interceptors.add(InterceptorsWrapper(
    //   onError: (DioError e, ErrorInterceptorHandler handler) async {

    //     if (e.response?.statusCode == 401) {
    //       dio.interceptors.requestLock.lock();
    //       dio.interceptors.responseLock.lock();

    //       // Logout user
    //       var token = await AuthPreference.getToken();
    //       if (token != null) {
    //         _authService.clearUserSession();
    //         _authService.clearUserDetails();

    //         _navigationService.clearStackAndShow(Routes.loginView);
    //       }

    //       dio.interceptors.requestLock.unlock();
    //       dio.interceptors.responseLock.unlock();
    //     }
    //     else {
    //       handler.next(e);
    //     }
    //   }
    // ));

    return dio;
  }
}