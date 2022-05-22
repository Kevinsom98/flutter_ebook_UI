import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_stack/core/base/ui_helper.dart';
import 'package:getx_stack/core/storage_service.dart';
import 'package:getx_stack/modules/auth/auth-service.dart';
import 'package:getx_stack/modules/auth/auth_guard.dart';

import 'app_view.dart';
import 'modules/login/ui/login_view.dart';

Future<void> main() async {
  await initServices();
  runApp(const MyApp());
}

Future<void> initServices() async {
  await Get.putAsync<StorageService>(() async => await StorageService());
  await Get.putAsync<AuthService>(() async => await AuthService());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: defaultBgColor,
      ),
      initialRoute: '/login',
      getPages: [
        GetPage(name: '/app', page: () => AppView()),
        GetPage(name: '/login', page: () => LoginView())
      ],
    );
  }
}
