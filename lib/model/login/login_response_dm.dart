import 'package:json_annotation/json_annotation.dart';
import 'package:sample/model/login/data_dm.dart';
part 'login_response_dm.g.dart';

@JsonSerializable()
class LoginResponseDm {
  @JsonKey(name: 'code')
  int? code;

  @JsonKey(name: 'app_message')
  String? app_message;

  @JsonKey(name: 'user_message')
  String? user_message;

  @JsonKey(name: 'access_token')
  String? access_token;

  @JsonKey(name: 'notificationTimeFlag')
  String? notificationTimeFlag;

  @JsonKey(name: 'data')
  DataDm? data;

  LoginResponseDm({
    this.data,
    this.code,
    this.app_message,
    this.user_message,
    this.access_token,
    this.notificationTimeFlag,
  });
  factory LoginResponseDm.fromJson(Map<String, dynamic> json) =>  _$LoginResponseDmFromJson(json);
  Map<String, dynamic> toJson() => _$LoginResponseDmToJson(this);
}
