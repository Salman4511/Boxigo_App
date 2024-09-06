import 'package:boxigo_app/widgets/tab_bar_widget.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TabController tabController;
  final String title;
  final List<Widget> tabs;

  const CustomAppBar(
      {super.key,
      required this.tabController,
      required this.title,
      required this.tabs});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 25,
        ),
      ),
      actions: [
        IconButton(
          icon: Badge.count(
            count: 99,
            backgroundColor: Colors.deepOrange,
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
      bottom: TabBarWidget(tabController: tabController, tabs: tabs),
    );
  }
}
