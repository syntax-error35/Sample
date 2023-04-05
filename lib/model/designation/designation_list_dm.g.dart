// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'designation_list_dm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DesignationListDm _$DesignationListDmFromJson(Map<String, dynamic> json) =>
    DesignationListDm(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DesignationDataDm.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: json['code'] as int?,
      app_message: json['app_message'] as String?,
      user_message: json['user_message'] as String?,
    );

Map<String, dynamic> _$DesignationListDmToJson(DesignationListDm instance) =>
    <String, dynamic>{
      'code': instance.code,
      'app_message': instance.app_message,
      'user_message': instance.user_message,
      'data': instance.data,
    };
