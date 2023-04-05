import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class DesignationDataDm {
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

  DesignationDataDm({
    this.id,
    this.created_at,
    this.is_active,
    this.name,
    this.updated_at,
  });

  DesignationDataDm.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    is_active = json['is_active'];
    updated_at = json['updated_at'];
    created_at = json['created_at'];
  }
  Map<String, dynamic> toJson() => {
    'name' : name,
    'id' : id,
    'is_active' : is_active,
    'created_at' : created_at,
    'updated_at' : updated_at,
  };
}
