import 'package:json_annotation/json_annotation.dart';
@JsonSerializable()
class OtpResponseDm {
  @JsonKey(name: 'code')
  int? code;

  @JsonKey(name: 'app_message')
  String? app_message;

  @JsonKey(name: 'user_message')
  String? user_message;

  OtpResponseDm({this.code, this.app_message, this.user_message});

  OtpResponseDm.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    app_message = json['app_message'];
    user_message = json['user_message'];
  }
  Map<String, dynamic> toJson() => {
    'code' : code,
    'app_message' : app_message,
    'user_message' : user_message,
  };
}