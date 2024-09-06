// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cust_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustItem _$CustItemFromJson(Map<String, dynamic> json) => CustItem(
      itemHeight: json['item_height'] as String?,
      itemLength: json['item_length'] as String?,
      itemQty: json['item_qty'] as String?,
      itemWidth: json['item_width'] as String?,
      itemDescription: json['item_description'] as String?,
      itemName: json['item_name'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$CustItemToJson(CustItem instance) => <String, dynamic>{
      'id': instance.id,
      'item_height': instance.itemHeight,
      'item_length': instance.itemLength,
      'item_qty': instance.itemQty,
      'item_width': instance.itemWidth,
      'item_description': instance.itemDescription,
      'item_name': instance.itemName,
    };
