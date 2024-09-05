import 'package:json_annotation/json_annotation.dart';

import 'meta.dart';
import 'type.dart';

part 'item.g.dart';

@JsonSerializable()
class Item {
  dynamic size;
  List<dynamic>? childItems;
  String? typeOptions;
  Meta? meta;
  int? uniquieId;
  String? name;
  String? displayName;
  int? order;
  @JsonKey(name: 'name_old')
  String? nameOld;
  int? qty;
  List<Type>? type;
  String? id;

  Item({
    this.size,
    this.childItems,
    this.typeOptions,
    this.meta,
    this.uniquieId,
    this.name,
    this.displayName,
    this.order,
    this.nameOld,
    this.qty,
    this.type,
    this.id,
  });

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
