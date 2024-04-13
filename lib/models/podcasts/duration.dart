import 'package:json_annotation/json_annotation.dart';

part 'duration.g.dart';

@JsonSerializable()
class Duration {
  int? totalMilliseconds;

  Duration({this.totalMilliseconds});

  factory Duration.fromJson(Map<String, dynamic> json) {
    return _$DurationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DurationToJson(this);
}
