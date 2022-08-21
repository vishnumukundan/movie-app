// ignore_for_file: prefer_typing_uninitialized_variables, camel_case_types

import 'package:flutter/material.dart';

import '../themes/button_config.dart';

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
    required this.leftIconVisibility,
    required this.rightIconVisibility,
    this.leftIcon,
    this.rightIcon,
    required this.iconAndTextSpace,
    required this.textSize,
    required this.fontWeight,
    required this.iconSize,
    required this.buttonHeight,
    required this.cornerRadius,
    required this.onTap,
  }) : super(key: key);

  final text;
  final onTap;
  final textColor;
  final backgroundColor;
  final paddingLeft;
  final paddingRight;
  final bool leftIconVisibility;
  final bool rightIconVisibility;
  final IconData? leftIcon;
  final IconData? rightIcon;
  final double iconAndTextSpace;
  final double buttonHeight;
  final iconSize;
  final double cornerRadius;

  // should remove when there is custom text style
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
          borderRadius: BorderRadius.circular(cornerRadius),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: <Widget>[
                Visibility(
                  visible: leftIconVisibility,
                  child: Row(
                    children: <Widget>[
                      Icon(leftIcon, size: iconSize, color: textColor),
                      SizedBox(width: iconAndTextSpace),
                    ],
                  ),
                )
              ],
            ),
            Text(
              text,
              style: TextStyle(
                fontFamily: fontFamily,
                fontWeight: fontWeight,
                fontSize: textSize,
                color: textColor,
              ),
            ),
            Visibility(
              visible: rightIconVisibility,
              child: Row(
                children: <Widget>[
                  SizedBox(width: iconAndTextSpace),
                  Icon(rightIcon, size: iconSize, color: textColor),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//--------------------------------------------------------------------------------

////////////////////////////////////////////////////////
//////  Large Button Design
////////////////////////////////////////////////////////

///
//////  Primary Large Button
///
class Primary__Button__Large extends StatelessWidget {
  const Primary__Button__Large({
    Key? key,
    required this.text,
    this.leftIcon,
    this.rightIcon,
    required this.leftIconVisibility,
    required this.rightIconVisibility,
    required this.onTap,
  }) : super(key: key);

  final text;
  final onTap;
  final IconData? leftIcon;
  final IconData? rightIcon;
  final bool leftIconVisibility;
  final bool rightIconVisibility;

  @override
  Widget build(BuildContext context) {
    return ButtonStyle(
      text: text,
      onTap: onTap,
      textColor: kButtonPrimaryTextColor,
      backgroundColor: kButtonPrimaryColor,
      paddingLeft:
          leftIconVisibility ? kButtonLargePadding : kButtonLargeBasePadding,
      paddingRight:
          rightIconVisibility ? kButtonLargePadding : kButtonLargeBasePadding,
      leftIcon: leftIcon,
      rightIcon: rightIcon,
      leftIconVisibility: leftIconVisibility,
      rightIconVisibility: rightIconVisibility,
      //
      fontWeight: kButtonLargeFontWeight,
      iconAndTextSpace: kButtonLargeTextAndIconSpace,
      textSize: kButtonLargeTextSize,
      iconSize: kButtonLargeIconSize,
      buttonHeight: kButtonLargeHeight,
      cornerRadius: kButtonLargeCornerRadius,
    );
  }
}

///
//////  Secondary Large Button
///
class Secondary__Button__Large extends StatelessWidget {
  const Secondary__Button__Large({
    Key? key,
    required this.text,
    this.leftIcon,
    this.rightIcon,
    required this.leftIconVisibility,
    required this.rightIconVisibility,
    required this.onTap,
  }) : super(key: key);

  final text;
  final onTap;
  final IconData? leftIcon;
  final IconData? rightIcon;
  final bool leftIconVisibility;
  final bool rightIconVisibility;

  @override
  Widget build(BuildContext context) {
    return ButtonStyle(
      text: text,
      onTap: onTap,
      textColor: kButtonSecondaryTextColor,
      backgroundColor: kButtonSecondaryColor,
      paddingLeft:
          leftIconVisibility ? kButtonLargePadding : kButtonLargeBasePadding,
      paddingRight:
          rightIconVisibility ? kButtonLargePadding : kButtonLargeBasePadding,
      leftIcon: leftIcon,
      rightIcon: rightIcon,
      leftIconVisibility: leftIconVisibility,
      rightIconVisibility: rightIconVisibility,
      //
      fontWeight: kButtonLargeFontWeight,
      iconAndTextSpace: kButtonLargeTextAndIconSpace,
      textSize: kButtonLargeTextSize,
      iconSize: kButtonLargeIconSize,
      buttonHeight: kButtonLargeHeight,
      cornerRadius: kButtonLargeCornerRadius,
    );
  }
}

///
//////  Accent Large Button
///
class Accent__Button__Large extends StatelessWidget {
  const Accent__Button__Large({
    Key? key,
    required this.text,
    this.leftIcon,
    this.rightIcon,
    required this.leftIconVisibility,
    required this.rightIconVisibility,
    required this.onTap,
  }) : super(key: key);

  final text;
  final onTap;
  final IconData? leftIcon;
  final IconData? rightIcon;
  final bool leftIconVisibility;
  final bool rightIconVisibility;

  @override
  Widget build(BuildContext context) {
    return ButtonStyle(
      text: text,
      onTap: onTap,
      textColor: kButtonAccentTextColor,
      backgroundColor: kButtonAccentColor,
      paddingLeft:
          leftIconVisibility ? kButtonLargePadding : kButtonLargeBasePadding,
      paddingRight:
          rightIconVisibility ? kButtonLargePadding : kButtonLargeBasePadding,
      leftIcon: leftIcon,
      rightIcon: rightIcon,
      leftIconVisibility: leftIconVisibility,
      rightIconVisibility: rightIconVisibility,
      //
      fontWeight: kButtonLargeFontWeight,
      iconAndTextSpace: kButtonLargeTextAndIconSpace,
      textSize: kButtonLargeTextSize,
      iconSize: kButtonLargeIconSize,
      buttonHeight: kButtonLargeHeight,
      cornerRadius: kButtonLargeCornerRadius,
    );
  }
}

////////////////////////////////////////////////////////
//////  Medium Button Design
////////////////////////////////////////////////////////

///
//////  Primary Medium Button
///
class Primary__Button__Medium extends StatelessWidget {
  const Primary__Button__Medium({
    Key? key,
    required this.text,
    this.leftIcon,
    this.rightIcon,
    required this.leftIconVisibility,
    required this.rightIconVisibility,
    required this.onTap,
  }) : super(key: key);

  final text;
  final onTap;
  final IconData? leftIcon;
  final IconData? rightIcon;
  final bool leftIconVisibility;
  final bool rightIconVisibility;

  @override
  Widget build(BuildContext context) {
    return ButtonStyle(
      text: text,
      onTap: onTap,
      textColor: kButtonPrimaryTextColor,
      backgroundColor: kButtonPrimaryColor,
      paddingLeft:
          leftIconVisibility ? kButtonMediumPadding : kButtonMediumBasePadding,
      paddingRight:
          rightIconVisibility ? kButtonMediumPadding : kButtonMediumBasePadding,
      leftIcon: leftIcon,
      rightIcon: rightIcon,
      leftIconVisibility: leftIconVisibility,
      rightIconVisibility: rightIconVisibility,
      //
      fontWeight: kButtonMediumFontWeight,
      iconAndTextSpace: kButtonMediumTextAndIconSpace,
      textSize: kButtonMediumTextSize,
      iconSize: kButtonMediumIconSize,
      buttonHeight: kButtonMediumHeight,
      cornerRadius: kButtonMediumCornerRadius,
    );
  }
}

///
//////  Secondary Medium Button
///
class Secondary__Button__Medium extends StatelessWidget {
  const Secondary__Button__Medium({
    Key? key,
    required this.text,
    this.leftIcon,
    this.rightIcon,
    required this.leftIconVisibility,
    required this.rightIconVisibility,
    required this.onTap,
  }) : super(key: key);

  final text;
  final onTap;
  final IconData? leftIcon;
  final IconData? rightIcon;
  final bool leftIconVisibility;
  final bool rightIconVisibility;

  @override
  Widget build(BuildContext context) {
    return ButtonStyle(
      text: text,
      onTap: onTap,
      textColor: kButtonSecondaryTextColor,
      backgroundColor: kButtonSecondaryColor,
      paddingLeft:
          leftIconVisibility ? kButtonMediumPadding : kButtonMediumBasePadding,
      paddingRight:
          rightIconVisibility ? kButtonMediumPadding : kButtonMediumBasePadding,
      leftIcon: leftIcon,
      rightIcon: rightIcon,
      leftIconVisibility: leftIconVisibility,
      rightIconVisibility: rightIconVisibility,
      //
      fontWeight: kButtonMediumFontWeight,
      iconAndTextSpace: kButtonMediumTextAndIconSpace,
      textSize: kButtonMediumTextSize,
      iconSize: kButtonMediumIconSize,
      buttonHeight: kButtonMediumHeight,
      cornerRadius: kButtonMediumCornerRadius,
    );
  }
}

///
//////  Accent Medium Button
///
class Accent__Button__Medium extends StatelessWidget {
  const Accent__Button__Medium({
    Key? key,
    required this.text,
    this.leftIcon,
    this.rightIcon,
    required this.leftIconVisibility,
    required this.rightIconVisibility,
    required this.onTap,
  }) : super(key: key);

  final text;
  final onTap;
  final IconData? leftIcon;
  final IconData? rightIcon;
  final bool leftIconVisibility;
  final bool rightIconVisibility;

  @override
  Widget build(BuildContext context) {
    return ButtonStyle(
      text: text,
      onTap: onTap,
      textColor: kButtonAccentTextColor,
      backgroundColor: kButtonAccentColor,
      paddingLeft:
          leftIconVisibility ? kButtonMediumPadding : kButtonMediumBasePadding,
      paddingRight:
          rightIconVisibility ? kButtonMediumPadding : kButtonMediumBasePadding,
      leftIcon: leftIcon,
      rightIcon: rightIcon,
      leftIconVisibility: leftIconVisibility,
      rightIconVisibility: rightIconVisibility,
      //
      fontWeight: kButtonMediumFontWeight,
      iconAndTextSpace: kButtonMediumTextAndIconSpace,
      textSize: kButtonMediumTextSize,
      iconSize: kButtonMediumIconSize,
      buttonHeight: kButtonMediumHeight,
      cornerRadius: kButtonMediumCornerRadius,
    );
  }
}

////////////////////////////////////////////////////////
//////  Small Button Design
////////////////////////////////////////////////////////

///
//////  Primary Small Button
///
class Primary__Button__Small extends StatelessWidget {
  const Primary__Button__Small({
    Key? key,
    required this.text,
    this.leftIcon,
    this.rightIcon,
    required this.leftIconVisibility,
    required this.rightIconVisibility,
    required this.onTap,
  }) : super(key: key);

  final text;
  final onTap;
  final IconData? leftIcon;
  final IconData? rightIcon;
  final bool leftIconVisibility;
  final bool rightIconVisibility;

  @override
  Widget build(BuildContext context) {
    return ButtonStyle(
      text: text,
      onTap: onTap,
      textColor: kButtonPrimaryTextColor,
      backgroundColor: kButtonPrimaryColor,
      paddingLeft:
          leftIconVisibility ? kButtonSmallPadding : kButtonSmallBasePadding,
      paddingRight:
          rightIconVisibility ? kButtonSmallPadding : kButtonSmallBasePadding,
      leftIcon: leftIcon,
      rightIcon: rightIcon,
      leftIconVisibility: leftIconVisibility,
      rightIconVisibility: rightIconVisibility,
      //
      fontWeight: kButtonSmallFontWeight,
      iconAndTextSpace: kButtonSmallTextAndIconSpace,
      textSize: kButtonSmallTextSize,
      iconSize: kButtonSmallIconSize,
      buttonHeight: kButtonSmallHeight,
      cornerRadius: kButtonSmallCornerRadius,
    );
  }
}

///
//////  Secondary Small Button
///
class Secondary__Button__Small extends StatelessWidget {
  const Secondary__Button__Small({
    Key? key,
    required this.text,
    this.leftIcon,
    this.rightIcon,
    required this.leftIconVisibility,
    required this.rightIconVisibility,
    required this.onTap,
  }) : super(key: key);

  final text;
  final onTap;
  final IconData? leftIcon;
  final IconData? rightIcon;
  final bool leftIconVisibility;
  final bool rightIconVisibility;

  @override
  Widget build(BuildContext context) {
    return ButtonStyle(
      text: text,
      onTap: onTap,
      textColor: kButtonSecondaryTextColor,
      backgroundColor: kButtonSecondaryColor,
      paddingLeft:
          leftIconVisibility ? kButtonSmallPadding : kButtonSmallBasePadding,
      paddingRight:
          rightIconVisibility ? kButtonSmallPadding : kButtonSmallBasePadding,
      leftIcon: leftIcon,
      rightIcon: rightIcon,
      leftIconVisibility: leftIconVisibility,
      rightIconVisibility: rightIconVisibility,
      //
      fontWeight: kButtonSmallFontWeight,
      iconAndTextSpace: kButtonSmallTextAndIconSpace,
      textSize: kButtonSmallTextSize,
      iconSize: kButtonSmallIconSize,
      buttonHeight: kButtonSmallHeight,
      cornerRadius: kButtonSmallCornerRadius,
    );
  }
}

///
//////  Accent Small Button
///
class Accent__Button__Small extends StatelessWidget {
  const Accent__Button__Small({
    Key? key,
    required this.text,
    this.leftIcon,
    this.rightIcon,
    required this.leftIconVisibility,
    required this.rightIconVisibility,
    required this.onTap,
  }) : super(key: key);

  final text;
  final onTap;
  final IconData? leftIcon;
  final IconData? rightIcon;
  final bool leftIconVisibility;
  final bool rightIconVisibility;

  @override
  Widget build(BuildContext context) {
    return ButtonStyle(
      text: text,
      onTap: onTap,
      textColor: kButtonAccentTextColor,
      backgroundColor: kButtonAccentColor,
      paddingLeft:
          leftIconVisibility ? kButtonSmallPadding : kButtonSmallBasePadding,
      paddingRight:
          rightIconVisibility ? kButtonSmallPadding : kButtonSmallBasePadding,
      leftIcon: leftIcon,
      rightIcon: rightIcon,
      leftIconVisibility: leftIconVisibility,
      rightIconVisibility: rightIconVisibility,
      //
      fontWeight: kButtonSmallFontWeight,
      iconAndTextSpace: kButtonSmallTextAndIconSpace,
      textSize: kButtonSmallTextSize,
      iconSize: kButtonSmallIconSize,
      buttonHeight: kButtonSmallHeight,
      cornerRadius: kButtonSmallCornerRadius,
    );
  }
}
