
import 'package:json_annotation/json_annotation.dart';

part 'article.g.dart';

@JsonSerializable()
class Article {
  String? title;
  String? url;
  String? content;
  String? publishedAt;

  Article({
    this.title,
    this.url,
    this.content,
    this.publishedAt,
  });

  factory Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}