import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class RoleDataDm {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'slug')
  String? slug;

  @JsonKey(name: 'permissions')
  List<dynamic>? permissions;

  RoleDataDm({
    this.id,
    this.name,
    this.slug,
    this.permissions,
  });

  RoleDataDm.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    permissions = json['permissions'];
  }
  Map<String, dynamic> toJson() => {
    'name' : name,
    'id' : id,
    'slug' : slug,
    'permissions' : permissions,
  };
}
