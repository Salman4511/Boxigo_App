import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const TabBarWidget({
    super.key,
    required this.tabController,
    required this.tabs,
  });

  final TabController tabController;
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    return TabBar(
        controller: tabController,
        isScrollable: true,
        indicatorSize: TabBarIndicatorSize.tab,
        labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        indicatorColor: Colors.deepOrange,
        labelColor: Colors.deepOrange,
        tabs: tabs);
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
