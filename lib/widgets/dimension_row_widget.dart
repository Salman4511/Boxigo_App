import 'package:boxigo_app/utils/constants.dart';
import 'package:flutter/material.dart';

class DimensionRow extends StatelessWidget {
  final String length;
  final String width;
  final String height;

  const DimensionRow({
    super.key,
    required this.length,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('L: $length ft', style: kDimensionTextStyle),
        const SizedBox(width: 30),
        Text('W: $width ft', style: kDimensionTextStyle),
        const SizedBox(width: 30),
        Text('H: $height ft', style: kDimensionTextStyle),
      ],
    );
  }
}
