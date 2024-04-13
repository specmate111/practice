// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data1.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data1 _$Data1FromJson(Map<String, dynamic> json) => Data1(
      uri: json['uri'] as String?,
      id: json['__typename'] as String?,
      desc: json['desc'] as String?,
      htmlDesc: json['htmlDesc'] as String?,
      name: json['name'] as String?,
      audio: json['audio'] == null
          ? null
          : AudioPreview.fromJson(json['audio'] as Map<String, dynamic>),
      img: json['img'] == null
          ? null
          : CoverArt.fromJson(json['img'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Data1ToJson(Data1 instance) => <String, dynamic>{
      '__typename': instance.id,
      'uri': instance.uri,
      'name': instance.name,
      'desc': instance.desc,
      'htmlDesc': instance.htmlDesc,
      'audio': instance.audio,
      'img': instance.img,
    };
