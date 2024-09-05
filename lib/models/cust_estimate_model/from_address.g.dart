// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'from_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FromAddress _$FromAddressFromJson(Map<String, dynamic> json) => FromAddress(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      fromAddress: json['fromAddress'] as String?,
      fromLocality: json['fromLocality'] as String?,
      fromCity: json['fromCity'] as String?,
      fromState: json['fromState'] as String?,
      pincode: json['pincode'] as String?,
    );

Map<String, dynamic> _$FromAddressToJson(FromAddress instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'fromAddress': instance.fromAddress,
      'fromLocality': instance.fromLocality,
      'fromCity': instance.fromCity,
      'fromState': instance.fromState,
      'pincode': instance.pincode,
    };
