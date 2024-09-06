import 'package:boxigo_app/models/cust_estimate_model/customer_estimate_flow.dart';
import 'package:boxigo_app/utils/constants.dart';
import 'package:boxigo_app/widgets/floor_info_list_widget.dart';
import 'package:flutter/material.dart';

class LeadsFloorInfoScreen extends StatelessWidget {
  final CustomerEstimateFlow estimate;
  const LeadsFloorInfoScreen({
    super.key,
    required this.estimate,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            FloorInfoListWidget(
                title: 'Existing house details',
                floorNo: estimate.oldFloorNo ?? '2',
                elevator: estimate.oldElevatorAvailability ?? 'No',
                isPakingreq: estimate.packingService ?? 'No',
                dist: estimate.oldParkingDistance ?? '2 km',
                additionalInfo: estimate.oldHouseAdditionalInfo ?? 'nothing'),
            kSizedBoxHeight10,
            FloorInfoListWidget(
                title: 'New house details',
                floorNo: estimate.newFloorNo ?? '4',
                elevator: estimate.newElevatorAvailability ?? 'No',
                isPakingreq: estimate.packingService ?? 'No',
                dist: estimate.newParkingDistance ?? '2 km',
                additionalInfo: estimate.newHouseAdditionalInfo ?? 'nothing')
          ],
        ),
      ),
    );
  }
}
