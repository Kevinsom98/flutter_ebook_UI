

import 'package:getx_stack/core/http_helper.dart';
import 'package:getx_stack/modules/news/models/article_list_response.dart';
import 'package:injectable/injectable.dart';

import 'news_api.dart';

@lazySingleton
class NewsAPIService {
  final api = NewsAPI(HttpHelper().dioClient());

  Future<ArticleListResponse> page() async {
    return api.page('ab28a52ee6b64e22b19d3fb15b47016f', 'bitcoin');
  }

}