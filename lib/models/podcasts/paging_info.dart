import 'package:json_annotation/json_annotation.dart';

part 'paging_info.g.dart';

@JsonSerializable()
class PagingInfo {
  int? nextOffset;

  PagingInfo({this.nextOffset});

  factory PagingInfo.fromJson(Map<String, dynamic> json) {
    return _$PagingInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PagingInfoToJson(this);
}
