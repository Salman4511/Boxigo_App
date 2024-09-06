import 'package:boxigo_app/views/leads/new_lead_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/cust_estimate_model/customer_estimate_flow.dart';
import '../utils/constants.dart';

class LeadCard extends StatelessWidget {
  final CustomerEstimateFlow estimate;

  const LeadCard({required this.estimate, super.key});

  @override
  Widget build(BuildContext context) {
    final DateFormat monthFormatter = DateFormat('MMM');
    final DateFormat dayFormatter = DateFormat('dd');
    final DateFormat timeFormatter = DateFormat('HH:mm');
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(height: 10),
                  Text(
                    monthFormatter
                        .format(DateTime.parse(estimate.dateCreated!)),
                    style: kMonthTextStyle,
                  ),
                  Text(
                    dayFormatter.format(DateTime.parse(estimate.dateCreated!)),
                    style: kDayTextStyle,
                  ),
                  Text(
                    timeFormatter.format(DateTime.parse(estimate.dateCreated!)),
                    style: kTimeTextStyle,
                  ),
                ],
              ),
              const SizedBox(width: 20),
              SizedBox(
                height: 315,
                width: 300,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(estimate.fromAddress!.fromCity!,
                            style: kCityTextStyle),
                        const Spacer(),
                        Text(estimate.estimateId!, style: kEstimateIdTextStyle),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      estimate.movingFrom!,
                      style: kGreyTextStyle,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.arrow_downward,
                            color: kBaseColor),
                        buildIconText(Icons.home, estimate.propertySize!),
                        buildIconText(
                            Icons.inventory, '${estimate.totalItems} items'),
                        buildIconText(Icons.all_inbox,
                            '${estimate.items!.inventory!.length.toString()} boxes'),
                        buildIconText(Icons.map, estimate.distance!),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          estimate.toAddress!.toCity!,
                          style: kCityTextStyle,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      estimate.movingFrom!,
                      style: kGreyTextStyle,
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return NewLeadScreen(
                                    items: estimate.items!, estimate: estimate,
                                  );
                                }),
                              );
                            },
                            style: kOutlinedButtonStyle,
                            child: const Text(
                              'View Details',
                              style: kOutlinedButtonTextStyle,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: kElevatedButtonStyle,
                            child: const Text(
                              'Submit Quote',
                              style: kElevatedButtonTextStyle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }

  Widget buildIconText(IconData icon, String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 22, color: kBaseColor),
        Text(text, style: kIconTextStyle),
      ],
    );
  }
}
