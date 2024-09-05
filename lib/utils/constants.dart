import 'package:flutter/material.dart';

// Text styles
const kMonthTextStyle = TextStyle(
  fontSize: 16,
  color: Colors.black,
  fontWeight: FontWeight.w900,
);

const kDayTextStyle = TextStyle(
  fontSize: 20,
  color: Colors.deepOrange,
  fontWeight: FontWeight.w900,
  letterSpacing: 0,
);

const kTimeTextStyle = TextStyle(
  fontSize: 12,
  color: Colors.grey,
  fontWeight: FontWeight.w900,
  letterSpacing: 0,
);

const kCityTextStyle = TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.w900,
);

const kEstimateIdTextStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w900,
  letterSpacing: -1,
);

const kGreyTextStyle = TextStyle(
  color: Colors.grey,
);

const kIconTextStyle = TextStyle(
  fontSize: 12,
  letterSpacing: 0,
);

// Button styles
final kOutlinedButtonStyle = OutlinedButton.styleFrom(
  shape: const RoundedRectangleBorder(),
  side: const BorderSide(color: Colors.deepOrange, width: 2),
  padding: const EdgeInsets.symmetric(vertical: 10),
);

final kElevatedButtonStyle = ElevatedButton.styleFrom(
  shape: const RoundedRectangleBorder(),
  backgroundColor: Colors.deepOrange,
  padding: const EdgeInsets.symmetric(vertical: 10),
);

const kOutlinedButtonTextStyle = TextStyle(
  color: Colors.deepOrange,
);

const kElevatedButtonTextStyle = TextStyle(
  color: Colors.white,
);
