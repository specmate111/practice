import 'package:json_annotation/json_annotation.dart';

part 'audio_preview.g.dart';

@JsonSerializable()
class AudioPreview {
  String? url;
  String? format;

  AudioPreview({this.url, this.format});

  factory AudioPreview.fromJson(Map<String, dynamic> json) {
    return _$AudioPreviewFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AudioPreviewToJson(this);
}
