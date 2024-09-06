import 'package:boxigo_app/models/cust_estimate_model/customer_estimate_flow.dart';
import 'package:boxigo_app/models/cust_estimate_model/items.dart';
import 'package:boxigo_app/views/leads/lead_floor_info_screen.dart';
import 'package:boxigo_app/views/leads/lead_items_screen.dart';
import 'package:boxigo_app/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class NewLeadScreen extends StatefulWidget {
  final Items items;
  final CustomerEstimateFlow estimate;
  const NewLeadScreen({super.key, required this.items, required this.estimate});

  @override
  State<NewLeadScreen> createState() => _NewLeadScreenState();
}

class _NewLeadScreenState extends State<NewLeadScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        tabController: _tabController,
        title: 'New Leads',
        tabs: const [
          Tab(text: 'Items'),
          Tab(text: 'Floor Info'),
          Tab(text: 'Send Quote'),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          LeadItemsScreen(items: widget.items),
          LeadsFloorInfoScreen(
            estimate: widget.estimate,
          ),
          LeadItemsScreen(items: widget.items),
        ],
      ),
    );
  }
}
