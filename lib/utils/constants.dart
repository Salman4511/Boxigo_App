

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

// constants from LeadDetailsScreen

const kExpansionTileTitleTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 20,
  color: Colors.deepOrange,
);

const kExpansionTileCollapsedColor = Colors.grey;

const kTileTitleTextStyle = TextStyle(
  color: Colors.grey,
);

const kTileSubtitleTextStyle = TextStyle(
  fontWeight: FontWeight.w900,
);

const kTileTrailingTextStyle = TextStyle(
  fontWeight: FontWeight.w900,
  fontSize: 18,
);

const kCustomItemTextStyle = TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 18,
);

const kTileLeadingIcon = Icons.chair;

const kDimensionTextStyle = TextStyle(
  fontWeight: FontWeight.w900,
);

// Padding values
const kPadding15 = EdgeInsets.only(left: 15);
const kPadding10 = EdgeInsets.symmetric(vertical: 10);

// Heights for ListViews
const kListViewHeight300 = 300.0;
const kListViewHeight120 = 120.0;

// SizedBoxes

const kSizedBoxHeight10 = SizedBox(height: 10);
const kSizedBoxHeight30 = SizedBox(height: 30);

// Colors

const kBaseColor = Colors.deepOrange;