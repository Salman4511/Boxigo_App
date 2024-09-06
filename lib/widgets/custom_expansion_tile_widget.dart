import 'package:boxigo_app/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomExpansionTile extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const CustomExpansionTile({
    super.key,
    required this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        title,
        style: kExpansionTileTitleTextStyle,
      ),
      collapsedBackgroundColor: kExpansionTileCollapsedColor.shade300,
      children: children,
    );
  }
}
