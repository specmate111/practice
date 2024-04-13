// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podcast_union_v2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PodcastUnionV2 _$PodcastUnionV2FromJson(Map<String, dynamic> json) =>
    PodcastUnionV2(
      typename: json['__typename'] as String?,
      id: json['id'] as String?,
      uri: json['uri'] as String?,
      name: json['name'] as String?,
      episodesV2: json['episodesV2'] == null
          ? null
          : EpisodesV2.fromJson(json['episodesV2'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PodcastUnionV2ToJson(PodcastUnionV2 instance) =>
    <String, dynamic>{
      '__typename': instance.typename,
      'id': instance.id,
      'uri': instance.uri,
      'name': instance.name,
      'episodesV2': instance.episodesV2,
    };
