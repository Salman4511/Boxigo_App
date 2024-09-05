import 'package:flutter/material.dart';
import 'package:boxigo_app/widgets/lead_card.dart';
import 'package:boxigo_app/models/cust_estimate_model/customer_estimate_flow.dart';

class LeadListScreen extends StatelessWidget {
  final List<CustomerEstimateFlow> estimates;

  const LeadListScreen({
    super.key,
    required this.estimates,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return LeadCard(estimate: estimates[index]);
      },
    );
  }
}
