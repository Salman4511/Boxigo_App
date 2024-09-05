// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Inventory _$InventoryFromJson(Map<String, dynamic> json) => Inventory(
      id: json['id'] as String?,
      order: (json['order'] as num?)?.toInt(),
      name: json['name'] as String?,
      displayName: json['displayName'] as String?,
      category: (json['category'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InventoryToJson(Inventory instance) => <String, dynamic>{
      'id': instance.id,
      'order': instance.order,
      'name': instance.name,
      'displayName': instance.displayName,
      'category': instance.category,
    };
