import 'package:json_annotation/json_annotation.dart';

import 'audio_preview.dart';
import 'cover_art.dart';

part 'data1.g.dart';

@JsonSerializable()
class Data1 {
  @JsonKey(name: '__typename')
  String? id;
  String? uri;
  String? name;
  String? desc;
  String? htmlDesc;
  AudioPreview? audio;
  CoverArt? img;

  Data1({
    this.uri,
    this.id,
    this.desc,
    this.htmlDesc,
    this.name,
    this.audio,
    this.img,
  });

  factory Data1.fromJson(Map<String, dynamic> json) {
    return _$Data1FromJson(json);
  }

  Map<String, dynamic> toJson() => _$Data1ToJson(this);
}
