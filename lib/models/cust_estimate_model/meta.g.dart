// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      hasType: json['hasType'] as bool?,
      selectType: json['selectType'] as String?,
      hasVariation: json['hasVariation'] as bool?,
      hasSize: json['hasSize'] as bool?,
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'hasType': instance.hasType,
      'selectType': instance.selectType,
      'hasVariation': instance.hasVariation,
      'hasSize': instance.hasSize,
    };
