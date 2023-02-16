import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class ErrorDm {
  int? code;
  String? app_message;
  String? user_message;

  ErrorDm({
    this.user_message,
    this.app_message,
    this.code,
  });
  ErrorDm.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    app_message = json['app_message'];
    user_message = json['user_message'];
  }
  Map<String, dynamic> toJson() => {
        'code': code,
        'app_message': app_message,
        'user_message': user_message,
      };
}
