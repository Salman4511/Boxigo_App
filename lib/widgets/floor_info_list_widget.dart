import 'package:boxigo_app/utils/constants.dart';
import 'package:boxigo_app/widgets/floor_info_row_widget.dart';
import 'package:flutter/material.dart';

class FloorInfoListWidget extends StatelessWidget {
  final String title;
  final String floorNo;
  final String elevator;
  final String isPakingreq;
  final String dist;
  final String additionalInfo;
  
  const FloorInfoListWidget({
    super.key, required this.floorNo, required this.elevator, required this.isPakingreq, required this.dist, required this.additionalInfo, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      kSizedBoxHeight10,
      Container(
        height: 50,
        width: double.infinity,
        color: Colors.grey.shade300,
        child:  Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            title,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kBaseColor),
          ),
        ),
      ),
      kSizedBoxHeight10,
       Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            FloorInfoRowWidget(
              title: 'Floor No.',
              suffixData: floorNo,
            ),
            kSizedBoxHeight30,
            FloorInfoRowWidget(
              title: 'Elevator Available.',
              suffixData: elevator,
            ),
            kSizedBoxHeight30,
            FloorInfoRowWidget(
              title: 'Packing Required.',
              suffixData: isPakingreq,
            ),
            kSizedBoxHeight30,
            FloorInfoRowWidget(
              title: 'Distance from door to truck.',
              suffixData: dist,
            ),
            kSizedBoxHeight30,
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Additional Information',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Text(
                      additionalInfo,
                      style:
                          const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      )
    ]);
  }
}
