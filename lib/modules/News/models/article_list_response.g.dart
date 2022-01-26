// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleListResponse _$ArticleListResponseFromJson(Map<String, dynamic> json) =>
    ArticleListResponse(
      articles: (json['articles'] as List<dynamic>)
          .map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalResults: json['totalResults'] as int,
      status: json['status'] as String,
    );

Map<String, dynamic> _$ArticleListResponseToJson(
        ArticleListResponse instance) =>
    <String, dynamic>{
      'articles': instance.articles,
      'totalResults': instance.totalResults,
      'status': instance.status,
    };
