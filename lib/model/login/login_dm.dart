import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class LoginDm {
  @JsonKey(name: 'email')
   String? email;

  @JsonKey(name: 'password')
   String? password;

  LoginDm({
     this.email,
     this.password,
  });

  LoginDm.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
  }
  Map<String, dynamic> toJson() => {
    'password' : password,
    'email' : email,
  };
}
