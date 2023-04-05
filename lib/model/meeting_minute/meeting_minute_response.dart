import 'package:json_annotation/json_annotation.dart';

import 'meeting_data_dm.dart';

@JsonSerializable()
class MeetingMinuteResponse {
  @JsonKey(name: 'code')
  int? code;

  @JsonKey(name: 'app_message')
  String? app_message;

  @JsonKey(name: 'user_message')
  String? user_message;

  @JsonKey(name: 'data')
  List<MeetingDataDm?>? data;

  MeetingMinuteResponse({
    this.app_message,
    this.code,
    this.data,
    this.user_message,
  });
  // factory MeetingMinuteResponse.fromJson(Map<String, dynamic> json) =>
  //     _$MeetingMinuteResponseFromJson(json);
  // Map<String, dynamic> toJson() => _$MeetingMinuteResponseToJson(this);
}


