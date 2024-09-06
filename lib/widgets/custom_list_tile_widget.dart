import 'package:boxigo_app/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String trailing;
  final Icon leadingIcon;

  const CustomListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.trailing,
    required this.leadingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: kTileTitleTextStyle,
      ),
      subtitle: Text(
        subtitle,
        style: kTileSubtitleTextStyle,
      ),
      trailing: Text(
        trailing,
        style: kTileTrailingTextStyle,
      ),
      leading: leadingIcon,
    );
  }
}
