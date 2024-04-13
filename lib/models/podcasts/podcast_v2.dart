import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'podcast_v2.g.dart';

@JsonSerializable()
class PodcastV2 {
  Data? data;

  PodcastV2({this.data});

  factory PodcastV2.fromJson(Map<String, dynamic> json) {
    return _$PodcastV2FromJson(json);
  }

  Map<String, dynamic> toJson() => _$PodcastV2ToJson(this);
}
