// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'played_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayedState _$PlayedStateFromJson(Map<String, dynamic> json) => PlayedState(
      playPositionMilliseconds: json['playPositionMilliseconds'] as int?,
      state: json['state'] as String?,
    );

Map<String, dynamic> _$PlayedStateToJson(PlayedState instance) =>
    <String, dynamic>{
      'playPositionMilliseconds': instance.playPositionMilliseconds,
      'state': instance.state,
    };
