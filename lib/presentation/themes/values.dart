// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'colors.dart';

const kFontFamily = 'Poppins';

///
/// spacing values
const double kDefaultPadding = 16;

// blur
const double kDefaultBlur = 50.0;

// boxshadow
final kDefaultBoxShadow = [
  BoxShadow(
    color: kColorPrimary.withOpacity(0.7),
    offset: const Offset(0, 7),
    blurRadius: 20,
  ),
];

//hint text style
const TextStyle kHintTextStyle = TextStyle(
  fontFamily: 'Poppins',
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: kColorWhite50,
);

//hint text style
const TextStyle kLabelTextStyle = TextStyle(
  fontFamily: 'Poppins',
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: kColorWhite,
);

// skelton Colors
const kSkeltonColor = kColorWhite;
const kSkeltonBaseColor = kColorPrimaryTint_2;
const kSkeltonHighlightColor = kColorPrimaryTint_3;
