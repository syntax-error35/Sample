import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class LineManagerDataDm {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'full_name')
  String? full_name;

  LineManagerDataDm({
    this.id,
    this.full_name,
  });
  LineManagerDataDm.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    full_name = json['full_name'];
  }
  Map<String, dynamic> toJson() => {
    'full_name' : full_name,
    'id' : id,
  };
}
