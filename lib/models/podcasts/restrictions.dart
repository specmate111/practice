import 'package:json_annotation/json_annotation.dart';

part 'restrictions.g.dart';

@JsonSerializable()
class Restrictions {
  bool? paywallContent;

  Restrictions({this.paywallContent});

  factory Restrictions.fromJson(Map<String, dynamic> json) {
    return _$RestrictionsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RestrictionsToJson(this);
}
