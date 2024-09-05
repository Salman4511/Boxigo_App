// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cust_estimate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustEstimateModel _$CustEstimateModelFromJson(Map<String, dynamic> json) =>
    CustEstimateModel(
      customerEstimateFlow: (json['Customer_Estimate_Flow'] as List<dynamic>?)
          ?.map((e) => CustomerEstimateFlow.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CustEstimateModelToJson(CustEstimateModel instance) =>
    <String, dynamic>{
      'Customer_Estimate_Flow': instance.customerEstimateFlow,
    };
