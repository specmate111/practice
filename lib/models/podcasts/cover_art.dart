import 'package:json_annotation/json_annotation.dart';

import 'source.dart';

part 'cover_art.g.dart';

@JsonSerializable()
class CoverArt {
  List<Source>? sources;

  CoverArt({this.sources});

  factory CoverArt.fromJson(Map<String, dynamic> json) {
    return _$CoverArtFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CoverArtToJson(this);
}
