import 'package:json_annotation/json_annotation.dart';
import 'activity_dm.dart';

@JsonSerializable()
class MeetingDataDm {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'feedback')
  String? feedback;

  @JsonKey(name: 'attendees')
  String? attendees;

  @JsonKey(name: 'agenda')
  String? agenda;

  @JsonKey(name: 'description')
  String? description;

  @JsonKey(name: 'place_of_meeting')
  String? place_of_meeting;

  @JsonKey(name: 'designation')
  String? designation;

  @JsonKey(name: 'action_taken')
  String? action_taken;

  @JsonKey(name: 'created_at')
  String? created_at;

  @JsonKey(name: 'special_request')
  String? special_request;

  @JsonKey(name: 'notes')
  String? notes;

  @JsonKey(name: 'notes_date')
  String? notes_date;

  @JsonKey(name: 'subject')
  String? subject;

  @JsonKey(name: 'date_time')
  String? date_time;

  @JsonKey(name: 'action_point')
  String? action_point;

  @JsonKey(name: 'action_point_date')
  String? action_point_date;

  @JsonKey(name: 'follow_up')
  String? follow_up;

  @JsonKey(name: 'is_approved')
  int? is_approved;

  @JsonKey(name: 'is_main')
  int? is_main;

  @JsonKey(name: 'current_parent')
  int? current_parent;

  @JsonKey(name: 'approvalRequest')
  String? approvalRequest;

  @JsonKey(name: 'stake_holder_id')
  List? stake_holder_id = [];

  @JsonKey(name: 'inputs')
  List? inputs = [];

  @JsonKey(name: 'action_points')
  List<ActionPointDm>? action_points = [];

  @JsonKey(name: 'activity')
  ActivityDm? activity;

  MeetingDataDm({
    this.feedback,
    this.id,
    this.attendees,
    this.action_point,
    this.action_point_date,
    this.designation,
    this.created_at,
    this.action_points,
    this.action_taken,
    this.agenda,
    this.approvalRequest,
    this.current_parent,
    this.date_time,
    this.description,
    this.follow_up,
    this.inputs,
    this.is_approved,
    this.is_main,
    this.notes,
    this.notes_date,
    this.place_of_meeting,
    this.special_request,
    this.stake_holder_id,
    this.subject,
    this.activity,
  });
  // factory MeetingDataDm.fromJson(Map<String, dynamic> json) => _$MeetingDataDmFromJson(json);
  // Map<String, dynamic> toJson() => _$MeetingDataDmToJson(this);
}

@JsonSerializable()
class ActionPointDm {
  @JsonKey(name: 'action_point')
  String? action_point;

  @JsonKey(name: 'action_point_date')
  String? action_point_date;

  @JsonKey(name: 'status')
  String? status;

  @JsonKey(name: 'id')
  int? id;

  ActionPointDm({
    this.action_point,
    this.status,
    this.id,
    this.action_point_date,
  });

  ActionPointDm.fromJson(Map<String, dynamic> json) {
    action_point = json['action_point'];
    status = json['status'];
    id = json['id'];
    action_point_date = json['action_point_date'];
  }
  Map<String, dynamic> toJson() => {
        'action_point_date': action_point_date,
        'status': status,
        'id': id,
        'action_point': action_point,
      };
}
