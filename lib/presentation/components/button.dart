// ignore_for_file: prefer_typing_uninitialized_variables, camel_case_types, unused_element, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/values.dart';

///
////// Primary Button color
const _kBtnPriColor = Colors.transparent;
const _kBtnPriBorderColor = kColorPrimaryTint_3;
const _kBtnPriTextColor = kColorPrimaryTint_3;

///
////// Secondary Button color
const _kBtnSecColor = Colors.transparent;
const _kBtnSecBorderColor = Colors.transparent;
const _kBtnSecTextColor = kColorPrimaryTint_3;

///
////// Accent Button color
const _kBtnAccColor = kColorAccent;
const _kBtnAccBorderColor = Colors.transparent;
const _kBtnAccTextColor = kColorWhite;

///
////// Button Large Config
const double _kBtnLargeTextAndIconSpace = 4;
const double _kBtnLargeTextSize = 16.0;
const double _kBtnLargeIconSize = 24.0;
const double _kBtnLargeHeight = 56.0;

const double _kBtnLargeBasePadding = 24.0;
const double _kBtnLargePadding = 24.0;

const double _kBtnLargeCornerRadius = 8.0;
const FontWeight _kBtnLargeFontWeight = FontWeight.w500;

///
////// Button Medium Config
const double _kBtnMediumTextAndIconSpace = 8.0;
const double _kBtnMediumTextSize = 16.0;
const double _kBtnMediumIconSize = 24.0;
const double _kBtnMediumHeight = 40.0;

const double _kBtnMediumBasePadding = 28.0;
const double _kBtnMediumPadding = 24.0;

const double _kBtnMediumCornerRadius = 8.0;
const FontWeight _kBtnMediumFontWeight = FontWeight.w500;

///
////// Button Small Config
const double _kBtnSmallTextAndIconSpace = 8.0;
const double _kBtnSmallTextSize = 14.0;
const double _kBtnSmallIconSize = 24.0;
const double _kBtnSmallHeight = 30;

const double _kBtnSmallBasePadding = 8.0;
const double _kBtnSmallPadding = 8.0;

const double _kBtnSmallCornerRadius = 8.0;
const FontWeight _kBtnSmallFontWeight = FontWeight.w500;

//---------------------------------------------------------------------------------------

////////////////////////////////////////////////////////
//////  Base Button Design
////////////////////////////////////////////////////////
class ButtonStyle extends StatelessWidget {
  const ButtonStyle({
    Key? key,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
    required this.paddingLeft,
    required this.paddingRight,
    this.leftIcon,
    this.rightIcon,
    required this.iconAndTextSpace,
    required this.textSize,
    required this.fontWeight,
    required this.iconSize,
    required this.buttonHeight,
    required this.cornerRadius,
    required this.onTap,
    this.borderColor,
  }) : super(key: key);

  final String text;
  final VoidCallback onTap;
  final Color textColor;
  final Color backgroundColor;
  final Color? borderColor;
  final double paddingLeft;
  final double paddingRight;
  final leftIcon;
  final rightIcon;
  final double iconAndTextSpace;
  final double buttonHeight;
  final double iconSize;
  final double cornerRadius;

