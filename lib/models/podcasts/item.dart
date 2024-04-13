import 'package:json_annotation/json_annotation.dart';

import 'entity.dart';

part 'item.g.dart';

@JsonSerializable()
class Item {
  String? uid;
  Entity? entity;

  Item({this.uid, this.entity});

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
