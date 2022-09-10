// ignore_for_file: camel_case_types

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';

class BlurredBackground__widget extends StatelessWidget {
  const BlurredBackground__widget({
    Key? key,
    required this.child,
    this.borderRadius,
    this.blur,
    this.color,
  }) : super(key: key);

  final Widget child;
  final BorderRadius? borderRadius;
  final double? blur;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur ?? 10.0, sigmaY: blur ?? 10.0),
        child: Container(
          width: ScreenConfig.screenWidth,
          decoration: BoxDecoration(
            color: color ?? kColorBlack.withOpacity(0.2),
          ),
          child: child,
        ),
      ),
    );
  }
}
