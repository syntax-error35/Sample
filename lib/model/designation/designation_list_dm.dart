import 'package:json_annotation/json_annotation.dart';
import 'package:sample/model/designation/designation_data_dm.dart';

import '../login/department_dm.dart';
part 'designation_list_dm.g.dart';

@JsonSerializable()
class DesignationListDm {
  @JsonKey(name: 'code')
  int? code;

  @JsonKey(name: 'app_message')
  String? app_message;

  @JsonKey(name: 'user_message')
  String? user_message;

  @JsonKey(name: 'data')
  List<DesignationDataDm>? data;


  DesignationListDm({
    this.data,
    this.code,
    this.app_message,
    this.user_message,
  });
  factory DesignationListDm.fromJson(Map<String, dynamic> json) =>  _$DesignationListDmFromJson(json);
  Map<String, dynamic> toJson() => _$DesignationListDmToJson(this);
}
