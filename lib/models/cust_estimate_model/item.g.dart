// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      size: json['size'],
      childItems: json['childItems'] as List<dynamic>?,
      typeOptions: json['typeOptions'] as String?,
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      uniquieId: (json['uniquieId'] as num?)?.toInt(),
      name: json['name'] as String?,
      displayName: json['displayName'] as String?,
      order: (json['order'] as num?)?.toInt(),
      nameOld: json['name_old'] as String?,
      qty: (json['qty'] as num?)?.toInt(),
      type: (json['type'] as List<dynamic>?)
          ?.map((e) => Type.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'size': instance.size,
      'childItems': instance.childItems,
      'typeOptions': instance.typeOptions,
      'meta': instance.meta,
      'uniquieId': instance.uniquieId,
      'name': instance.name,
      'displayName': instance.displayName,
      'order': instance.order,
      'name_old': instance.nameOld,
      'qty': instance.qty,
      'type': instance.type,
      'id': instance.id,
    };
