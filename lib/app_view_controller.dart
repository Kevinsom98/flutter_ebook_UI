import 'package:get/get.dart';

class AppViewController extends GetxController {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    print('Index tapped');
    print(index.toString());
    selectedIndex = index;

    update();
  }
}