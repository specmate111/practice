import 'package:json_annotation/json_annotation.dart';

part 'content_rating.g.dart';

@JsonSerializable()
class ContentRating {
  String? label;

  ContentRating({this.label});

  factory ContentRating.fromJson(Map<String, dynamic> json) {
    return _$ContentRatingFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ContentRatingToJson(this);
}
