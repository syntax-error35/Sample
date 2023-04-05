import 'package:json_annotation/json_annotation.dart';
import 'package:sample/model/department/dept_data_dm.dart';
part 'dept_list_dm.g.dart';

@JsonSerializable()
class DeptListDm {
  @JsonKey(name: 'code')
  int? code;

  @JsonKey(name: 'app_message')
  String? app_message;

  @JsonKey(name: 'user_message')
  String? user_message;

  @JsonKey(name: 'data')
  List<DeptDataDm>? data;


  DeptListDm({
    this.data,
    this.code,
    this.app_message,
    this.user_message,
  });
  factory DeptListDm.fromJson(Map<String, dynamic> json) =>  _$DeptListDmFromJson(json);
  Map<String, dynamic> toJson() => _$DeptListDmToJson(this);
}
