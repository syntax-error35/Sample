import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class StakeholderDm {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'phone')
  String? phone;

  @JsonKey(name: 'mobile')
  String? mobile;

  @JsonKey(name: 'email')
  String? email;

  @JsonKey(name: 'organization')
  String? organization;

  @JsonKey(name: 'location')
  String? location;

  @JsonKey(name: 'details')
  String? details;

  @JsonKey(name: 'date_of_birth')
  String? date_of_birth;

  @JsonKey(name: 'marriage_anniversary')
  String? marriage_anniversary;

  @JsonKey(name: 'work_anniversary')
  String? work_anniversary;

  @JsonKey(name: 'marital_status')
  String? marital_status;

  @JsonKey(name: 'file_url')
  String? file_url;

  @JsonKey(name: 'personal_phone')
  String? personal_phone;

  @JsonKey(name: 'official_phone')
  String? official_phone;

  @JsonKey(name: 'designation_id')
  int? designation_id;

  @JsonKey(name: 'designation')
  String? designation;

  @JsonKey(name: 'rating')
  int? rating;

  @JsonKey(name: 'added_by')
  int? added_by;

  @JsonKey(name: 'is_approved')
  int? is_approved;

  @JsonKey(name: 'approved_by')
  int? approved_by;

  @JsonKey(name: 'is_main')
  int? is_main;

  @JsonKey(name: 'current_parent')
  int? current_parent;

  @JsonKey(name: 'is_linemanger_approved')
  int? is_linemanger_approved;

  @JsonKey(name: 'bcs_batch_id')
  int? bcs_batch_id;

  @JsonKey(name: 'bcs_batch_other')
  String? bcs_batch_other;

  @JsonKey(name: 'history_of_previous_position')
  String? history_of_previous_position;

  @JsonKey(name: 'ministry_id')
  int? ministry_id;

  @JsonKey(name: 'division_id')
  int? division_id;

  @JsonKey(name: 'district_id')
  int? district_id;

  @JsonKey(name: 'home_district_id')
  String? home_district_id;

  @JsonKey(name: 'upazila_id')
  int? upazila_id;

  @JsonKey(name: 'address')
  String? address;

  @JsonKey(name: 'school_college')
  String? school_college;

  @JsonKey(name: 'university_id')
  int? university_id;

  @JsonKey(name: 'stake_holder_category_id')
  int? stake_holder_category_id;

  @JsonKey(name: 'deleted_at')
  String? deleted_at;

  @JsonKey(name: 'created_at')
  String? created_at;

  @JsonKey(name: 'updated_at')
  String? updated_at;

  @JsonKey(name: 'pivot')
  PivotDm? pivot;

  StakeholderDm({
    this.id,
    this.name,
    this.phone,
    this.mobile,
    this.email,
    this.organization,
    this.location,
    this.details,
    this.date_of_birth,
    this.marriage_anniversary,
    this.work_anniversary,
    this.marital_status,
    this.file_url,
    this.personal_phone,
    this.official_phone,
    this.designation_id,
    this.designation,
    this.rating,
    this.added_by,
    this.is_approved,
  });
}

@JsonSerializable()
class PivotDm {
  @JsonKey(name: 'activity_calendar_id')
  int? activity_calendar_id;

  @JsonKey(name: 'stake_holder_id')
  int? stake_holder_id;

  PivotDm({
    this.stake_holder_id,
    this.activity_calendar_id,
  });
  PivotDm.fromJson(Map<String, dynamic> json) {
    activity_calendar_id = json['activity_calendar_id'];
    stake_holder_id = json['stake_holder_id'];
  }

  Map<String, dynamic> toJson() => {
        'stake_holder_id': stake_holder_id,
        'activity_calendar_id': activity_calendar_id,
      };
}
