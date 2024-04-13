import 'package:json_annotation/json_annotation.dart';

import 'item.dart';

part 'audio.g.dart';

@JsonSerializable()
class Audio {
  List<Item>? items;

  Audio({this.items});

  factory Audio.fromJson(Map<String, dynamic> json) => _$AudioFromJson(json);

  Map<String, dynamic> toJson() => _$AudioToJson(this);
}
