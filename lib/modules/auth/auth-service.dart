import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

class AuthService extends GetxService {
  late final isAuthenticated;

  @override
  onInit() {
    print("Initing as setting false");
    isAuthenticated = false;
    return super.onInit();
  }

  // updateAuth() {
  //   isAuthenticated = false;
  // }

  // void saveUserSession(LoginResponse model) {
  //   AuthPreference.setToken(model.accessToken);
  //   AuthPreference.setExpiresIn(model.expiresIn);
  // }

  // void clearUserSession() {
  //   AuthPreference.setToken('');
  //   AuthPreference.setExpiresIn(0);
  // }

  // void saveUserDetails(AuthUser user) {
  //   AuthPreference.setEmail(user.email ?? '');
  //   AuthPreference.setFirstName(user.firstName ?? '');
  //   AuthPreference.setLastName(user.lastName ?? '');
  // }

  // void clearUserDetails() {
  //   AuthPreference.setEmail('');
  //   AuthPreference.setFirstName('');
  //   AuthPreference.setLastName('');
  // }

}