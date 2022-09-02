import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_app/presentation/themes/values.dart';

import '../../gen/assets.gen.dart';
import '../themes/colors.dart';
import '../themes/screen_size_config.dart';

class Background extends StatelessWidget {
  const Background({
    Key? key,
    required this.child,
    this.height,
    this.borderRadius,
    this.animationDuration,
    this.animationCurve,
  }) : super(key: key);
  final Widget child;
  final double? height;
  final BorderRadius? borderRadius;
  final Duration? animationDuration;
  final Curve? animationCurve;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        ClipRRect(
          borderRadius: borderRadius ?? BorderRadius.zero,
          child: AnimatedContainer(
            duration: animationDuration ?? const Duration(seconds: 0),
            curve: animationCurve ?? Curves.linear,
            width: ScreenConfig.screenWidth,
            height: height ?? ScreenConfig.screenHeight,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.images.bgImage.path),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  kColorPrimary.withOpacity(0.5),
                  BlendMode.multiply,
                ),
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: kDefaultBlur,
                sigmaY: kDefaultBlur,
              ),
              child: SizedBox(height: height),
            ),
          ),
        ),
        child,
      ],
    );
  }
}
