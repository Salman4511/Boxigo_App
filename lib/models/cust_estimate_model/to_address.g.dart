// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'to_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ToAddress _$ToAddressFromJson(Map<String, dynamic> json) => ToAddress(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      toAddress: json['toAddress'] as String?,
      toLocality: json['toLocality'] as String?,
      toCity: json['toCity'] as String?,
      toState: json['toState'] as String?,
      pincode: json['pincode'] as String?,
    );

Map<String, dynamic> _$ToAddressToJson(ToAddress instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'toAddress': instance.toAddress,
      'toLocality': instance.toLocality,
      'toCity': instance.toCity,
      'toState': instance.toState,
      'pincode': instance.pincode,
    };
