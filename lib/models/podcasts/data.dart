import 'package:json_annotation/json_annotation.dart';

import 'podcast_union_v2.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  PodcastUnionV2? podcastUnionV2;

  Data({this.podcastUnionV2});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
