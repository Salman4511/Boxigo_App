import 'package:boxigo_app/models/cust_estimate_model/items.dart';
import 'package:boxigo_app/views/leads/lead_details_screen.dart';
import 'package:boxigo_app/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class NewLeadScreen extends StatefulWidget {
  final Items estimate;

  const NewLeadScreen({super.key, required this.estimate});

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
          LeadDetailsScreen(estimate: widget.estimate),
          LeadDetailsScreen(estimate: widget.estimate),
          LeadDetailsScreen(estimate: widget.estimate),
        ],
      ),
    );
  }
}
