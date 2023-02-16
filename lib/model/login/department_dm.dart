import 'package:json_annotation/json_annotation.dart';
part 'department_dm.g.dart';

@JsonSerializable()
class DepartmentDm {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'is_active')
  int? is_active;

  @JsonKey(name: 'created_at')
  String? created_at;

  @JsonKey(name: 'updated_at')
  String? updated_at;

  DepartmentDm({
    this.id,
    this.created_at,
    this.is_active,
    this.name,
    this.updated_at,
  });
  factory DepartmentDm.fromJson(Map<String, dynamic>json) => _$DepartmentDmFromJson(json);
  Map<String, dynamic> toJson() => _$DepartmentDmToJson(this);
}
