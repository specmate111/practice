import 'package:json_annotation/json_annotation.dart';

part 'timezone.g.dart';

@JsonSerializable()
class Timezone {
  int? year;
  int? month;
  int? day;
  int? hour;
  int? minute;
  int? seconds;
  int? milliSeconds;
  DateTime? dateTime;
  String? date;
  String? time;
  String? timeZone;
  String? dayOfWeek;
  bool? dstActive;

  Timezone({
    this.year,
    this.month,
    this.day,
    this.hour,
    this.minute,
    this.seconds,
    this.milliSeconds,
    this.dateTime,
    this.date,
    this.time,
    this.timeZone,
    this.dayOfWeek,
    this.dstActive,
  });

  factory Timezone.fromJson(Map<String, dynamic> json) {
    return _$TimezoneFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TimezoneToJson(this);
}
