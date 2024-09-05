import 'package:json_annotation/json_annotation.dart';

import 'item.dart';

part 'category.g.dart';

@JsonSerializable()
class Category {
  String? id;
  @JsonKey(name: 'order ')
  int? order;
  String? name;
  String? displayName;
  List<Item>? items;

  Category({this.id, this.order, this.name, this.displayName, this.items});

  factory Category.fromJson(Map<String, dynamic> json) {
    return _$CategoryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
