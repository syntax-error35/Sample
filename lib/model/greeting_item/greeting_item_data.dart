import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class GreetingItemData{
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'title')
  String? title;

  @JsonKey(name: 'image')
  String? image;

  @JsonKey(name: 'stake_holder_category_id')
  int? stake_holder_category_id;

  @JsonKey(name: 'status')
  int? status;

  GreetingItemData({
    this.id, this.title, this.status, this.image, this.stake_holder_category_id
});
  GreetingItemData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    stake_holder_category_id = json['stake_holder_category_id'];
    status = json['status'];
  }
  Map<String, dynamic> toJson() => {
    'id' : id,
    'title' : title,
    'image' : image,
    'status' : status,
    'stake_holder_category_id' : stake_holder_category_id,
  };
}