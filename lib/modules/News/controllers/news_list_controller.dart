
import 'package:get/get.dart';
import 'package:getx_stack/modules/News/models/article.dart';
import 'package:getx_stack/modules/News/services/news_api.dart';
import 'package:getx_stack/modules/News/services/news_api_service.dart';

class NewsListController extends GetxController  {

  final apiService = NewsAPIService();
  List<Article> newsList = [];

  @override
  void onInit() {
    // Initializations here
    print("Initing");
    getNewsFeed();
    
    super.onInit();
  }

  void getNewsFeed() {
    apiService.page()
      .then((response) {
        newsList = response.articles;

        update();
      })
      .catchError((error) {
        print('An error occurred');
        print(error);
      })
      .whenComplete(() => {
        // Clean up here
      });
  }

}