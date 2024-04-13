import 'package:json_annotation/json_annotation.dart';

import 'item.dart';
import 'paging_info.dart';

part 'episodes_v2.g.dart';

@JsonSerializable()
class EpisodesV2 {
  @JsonKey(name: '__typename')
  String? typename;
  int? totalCount;
  PagingInfo? pagingInfo;
  List<Item>? items;

  EpisodesV2({this.typename, this.totalCount, this.pagingInfo, this.items});

  factory EpisodesV2.fromJson(Map<String, dynamic> json) {
    return _$EpisodesV2FromJson(json);
  }

  Map<String, dynamic> toJson() => _$EpisodesV2ToJson(this);
}
