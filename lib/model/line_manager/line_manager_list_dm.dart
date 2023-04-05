import 'package:json_annotation/json_annotation.dart';
import 'package:sample/model/line_manager/line_manager_data_dm.dart';
import 'package:sample/model/role/role_data_dm.dart';
part 'line_manager_list_dm.g.dart';

@JsonSerializable()
class LineManagerListDm {
  @JsonKey(name: 'code')
  int? code;

  @JsonKey(name: 'app_message')
  String? app_message;

  @JsonKey(name: 'user_message')
  String? user_message;

  @JsonKey(name: 'data')
  List<LineManagerDataDm>? data;

  LineManagerListDm({
    this.data,
    this.code,
    this.app_message,
    this.user_message,
  });
  factory LineManagerListDm.fromJson(Map<String, dynamic> json) =>  _$LineManagerListDmFromJson(json);
  Map<String, dynamic> toJson() => _$LineManagerListDmToJson(this);
}
