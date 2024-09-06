import 'package:flutter/material.dart';

class FloorInfoRowWidget extends StatelessWidget {
  final String title;
  final String suffixData;
  const FloorInfoRowWidget({
    super.key, required this.title, required this.suffixData,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 18, color: Colors.grey),
        ),
        const Spacer(),
        Text(
          suffixData,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: -1),
        ),
      ],
    );
  }
}
