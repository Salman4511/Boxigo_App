import 'package:json_annotation/json_annotation.dart';

part 'cust_item.g.dart';

@JsonSerializable()
class CustItem {
  String? id;
  @JsonKey(name: 'item_height')
  String? itemHeight;
  @JsonKey(name: 'item_length')
  String? itemLength;
  @JsonKey(name: 'item_qty')
  String? itemQty;
  @JsonKey(name: 'item_width')
  String? itemWidth;
  @JsonKey(name: 'item_description')
  String? itemDescription;
  @JsonKey(name: 'item_name')
  String? itemName;

  CustItem({
    this.itemHeight,
    this.itemLength,
    this.itemQty,
    this.itemWidth,
    this.itemDescription,
    this.itemName,
    this.id,
  });

  factory CustItem.fromJson(Map<String, dynamic> json) => _$CustItemFromJson(json);

  Map<String, dynamic> toJson() => _$CustItemToJson(this);
}
