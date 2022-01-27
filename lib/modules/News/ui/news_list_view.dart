
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_stack/modules/News/controllers/news_list_controller.dart';

class NewsListView extends StatelessWidget  {

  const NewsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewsListController>(
      init: NewsListController(),
      builder: (_) => Text('Hello world')
    );
  }

}