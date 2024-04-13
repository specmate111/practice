// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cover_art.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoverArt _$CoverArtFromJson(Map<String, dynamic> json) => CoverArt(
      sources: (json['sources'] as List<dynamic>?)
          ?.map((e) => Source.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CoverArtToJson(CoverArt instance) => <String, dynamic>{
      'sources': instance.sources,
    };
