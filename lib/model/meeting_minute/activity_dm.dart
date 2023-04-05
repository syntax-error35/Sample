import 'package:json_annotation/json_annotation.dart';
import 'package:sample/model/meeting_minute/stakeholder_dm.dart';

@JsonSerializable()
class ActivityDm {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'title')
  String? title;

  @JsonKey(name: 'description')
  String? description;

  @JsonKey(name: 'meeting_date')
  String? meeting_date;

  @JsonKey(name: 'meeting_start_time')
  String? meeting_start_time;

  @JsonKey(name: 'meeting_end_time')
  String? meeting_end_time;

  @JsonKey(name: 'next_engagement_date')
  String? next_engagement_date;

  @JsonKey(name: 'last_engagement_date')
  String? last_engagement_date;

  @JsonKey(name: 'reminder')
  ReminderDm? reminder;

  @JsonKey(name: 'all_day_flag')
  int? all_day_flag;

  @JsonKey(name: 'special_request')
  String? special_request;

  @JsonKey(name: 'meeting_type')
  MeetingTypeDm? meeting_type;

  @JsonKey(name: 'stakeholder')
  List<StakeholderDm>? stakeholder;
}

@JsonSerializable()
class ReminderDm {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'title')
  String? title;

  @JsonKey(name: 'status')
  int? status;

  @JsonKey(name: 'duration')
  int? duration;
  ReminderDm({this.id, this.status, this.title, this.duration});
  ReminderDm.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    status = json['status'];
    id = json['id'];
    duration = json['duration'];
  }

  Map<String, dynamic> toJson() => {
        'duration': duration,
        'status': status,
        'id': id,
        'title': title,
      };
}

@JsonSerializable()
class MeetingTypeDm {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'name')
  String? name;
  MeetingTypeDm({
    this.id,
    this.name,
  });
  MeetingTypeDm.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}
