import 'package:json_annotation/json_annotation.dart';

import 'item.dart';

part 'custom_items.g.dart';

@JsonSerializable()
class CustomItems {
  String? units;
  List<Item>? items;

  CustomItems({this.units, this.items});

  factory CustomItems.fromJson(Map<String, dynamic> json) {
    return _$CustomItemsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CustomItemsToJson(this);
}
