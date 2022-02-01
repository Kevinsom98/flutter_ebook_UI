
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_stack/modules/news/controllers/news_list_controller.dart';

class NewsListView extends StatelessWidget  {

  const NewsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewsListController>(
      init: NewsListController(),
      builder: (_) => Scaffold(
        body: Center(child: Text("News view"),),
      )
      // ListView.builder(
      //   itemCount: _.newsList.length,
      //   itemBuilder: (ctx, index) {
      //     return Card(
      //       child: ListTile(
      //         title: Text(_.newsList[index].title!),
      //         subtitle: Text(_.newsList[index].content!),
      //       )
      //     );
      //   }
      // )
    );
  }

}