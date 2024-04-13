import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'pod.g.dart';

@JsonSerializable()
class Pod {
  Data? data;
  List<dynamic>? extensions;

  Pod({this.data, this.extensions});

  factory Pod.fromJson(Map<String, dynamic> json) => _$PodFromJson(json);

  Map<String, dynamic> toJson() => _$PodToJson(this);
}
