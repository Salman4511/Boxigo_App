// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomItems _$CustomItemsFromJson(Map<String, dynamic> json) => CustomItems(
      units: json['units'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => CustItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CustomItemsToJson(CustomItems instance) =>
    <String, dynamic>{
      'units': instance.units,
      'items': instance.items,
    };
