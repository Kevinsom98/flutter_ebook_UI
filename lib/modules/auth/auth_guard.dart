
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_stack/modules/auth/auth-service.dart';

class AuthGuard extends GetMiddleware {
  // Auth service
  final authService = Get.find<AuthService>();

  @override
  int? get priority => -20;

  @override
  RouteSettings? redirect(String? route) {
      if (authService.isAuthenticated()) {
        return RouteSettings(name: '/app');
      }
      else {
        return RouteSettings(name: '/login');
      }
  }
}