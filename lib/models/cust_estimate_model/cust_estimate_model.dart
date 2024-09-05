import 'package:json_annotation/json_annotation.dart';

import 'customer_estimate_flow.dart';

part 'cust_estimate_model.g.dart';

@JsonSerializable()
class CustEstimateModel {
  @JsonKey(name: 'Customer_Estimate_Flow')
  List<CustomerEstimateFlow>? customerEstimateFlow;

  CustEstimateModel({this.customerEstimateFlow});

  factory CustEstimateModel.fromJson(Map<String, dynamic> json) {
    return _$CustEstimateModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CustEstimateModelToJson(this);
}
