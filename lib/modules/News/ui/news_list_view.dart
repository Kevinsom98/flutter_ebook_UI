
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_stack/core/widgets/error_list_exception_indicator.dart';
import 'package:getx_stack/modules/news/controllers/news_list_controller.dart';
import 'package:getx_stack/modules/news/models/article.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class NewsListView extends StatelessWidget  {

  const NewsListView({Key? key}) : super(key: key);

  static PagingController<int, Article> _pagingController = PagingController(firstPageKey: 0);
  PagingController<int, Article> get pagingController => _pagingController;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewsListController>(
      init: NewsListController(),
      builder: (_) => Scaffold(
        body: RefreshIndicator(
          onRefresh: () => Future.sync(
            () => _pagingController.refresh(),
          ),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: PagedListView<int, Article>.separated(
              pagingController: _pagingController,
              separatorBuilder: (context, index) => SizedBox(height: 8),
              builderDelegate: PagedChildBuilderDelegate<Article>(
                itemBuilder: (context, item, index) => listItem(item, index),
                noItemsFoundIndicatorBuilder: (context) => Text('No record(s) found'),
                firstPageErrorIndicatorBuilder: (context) => ErrorListExceptionIndicator(
                  title: 'Something went wrong!!!',
                  message: 'The application has encountered an unknown error.\n'
                          'Please try again later.',
                  onTryAgain: () => {},
                ),
              ),
            ),
          ),
        ),
      )
    );
  }

  StatelessWidget listItem(Article item, int index) {
    return GestureDetector(
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(item.title ?? ''), 
              
            ],
          ),
        )
      ),
      onTap: () => {},
    );
  }

}