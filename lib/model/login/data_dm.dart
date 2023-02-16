import 'package:json_annotation/json_annotation.dart';
import 'package:sample/model/login/department_dm.dart';
part 'data_dm.g.dart';

@JsonSerializable()
class DataDm {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'email')
  String? email;

  @JsonKey(name: 'phone_number')
  String? phone_number;

  @JsonKey(name: 'image')
  String? image;

  @JsonKey(name: 'date_of_birth')
  String? date_of_birth;

  @JsonKey(name: 'department')
  DepartmentDm? department;

  @JsonKey(name: 'designation')
  String? designation;

  @JsonKey(name: 'address')
  String? address;

  @JsonKey(name: 'notification')
  int? notification;

  @JsonKey(name: 'user_type')
  String? user_type;

  @JsonKey(name: 'permissions')
  List<String?>? permissions;

  DataDm({
    this.name,
    this.id,
    this.email,
    this.address,
    this.date_of_birth,
    this.department,
    this.designation,
    this.image,
    this.notification,
    this.permissions,
    this.phone_number,
    this.user_type,
  });

  factory DataDm.fromJson(Map<String, dynamic>json) => _$DataDmFromJson(json);
  Map<String, dynamic> toJson() => _$DataDmToJson(this);
}
