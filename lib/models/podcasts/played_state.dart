import 'package:json_annotation/json_annotation.dart';

part 'played_state.g.dart';

@JsonSerializable()
class PlayedState {
  int? playPositionMilliseconds;
  String? state;

  PlayedState({this.playPositionMilliseconds, this.state});

  factory PlayedState.fromJson(Map<String, dynamic> json) {
    return _$PlayedStateFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PlayedStateToJson(this);
}
