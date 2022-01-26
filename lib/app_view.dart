
import 'package:flutter/material.dart';
import 'package:getx_stack/app_view_controller.dart';
import 'package:get/get.dart';

class AppView extends StatelessWidget {
  // int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
    ),
    Text(
      'Index 1: Favorites',
    ),
  ];

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final AppViewController controller = Get.put(AppViewController());
    
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(controller.selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: controller.selectedIndex,
        onTap: controller.onItemTapped,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
            label: 'Favorites',
            icon: Icon(Icons.list)
          ),
        ],
      ),
    ); 
  }
  
}