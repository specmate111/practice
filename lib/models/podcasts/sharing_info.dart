import 'package:json_annotation/json_annotation.dart';

part 'sharing_info.g.dart';

@JsonSerializable()
class SharingInfo {
  String? shareUrl;
  String? shareId;

  SharingInfo({this.shareUrl, this.shareId});

  factory SharingInfo.fromJson(Map<String, dynamic> json) {
    return _$SharingInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SharingInfoToJson(this);
}
