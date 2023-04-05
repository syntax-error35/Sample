import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class DeptDataDm {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'is_active')
  int? is_active;

  DeptDataDm({
    this.id,
    this.name,
    this.is_active,
  });

  DeptDataDm.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    is_active = json['is_active'];
  }
  Map<String, dynamic> toJson() => {
    'name' : name,
    'id' : id,
    'is_active' : is_active,
  };
}
