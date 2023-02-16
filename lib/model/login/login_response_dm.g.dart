// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_dm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponseDm _$LoginResponseDmFromJson(Map<String, dynamic> json) => LoginResponseDm(
      data: json['data'] == null
          ? null
          : DataDm.fromJson(json['data'] as Map<String, dynamic>),
      code: json['code'] as int?,
      app_message: json['app_message'] as String?,
      user_message: json['user_message'] as String?,
      access_token: json['access_token'] as String?,
      notificationTimeFlag: json['notificationTimeFlag'] as String?,
    );

Map<String, dynamic> _$LoginResponseDmToJson(LoginResponseDm instance) => <String, dynamic>{
      'code': instance.code,
      'app_message': instance.app_message,
      'user_message': instance.user_message,
      'access_token': instance.access_token,
      'notificationTimeFlag': instance.notificationTimeFlag,
      'data': instance.data,
    };
