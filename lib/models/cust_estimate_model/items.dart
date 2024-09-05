import 'package:json_annotation/json_annotation.dart';

import 'custom_items.dart';
import 'inventory.dart';

part 'items.g.dart';

@JsonSerializable()
class Items {
  List<Inventory>? inventory;
  CustomItems? customItems;

  Items({this.inventory, this.customItems});

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);

  Map<String, dynamic> toJson() => _$ItemsToJson(this);
}
