// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      podcastUnionV2: json['podcastUnionV2'] == null
          ? null
          : PodcastUnionV2.fromJson(
              json['podcastUnionV2'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'podcastUnionV2': instance.podcastUnionV2,
    };
