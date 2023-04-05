import 'package:json_annotation/json_annotation.dart';
import 'package:sample/model/greeting_item/greeting_item_data.dart';
part 'greeting_item_dm.g.dart';

@JsonSerializable()
class GreetingItemDm {
  @JsonKey(name: 'code')
  int? code;

  @JsonKey(name: 'app_message')
  String? app_message;

  @JsonKey(name: 'user_message')
  String? user_message;

  @JsonKey(name: 'data')
  List<GreetingItemData>? data;

  GreetingItemDm({
    this.data, this.code, this.app_message, this.user_message
});

  factory GreetingItemDm.fromJson(Map<String, dynamic> json) =>  _$GreetingItemDmFromJson(json);
  Map<String, dynamic> toJson() => _$GreetingItemDmToJson(this);


}
