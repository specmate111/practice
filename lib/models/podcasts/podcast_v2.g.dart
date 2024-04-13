// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podcast_v2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PodcastV2 _$PodcastV2FromJson(Map<String, dynamic> json) => PodcastV2(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PodcastV2ToJson(PodcastV2 instance) => <String, dynamic>{
      'data': instance.data,
    };
