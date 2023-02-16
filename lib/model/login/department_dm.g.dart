// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department_dm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DepartmentDm _$DepartmentDmFromJson(Map<String, dynamic> json) => DepartmentDm(
      id: json['id'] as int?,
      created_at: json['created_at'] as String?,
      is_active: json['is_active'] as int?,
      name: json['name'] as String?,
      updated_at: json['updated_at'] as String?,
    );

Map<String, dynamic> _$DepartmentDmToJson(DepartmentDm instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'is_active': instance.is_active,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
