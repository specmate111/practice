import 'package:json_annotation/json_annotation.dart';

part 'transcripts.g.dart';

@JsonSerializable()
class Transcripts {
  List<dynamic>? items;

  Transcripts({this.items});

  factory Transcripts.fromJson(Map<String, dynamic> json) {
    return _$TranscriptsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TranscriptsToJson(this);
}
