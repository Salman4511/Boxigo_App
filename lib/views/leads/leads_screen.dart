// ignore_for_file: library_private_types_in_public_api
import 'package:boxigo_app/views/leads/lead_list_screen.dart';
import 'package:boxigo_app/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:boxigo_app/controllers/lead_controller.dart';

class LeadScreen extends StatefulWidget {
  const LeadScreen({super.key});

  @override
  _LeadScreenState createState() => _LeadScreenState();
}

class _LeadScreenState extends State<LeadScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    Future.microtask(
        // ignore: use_build_context_synchronously
        () => Provider.of<LeadController>(context, listen: false).fetchData());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        tabController: _tabController,
        title: 'Leads',
        tabs: const [
          Tab(text: 'All'),
          Tab(text: 'New'),
          Tab(text: 'Follow Up'),
          Tab(text: 'Booked'),
          Tab(text: 'In Transit'),
        ],
      ),
      body: Consumer<LeadController>(
        builder: (context, leadState, child) {
          if (leadState.isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (leadState.error != null) {
            return Center(child: Text('Error: ${leadState.error}'));
          } else {
            final estimates =
                leadState.custEstimateModel?.customerEstimateFlow ?? [];

            return TabBarView(
              controller: _tabController,
              children: [
                LeadListScreen(
                  estimates: estimates,
                ),
                LeadListScreen(estimates: estimates),
                LeadListScreen(estimates: estimates),
                LeadListScreen(estimates: estimates),
                LeadListScreen(estimates: estimates),
              ],
            );
          }
        },
      ),
    );
  }
}
