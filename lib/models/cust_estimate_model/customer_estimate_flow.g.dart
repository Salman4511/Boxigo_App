// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_estimate_flow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerEstimateFlow _$CustomerEstimateFlowFromJson(
        Map<String, dynamic> json) =>
    CustomerEstimateFlow(
      estimateId: json['estimate_id'] as String?,
      userId: json['user_id'] as String?,
      movingFrom: json['moving_from'] as String?,
      movingTo: json['moving_to'] as String?,
      movingOn: json['moving_on'] as String?,
      distance: json['distance'] as String?,
      propertySize: json['property_size'] as String?,
      oldFloorNo: json['old_floor_no'] as String?,
      newFloorNo: json['new_floor_no'] as String?,
      oldElevatorAvailability: json['old_elevator_availability'] as String?,
      newElevatorAvailability: json['new_elevator_availability'] as String?,
      oldParkingDistance: json['old_parking_distance'] as String?,
      newParkingDistance: json['new_parking_distance'] as String?,
      unpackingService: json['unpacking_service'] as String?,
      packingService: json['packing_service'] as String?,
      items: json['items'] == null
          ? null
          : Items.fromJson(json['items'] as Map<String, dynamic>),
      oldHouseAdditionalInfo: json['old_house_additional_info'] as String?,
      newHouseAdditionalInfo: json['new_house_additional_info'] as String?,
      totalItems: json['total_items'] as String?,
      status: json['status'] as String?,
      orderDate: json['order_date'] as String?,
      dateCreated: json['date_created'] as String?,
      dateOfComplete: json['date_of_complete'],
      dateOfCancel: json['date_of_cancel'],
      estimateStatus: json['estimate_status'] as String?,
      customStatus: json['custom_status'] as String?,
      estimateComparison: json['estimate_comparison'],
      estimateAmount: json['estimateAmount'],
      successfulPayments: json['successfulPayments'] as List<dynamic>?,
      orderReviewed: json['order_reviewed'] as String?,
      callBack: json['call_back'] as String?,
      moveDateFlexible: json['move_date_flexible'] as String?,
      fromAddress: json['from_address'] == null
          ? null
          : FromAddress.fromJson(json['from_address'] as Map<String, dynamic>),
      toAddress: json['to_address'] == null
          ? null
          : ToAddress.fromJson(json['to_address'] as Map<String, dynamic>),
      serviceType: json['service_type'] as String?,
      storageItems: json['storage_items'],
    );

Map<String, dynamic> _$CustomerEstimateFlowToJson(
        CustomerEstimateFlow instance) =>
    <String, dynamic>{
      'estimate_id': instance.estimateId,
      'user_id': instance.userId,
      'moving_from': instance.movingFrom,
      'moving_to': instance.movingTo,
      'moving_on': instance.movingOn,
      'distance': instance.distance,
      'property_size': instance.propertySize,
      'old_floor_no': instance.oldFloorNo,
      'new_floor_no': instance.newFloorNo,
      'old_elevator_availability': instance.oldElevatorAvailability,
      'new_elevator_availability': instance.newElevatorAvailability,
      'old_parking_distance': instance.oldParkingDistance,
      'new_parking_distance': instance.newParkingDistance,
      'unpacking_service': instance.unpackingService,
      'packing_service': instance.packingService,
      'items': instance.items,
      'old_house_additional_info': instance.oldHouseAdditionalInfo,
      'new_house_additional_info': instance.newHouseAdditionalInfo,
      'total_items': instance.totalItems,
      'status': instance.status,
      'order_date': instance.orderDate,
      'date_created': instance.dateCreated,
      'date_of_complete': instance.dateOfComplete,
      'date_of_cancel': instance.dateOfCancel,
      'estimate_status': instance.estimateStatus,
      'custom_status': instance.customStatus,
      'estimate_comparison': instance.estimateComparison,
      'estimateAmount': instance.estimateAmount,
      'successfulPayments': instance.successfulPayments,
      'order_reviewed': instance.orderReviewed,
      'call_back': instance.callBack,
      'move_date_flexible': instance.moveDateFlexible,
      'from_address': instance.fromAddress,
      'to_address': instance.toAddress,
      'service_type': instance.serviceType,
      'storage_items': instance.storageItems,
    };
