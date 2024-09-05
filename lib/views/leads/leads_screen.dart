// ignore_for_file: library_private_types_in_public_api
import 'package:boxigo_app/views/leads/lead_list_screen.dart';
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
    final leadController = Provider.of<LeadController>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Leads',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        actions: [
          IconButton(
            icon: Badge.count(
              count: 99,
              child: const Icon(
                Icons.notifications_none_outlined,
                size: 30,
              ),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.search,
              size: 30,
            ),
            onPressed: () {},
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.tab,
          labelStyle:
              const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          indicatorColor: Colors.deepOrange,
          labelColor: Colors.deepOrange,
          tabs: const [
            Tab(text: 'All'),
            Tab(text: 'New'),
            Tab(text: 'Follow Up'),
            Tab(text: 'Booked'),
            Tab(text: 'In Transit'),
          ],
        ),
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
