// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playability.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Playability _$PlayabilityFromJson(Map<String, dynamic> json) => Playability(
      playable: json['playable'] as bool?,
      reason: json['reason'] as String?,
      unplayabilityReasons: json['unplayabilityReasons'] as List<dynamic>?,
    );

Map<String, dynamic> _$PlayabilityToJson(Playability instance) =>
    <String, dynamic>{
      'playable': instance.playable,
      'reason': instance.reason,
      'unplayabilityReasons': instance.unplayabilityReasons,
    };
