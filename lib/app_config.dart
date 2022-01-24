import 'package:flutter/foundation.dart';

class AppConfig {

  static final AppConfig debugConfig = AppConfig(appName: "App Name", apiUrl: "");
  static final AppConfig prodConfig = AppConfig(appName: "App Name", apiUrl: "");

  String appName;
  String apiUrl;
  bool? authenticationRequired;

  AppConfig({
    required this.appName,
    required this.apiUrl,
    this.authenticationRequired,
  });

  static AppConfig getDefault() {
    if (kDebugMode) {
      // default config
      return debugConfig;
    }
    else {
      // release config
      return prodConfig;
    }
  }
}