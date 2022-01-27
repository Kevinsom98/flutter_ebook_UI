import 'package:get/get.dart';
import 'package:json_annotation/json_annotation.dart';

import 'article.dart';

part 'article_list_response.g.dart';

@JsonSerializable()
class ArticleListResponse {
  List<Article> articles;
  int totalResults;
  String status;

  ArticleListResponse({
    required this.articles,
    required this.totalResults,
    required this.status,
  });

  factory ArticleListResponse.fromJson(Map<String, dynamic> json) => _$ArticleListResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleListResponseToJson(this);
}