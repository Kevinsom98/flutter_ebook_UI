import 'package:dio/dio.dart';
import 'package:getx_stack/modules/auth/models/auth_user.dart';
import 'package:getx_stack/modules/login/models/login_request.dart';
import 'package:getx_stack/modules/login/models/login_response.dart';
import 'package:retrofit/retrofit.dart';

part 'login_api.g.dart';


@RestApi()
abstract class LoginAPI {

  factory LoginAPI(Dio dio) = _LoginAPI;

  @POST("/tourist/login")
  Future<LoginResponse> login(@Body() LoginRequest model);

  @GET("/me")
  Future<AuthUser> me();

}