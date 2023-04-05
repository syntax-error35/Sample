import 'package:json_annotation/json_annotation.dart';
import 'package:sample/model/role/role_data_dm.dart';
part 'role_list_dm.g.dart';

@JsonSerializable()
class RoleListDm {
  @JsonKey(name: 'code')
  int? code;

  @JsonKey(name: 'app_message')
  String? app_message;

  @JsonKey(name: 'user_message')
  String? user_message;

  @JsonKey(name: 'data')
  List<RoleDataDm>? data;


  RoleListDm({
    this.data,
    this.code,
    this.app_message,
    this.user_message,
  });
  factory RoleListDm.fromJson(Map<String, dynamic> json) =>  _$RoleListDmFromJson(json);
  Map<String, dynamic> toJson() => _$RoleListDmToJson(this);
}
