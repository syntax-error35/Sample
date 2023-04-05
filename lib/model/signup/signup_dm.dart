import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class SignupDm {
  @JsonKey(name: 'full_name')
  String? full_name;

  @JsonKey(name: 'date_of_birth')
  String? date_of_birth;

  @JsonKey(name: 'department_id')
  int? department_id;

  @JsonKey(name: 'designation')
  int? designation;

  @JsonKey(name: 'email')
  String? email;

  @JsonKey(name: 'address')
  String? address;

  @JsonKey(name: 'password')
  String? password;

  @JsonKey(name: 'phone_number')
  String? phone_number;

  @JsonKey(name: 'role_id')
  int? role_id;

  @JsonKey(name: 'line_manager_id')
  int? line_manager_id;

  // @JsonKey(name: 'file_url')
  // FormData? file_url;

  SignupDm({
    this.email,
    this.full_name,
    this.password,
    this.phone_number,
    this.designation,
    this.date_of_birth,
    this.address,
    this.department_id,
    this.line_manager_id,
    this.role_id,
   // this.file_url,

  });

  SignupDm.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    full_name = json['full_name'];
    phone_number = json['phone_number'];
    designation = json['designation'];
    date_of_birth = json['date_of_birth'];
    address = json['address'];
    department_id = json['department_id'];
    line_manager_id = json['line_manager_id'];
    role_id = json['role_id'];
    // file_url = json['file_url'];
  }
  //
  Map<String, dynamic> toJson() => {
    'password' : password,
    'email' : email,
    'full_name' : full_name,
    'phone_number' : phone_number,
    'designation' : designation,
    'date_of_birth' : date_of_birth,
    'address' : address,
    'department_id' : department_id,
    'line_manager_id' : line_manager_id,
    'role_id' : role_id,
    // 'file_url' : file_url,
  };

}
