// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) => Article(
      title: json['title'] as String?,
      url: json['url'] as String?,
      content: json['content'] as String?,
      publishedAt: json['publishedAt'] as String?,
    );

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'title': instance.title,
      'url': instance.url,
      'content': instance.content,
      'publishedAt': instance.publishedAt,
    };
