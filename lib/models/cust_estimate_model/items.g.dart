// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Items _$ItemsFromJson(Map<String, dynamic> json) => Items(
      inventory: (json['inventory'] as List<dynamic>?)
          ?.map((e) => Inventory.fromJson(e as Map<String, dynamic>))
          .toList(),
      customItems: json['customItems'] == null
          ? null
          : CustomItems.fromJson(json['customItems'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItemsToJson(Items instance) => <String, dynamic>{
      'inventory': instance.inventory,
      'customItems': instance.customItems,
    };
