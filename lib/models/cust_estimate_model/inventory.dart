import 'package:json_annotation/json_annotation.dart';

import 'category.dart';

part 'inventory.g.dart';

@JsonSerializable()
class Inventory {
  String? id;
  int? order;
  String? name;
  String? displayName;
  List<Category>? category;

  Inventory({
    this.id,
    this.order,
    this.name,
    this.displayName,
    this.category,
  });

  factory Inventory.fromJson(Map<String, dynamic> json) {
    return _$InventoryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$InventoryToJson(this);
}
