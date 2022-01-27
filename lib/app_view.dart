
import 'package:flutter/material.dart';
import 'package:getx_stack/app_view_controller.dart';
import 'package:get/get.dart';
import 'package:getx_stack/modules/News/ui/news_list_view.dart';

class AppView extends StatelessWidget {
  // int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    NewsListView(),
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
    return GetBuilder<AppViewController>(
      init: AppViewController(),
      builder: (_) => Scaffold(
        body: Center(child: _widgetOptions.elementAt(_.selectedIndex)),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _.selectedIndex,
          onTap: _.onItemTapped,
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
      )
    ); 
  }
  
}