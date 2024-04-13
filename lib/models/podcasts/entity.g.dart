// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Entity _$EntityFromJson(Map<String, dynamic> json) => Entity(
      uri: json['_uri'] as String?,
      data: json['data'] == null
          ? null
          : Data1.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EntityToJson(Entity instance) => <String, dynamic>{
      '_uri': instance.uri,
      'data': instance.data,
    };
