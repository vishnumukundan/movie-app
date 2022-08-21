import 'package:flutter/cupertino.dart';

const double designScreenHeight = 844.0;
const double designScreenWidth = 390.0;

///
/// return current screen's height, width and orientation
class ScreenConfig {
  static MediaQueryData? _mediaQueryData;
  static late double screenHeight;
  static late double screenWidth;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
  }
}

///
/// return screen's height percentage
double getScreenHeightPercentage(double percentageValue) {
  double screenHeight = ScreenConfig.screenHeight;
  return (percentageValue / 100) * screenHeight;
}

///
/// return screen's with percentage
double getScreenWidthPercentage(double percentageValue) {
  double screenWidth = ScreenConfig.screenWidth;
  return (percentageValue / 100) * screenWidth;
}

///
/// return size based on design screen height
double getScreenPropotionalHeight(double inputHeight) {
  double screenHeight = ScreenConfig.screenHeight;
  return (inputHeight / designScreenHeight) * screenHeight;
}

///
/// return size based on design screen width
double getScreenPropotionalWidth(double inputWidth) {
  double screenWidth = ScreenConfig.screenWidth;
  return (inputWidth / designScreenWidth) * screenWidth;
}
