import 'package:get/get.dart';
import 'package:getx_stack/core/storage_service.dart';
import 'package:injectable/injectable.dart';

class AuthService extends GetxService {
  final storageService = Get.find<StorageService>();

  @override
  onInit() {
    print("Initing as setting false");
    return super.onInit();
  }

  bool isAuthenticated() {
    if (storageService.getItem('access_token') != null) {
      return true;
    }
    else {
      return false;
    }
  }

  void saveUserSession(String accessToken) {
    storageService.setItem('access_token', accessToken);
  }

  void clearUserSession() {
    storageService.clearItem('access_token');
  }

  void saveUserDetails(String email) {
    storageService.setItem('email', email);
  }

  void clearUserDetails() {
    storageService.clearItem('email');
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