  final textSize;
  final fontWeight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: buttonHeight,
        padding: EdgeInsets.only(
          left: paddingLeft,
          right: paddingRight,
        ),
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(color: borderColor ?? Colors.transparent),
          borderRadius: BorderRadius.circular(cornerRadius),
        ),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Visibility(
                    visible: leftIcon != null,
                    child: Row(
                      children: [
                        if (leftIcon != null)
                          leftIcon.svg(
                            height: iconSize,
                            width: iconSize,
                            color: textColor,
                          ),
                        SizedBox(width: iconAndTextSpace),
                      ],
                    ),
                  )
                ],
              ),
              Text(
                text,
                style: TextStyle(
                  fontFamily: kFontFamily,
                  fontWeight: fontWeight,
                  fontSize: textSize,
                  color: textColor,
                ),
              ),
              Visibility(
                visible: rightIcon != null,
                child: Row(
                  children: [
                    SizedBox(width: iconAndTextSpace),
                    if (rightIcon != null)
                      rightIcon.svg(
                        height: iconSize,
                        width: iconSize,
                        color: textColor,
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//--------------------------------------------------------------------------------

////////////////////////////////////////////////////////
//////  Large Button Design
////////////////////////////////////////////////////////

//  Primary Large Button
class Primary_Large__button extends ButtonStyle {
  const Primary_Large__button({
    super.key,
    required super.text,
    required super.onTap,
    //
    super.textColor = _kBtnPriTextColor,
    super.borderColor = _kBtnPriBorderColor,
    //
    super.backgroundColor = _kBtnPriColor,
    super.paddingLeft = _kBtnLargePadding,
    super.paddingRight = _kBtnLargeBasePadding,
    super.iconAndTextSpace = _kBtnLargeTextAndIconSpace,
    super.textSize = _kBtnLargeTextSize,
    super.fontWeight = _kBtnLargeFontWeight,
    super.iconSize = _kBtnLargeIconSize,
    super.buttonHeight = _kBtnLargeHeight,
    super.cornerRadius = _kBtnLargeCornerRadius,
    //
    super.leftIcon,
    super.rightIcon,
  });
}

//  Primary Medium Button
class Primary_Medium__button extends ButtonStyle {
  const Primary_Medium__button({
    required super.text,
    required super.onTap,
    //
    super.textColor = _kBtnPriTextColor,
    super.borderColor = _kBtnPriBorderColor,
    //
    super.backgroundColor = _kBtnPriColor,
    super.paddingLeft = _kBtnMediumBasePadding,
    super.paddingRight = _kBtnMediumBasePadding,
    super.iconAndTextSpace = _kBtnMediumTextAndIconSpace,
    super.textSize = _kBtnMediumTextSize,
    super.fontWeight = _kBtnMediumFontWeight,
    super.iconSize = _kBtnMediumIconSize,
    super.buttonHeight = _kBtnMediumHeight,
    super.cornerRadius = _kBtnMediumCornerRadius,
    //
    super.leftIcon,
    super.rightIcon,
  });
}

//  Primary Small Button
class Primary_Small__button extends ButtonStyle {
  const Primary_Small__button({
    required super.text,
    required super.onTap,
    //
    super.textColor = _kBtnPriTextColor,
    super.borderColor = _kBtnPriBorderColor,
    //
    super.backgroundColor = _kBtnPriColor,
    super.paddingLeft = _kBtnSmallBasePadding,
    super.paddingRight = _kBtnSmallBasePadding,
    super.iconAndTextSpace = _kBtnSmallTextAndIconSpace,
    super.textSize = _kBtnSmallTextSize,
    super.fontWeight = _kBtnSmallFontWeight,
    super.iconSize = _kBtnSmallIconSize,
    super.buttonHeight = _kBtnSmallHeight,
    super.cornerRadius = _kBtnSmallCornerRadius,
    //
    super.leftIcon,
    super.rightIcon,
  });
}

//  Accent Large Button
class Accent_Large__button extends ButtonStyle {
  const Accent_Large__button({
    required super.text,
    required super.onTap,
    //
    super.textColor = _kBtnAccTextColor,
    super.borderColor = _kBtnAccBorderColor,
    super.backgroundColor = _kBtnAccColor,
    //
    super.paddingLeft = _kBtnLargeBasePadding,
    super.paddingRight = _kBtnLargeBasePadding,
    super.iconAndTextSpace = _kBtnLargeTextAndIconSpace,
    super.textSize = _kBtnLargeTextSize,
    super.fontWeight = _kBtnLargeFontWeight,
    super.iconSize = _kBtnLargeIconSize,
    super.buttonHeight = _kBtnLargeHeight,
    super.cornerRadius = _kBtnLargeCornerRadius,
    //
    super.leftIcon,
    super.rightIcon,
  });
}

//  Accent Medium Button
class Accent_Medium__button extends ButtonStyle {
  const Accent_Medium__button({
    required super.text,
    required super.onTap,
    //
    super.textColor = _kBtnAccTextColor,
    super.borderColor = _kBtnAccBorderColor,
    //
    super.backgroundColor = _kBtnAccColor,
    super.paddingLeft = _kBtnMediumBasePadding,
    super.paddingRight = _kBtnMediumBasePadding,
    super.iconAndTextSpace = _kBtnMediumTextAndIconSpace,
    super.textSize = _kBtnMediumTextSize,
    super.fontWeight = _kBtnMediumFontWeight,
    super.iconSize = _kBtnMediumIconSize,
    super.buttonHeight = _kBtnMediumHeight,
    super.cornerRadius = _kBtnMediumCornerRadius,
    //
    super.leftIcon,
    super.rightIcon,
  });
}

//  Accent Small Button
class Accent_Small__button extends ButtonStyle {
  const Accent_Small__button({
    required super.text,
    required super.onTap,
    //
    super.textColor = _kBtnAccTextColor,
    super.borderColor = _kBtnAccBorderColor,
    //
    super.backgroundColor = _kBtnAccColor,
    super.paddingLeft = _kBtnSmallBasePadding,
    super.paddingRight = _kBtnSmallBasePadding,
    super.iconAndTextSpace = _kBtnSmallTextAndIconSpace,
    super.textSize = _kBtnSmallTextSize,
    super.fontWeight = _kBtnSmallFontWeight,
    super.iconSize = _kBtnSmallIconSize,
    super.buttonHeight = _kBtnSmallHeight,
    super.cornerRadius = _kBtnSmallCornerRadius,
    //
    super.leftIcon,
    super.rightIcon,
  });
}
