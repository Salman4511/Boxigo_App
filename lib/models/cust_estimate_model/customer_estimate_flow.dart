import 'package:json_annotation/json_annotation.dart';

import 'from_address.dart';
import 'items.dart';
import 'to_address.dart';

part 'customer_estimate_flow.g.dart';

@JsonSerializable()
class CustomerEstimateFlow {
  @JsonKey(name: 'estimate_id')
  String? estimateId;
  @JsonKey(name: 'user_id')
  String? userId;
  @JsonKey(name: 'moving_from')
  String? movingFrom;
  @JsonKey(name: 'moving_to')
  String? movingTo;
  @JsonKey(name: 'moving_on')
  String? movingOn;
  String? distance;
  @JsonKey(name: 'property_size')
  String? propertySize;
  @JsonKey(name: 'old_floor_no')
  String? oldFloorNo;
  @JsonKey(name: 'new_floor_no')
  String? newFloorNo;
  @JsonKey(name: 'old_elevator_availability')
  String? oldElevatorAvailability;
  @JsonKey(name: 'new_elevator_availability')
  String? newElevatorAvailability;
  @JsonKey(name: 'old_parking_distance')
  String? oldParkingDistance;
  @JsonKey(name: 'new_parking_distance')
  String? newParkingDistance;
  @JsonKey(name: 'unpacking_service')
  String? unpackingService;
  @JsonKey(name: 'packing_service')
  String? packingService;
  Items? items;
  @JsonKey(name: 'old_house_additional_info')
  String? oldHouseAdditionalInfo;
  @JsonKey(name: 'new_house_additional_info')
  String? newHouseAdditionalInfo;
  @JsonKey(name: 'total_items')
  String? totalItems;
  String? status;
  @JsonKey(name: 'order_date')
  String? orderDate;
  @JsonKey(name: 'date_created')
  String? dateCreated;
  @JsonKey(name: 'date_of_complete')
  dynamic dateOfComplete;
  @JsonKey(name: 'date_of_cancel')
  dynamic dateOfCancel;
  @JsonKey(name: 'estimate_status')
  String? estimateStatus;
  @JsonKey(name: 'custom_status')
  String? customStatus;
  @JsonKey(name: 'estimate_comparison')
  dynamic estimateComparison;
  dynamic estimateAmount;
  List<dynamic>? successfulPayments;
  @JsonKey(name: 'order_reviewed')
  String? orderReviewed;
  @JsonKey(name: 'call_back')
  String? callBack;
  @JsonKey(name: 'move_date_flexible')
  String? moveDateFlexible;
  @JsonKey(name: 'from_address')
  FromAddress? fromAddress;
  @JsonKey(name: 'to_address')
  ToAddress? toAddress;
  @JsonKey(name: 'service_type')
  String? serviceType;
  @JsonKey(name: 'storage_items')
  dynamic storageItems;

  CustomerEstimateFlow({
    this.estimateId,
    this.userId,
    this.movingFrom,
    this.movingTo,
    this.movingOn,
    this.distance,
    this.propertySize,
    this.oldFloorNo,
    this.newFloorNo,
    this.oldElevatorAvailability,
    this.newElevatorAvailability,
    this.oldParkingDistance,
    this.newParkingDistance,
    this.unpackingService,
    this.packingService,
    this.items,
    this.oldHouseAdditionalInfo,
    this.newHouseAdditionalInfo,
    this.totalItems,
    this.status,
    this.orderDate,
    this.dateCreated,
    this.dateOfComplete,
    this.dateOfCancel,
    this.estimateStatus,
    this.customStatus,
    this.estimateComparison,
    this.estimateAmount,
    this.successfulPayments,
    this.orderReviewed,
    this.callBack,
    this.moveDateFlexible,
    this.fromAddress,
    this.toAddress,
    this.serviceType,
    this.storageItems,
  });

  factory CustomerEstimateFlow.fromJson(Map<String, dynamic> json) {
    return _$CustomerEstimateFlowFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CustomerEstimateFlowToJson(this);
}
