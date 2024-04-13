import 'package:json_annotation/json_annotation.dart';

import 'article.dart';

part 'news.g.dart';

@JsonSerializable()
class News {
  String? status;
  int? totalResults;
  List<Article>? articles;

  News({this.status, this.totalResults, this.articles});

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);

  Map<String, dynamic> toJson() => _$NewsToJson(this);
}
