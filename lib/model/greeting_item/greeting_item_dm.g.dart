// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'greeting_item_dm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GreetingItemDm _$GreetingItemDmFromJson(Map<String, dynamic> json) =>
    GreetingItemDm(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => GreetingItemData.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: json['code'] as int?,
      app_message: json['app_message'] as String?,
      user_message: json['user_message'] as String?,
    );

Map<String, dynamic> _$GreetingItemDmToJson(GreetingItemDm instance) =>
    <String, dynamic>{
      'code': instance.code,
      'app_message': instance.app_message,
      'user_message': instance.user_message,
      'data': instance.data,
    };
