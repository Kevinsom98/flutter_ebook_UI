import 'package:get/get.dart';
import 'package:localstorage/localstorage.dart';

class StorageService extends GetxService {
  final LocalStorage localStorage = new LocalStorage('app');

  void setItem(key, value) {
    localStorage.setItem(key, value);
  }

  dynamic getItem(key) {
    return localStorage.getItem(key);
  }

  // TODO
  void clearItem(key) {

  } 
}