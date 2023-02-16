// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_dm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataDm _$DataDmFromJson(Map<String, dynamic> json) => DataDm(
      name: json['name'] as String?,
      id: json['id'] as int?,
      email: json['email'] as String?,
      address: json['address'] as String?,
      date_of_birth: json['date_of_birth'] as String?,
      department: json['department'] == null
          ? null
          : DepartmentDm.fromJson(json['department'] as Map<String, dynamic>),
      designation: json['designation'] as String?,
      image: json['image'] as String?,
      notification: json['notification'] as int?,
      permissions: (json['permissions'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      phone_number: json['phone_number'] as String?,
      user_type: json['user_type'] as String?,
    );

Map<String, dynamic> _$DataDmToJson(DataDm instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone_number': instance.phone_number,
      'image': instance.image,
      'date_of_birth': instance.date_of_birth,
      'department': instance.department,
      'designation': instance.designation,
      'address': instance.address,
      'notification': instance.notification,
      'user_type': instance.user_type,
      'permissions': instance.permissions,
    };
