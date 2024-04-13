import 'package:json_annotation/json_annotation.dart';

import 'data1.dart';

part 'entity.g.dart';

@JsonSerializable()
class Entity {
  @JsonKey(name: '_uri')
  String? uri;
  Data1? data;

  Entity({this.uri, this.data});

  factory Entity.fromJson(Map<String, dynamic> json) {
    return _$EntityFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EntityToJson(this);
}
