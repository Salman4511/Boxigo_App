import 'package:boxigo_app/models/cust_estimate_model/cust_item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'custom_items.g.dart';

@JsonSerializable()
class CustomItems {
  String? units;
  List<CustItem>? items;

  CustomItems({this.units, this.items});

  factory CustomItems.fromJson(Map<String, dynamic> json) {
    return _$CustomItemsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CustomItemsToJson(this);
}
