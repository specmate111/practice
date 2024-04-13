import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'movies.g.dart';

@JsonSerializable()
class MoviesD {
  int? page;
  List<Result>? results;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'total_results')
  int? totalResults;

  MoviesD({this.page, this.results, this.totalPages, this.totalResults});

  factory MoviesD.fromJson(Map<String, dynamic> json) {
    return _$MoviesDFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MoviesDToJson(this);
}
