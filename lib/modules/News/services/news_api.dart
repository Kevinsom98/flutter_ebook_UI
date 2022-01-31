
import 'package:dio/dio.dart';
import 'package:getx_stack/modules/news/models/article_list_response.dart';
import 'package:retrofit/retrofit.dart';

part 'news_api.g.dart';

@RestApi()
abstract class NewsAPI {
  factory NewsAPI(Dio dio) = _NewsAPI;

  @GET("/everything")
  Future<ArticleListResponse> page(
    @Query("apiKey")  String apiKey,
    @Query("q") String query,
  );
}