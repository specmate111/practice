// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      uid: json['uid'] as String?,
      entity: json['entity'] == null
          ? null
          : Entity.fromJson(json['entity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'uid': instance.uid,
      'entity': instance.entity,
    };
