import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  static const String HEADER_ACCEPT = 'Accept';
  static const String HEADER_CONTENT_TYPE = "Content-Type";
  static const String HEADER_AUTHORIZATION = "Authorization";
  static const String HEADER_CLIENT_APP = "Client-App";

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    // If user is authenticated then add token to header
    // var token = await AuthPreference.getToken();
    // if (token != null) {
    //   options.headers[HEADER_AUTHORIZATION] = "Bearer " + token;
    // }
    // else {
    //   options.headers.remove(HEADER_AUTHORIZATION);
    // }

    return super.onRequest(options, handler);
  }
}