import 'package:json_annotation/json_annotation.dart';

part 'playability.g.dart';

@JsonSerializable()
class Playability {
  bool? playable;
  String? reason;
  List<dynamic>? unplayabilityReasons;

  Playability({this.playable, this.reason, this.unplayabilityReasons});

  factory Playability.fromJson(Map<String, dynamic> json) {
    return _$PlayabilityFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PlayabilityToJson(this);
}
