// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episodes_v2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EpisodesV2 _$EpisodesV2FromJson(Map<String, dynamic> json) => EpisodesV2(
      typename: json['__typename'] as String?,
      totalCount: json['totalCount'] as int?,
      pagingInfo: json['pagingInfo'] == null
          ? null
          : PagingInfo.fromJson(json['pagingInfo'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EpisodesV2ToJson(EpisodesV2 instance) =>
    <String, dynamic>{
      '__typename': instance.typename,
      'totalCount': instance.totalCount,
      'pagingInfo': instance.pagingInfo,
      'items': instance.items,
    };
