import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class OtpDm {
  @JsonKey(name: 'otp')
  String? otp;

  OtpDm({this.otp});

  OtpDm.fromJson(Map<String, dynamic> json) {
    otp = json['otp'];
  }
  Map<String, dynamic> toJson() => {
    'otp' : otp,
  };
}