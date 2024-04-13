import 'package:json_annotation/json_annotation.dart';

import 'episodes_v2.dart';

part 'podcast_union_v2.g.dart';

@JsonSerializable()
class PodcastUnionV2 {
  @JsonKey(name: '__typename')
  String? typename;
  String? id;
  String? uri;
  String? name;
  EpisodesV2? episodesV2;

  PodcastUnionV2({
    this.typename,
    this.id,
    this.uri,
    this.name,
    this.episodesV2,
  });

  factory PodcastUnionV2.fromJson(Map<String, dynamic> json) {
    return _$PodcastUnionV2FromJson(json);
  }

  Map<String, dynamic> toJson() => _$PodcastUnionV2ToJson(this);
}
