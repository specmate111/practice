import 'package:json_annotation/json_annotation.dart';

part 'release_date.g.dart';

@JsonSerializable()
class ReleaseDate {
  String? isoString;

  ReleaseDate({this.isoString});

  factory ReleaseDate.fromJson(Map<String, dynamic> json) {
    return _$ReleaseDateFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ReleaseDateToJson(this);
}
