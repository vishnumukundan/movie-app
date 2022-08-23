// ignore_for_file: camel_case_types, use_key_in_widget_constructors
// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:movie_app/presentation/themes/colors.dart';

import '../themes/values.dart';

///
/// default values
const double kDefaultFontSize = 14.0;
const double kDefaultLineHeight = 1.0;
const double kDefaultLetterSpacing = 0.0;
const kDefaultFontWeight = FontWeight.w400;
const kDefaultTextColor = kColorWhite;

///
/// base widget
///
class Text__widget extends StatelessWidget {
  const Text__widget({
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.height,
    this.fontWeight,
    this.fontFamily,
    this.color,
    this.textAlign,
    this.textOverFlow,
    this.maxLines,
  });

  final String text;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final Color? color;
  final double? fontSize;
  final double? letterSpacing;
  final double? height;
  final TextAlign? textAlign;
  final TextOverflow? textOverFlow;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: textOverFlow,
      textAlign: textAlign ?? TextAlign.left,
      maxLines: maxLines,
      style: TextStyle(
        fontFamily: fontFamily ?? kFontFamily,
        fontWeight: fontWeight ?? kDefaultFontWeight,
        color: color ?? kDefaultTextColor,
        fontSize: fontSize ?? kDefaultFontSize,
        letterSpacing: letterSpacing ?? kDefaultLetterSpacing,
        height: height ?? kDefaultLineHeight,
      ),
    );
  }
}

////////////////////////////////////////
/// VARIANTS
////////////////////////////////////////

///
/// Bold
/// -----------------------------------------------------------------------------------------------

class Bold__text extends Text__widget {
  const Bold__text({
    required super.text,
    required super.fontSize,
    super.letterSpacing,
    super.height,
    super.fontWeight = FontWeight.w700,
    super.fontFamily,
    super.color,
    super.textAlign,
    super.textOverFlow,
    super.maxLines,
  });
}

///
/// SemiBold
/// -----------------------------------------------------------------------------------------------

class SemiBold__text extends Text__widget {
  const SemiBold__text({
    required super.text,
    required super.fontSize,
    super.letterSpacing,
    super.height,
    super.fontWeight = FontWeight.w600,
    super.fontFamily,
    super.color,
    super.textAlign,
    super.textOverFlow,
    super.maxLines,
  });
}

///
/// Medium
/// -----------------------------------------------------------------------------------------------

class Medium__text extends Text__widget {
  const Medium__text({
    required super.text,
    required super.fontSize,
    super.letterSpacing,
    super.height,
    super.fontWeight = FontWeight.w500,
    super.fontFamily,
    super.color,
    super.textAlign,
    super.textOverFlow,
    super.maxLines,
  });
}

///
/// Regular
/// -----------------------------------------------------------------------------------------------

class Regular__text extends Text__widget {
  const Regular__text({
    required super.text,
    required super.fontSize,
    super.letterSpacing,
    super.height,
    super.fontWeight = FontWeight.w400,
    super.fontFamily,
    super.color,
    super.textAlign,
    super.textOverFlow,
    super.maxLines,
  });
}

///
/// body
/// -----------------------------------------------------------------------------------------------

class Body__text extends Text__widget {
  const Body__text({
    required super.text,
    super.fontSize = kDefaultFontSize,
    super.letterSpacing = 1,
    super.height = 1.35,
    super.fontWeight = FontWeight.w400,
    super.fontFamily,
    super.color = kColorWhite50,
    super.textAlign,
    super.textOverFlow,
    super.maxLines,
  });
}
