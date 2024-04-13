// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pod _$PodFromJson(Map<String, dynamic> json) => Pod(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      extensions: json['extensions'] as List<dynamic>?,
    );

Map<String, dynamic> _$PodToJson(Pod instance) => <String, dynamic>{
      'data': instance.data,
      'extensions': instance.extensions,
    };
