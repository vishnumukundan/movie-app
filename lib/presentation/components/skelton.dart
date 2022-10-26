// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/values.dart';
import 'package:shimmer/shimmer.dart';

class Skelton__widget extends StatelessWidget {
  const Skelton__widget({
    Key? key,
    this.baseColor,
    this.highlightColor,
    required this.child,
    this.period,
    this.direction,
    this.loop,
    this.enabled,
  }) : super(key: key);

  final Widget child;
  final Color? baseColor;
  final Color? highlightColor;
  final Duration? period;
  final ShimmerDirection? direction;
  final int? loop;
  final bool? enabled;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor ?? kSkeltonBaseColor,
      highlightColor: highlightColor ?? kSkeltonHighlightColor,
      period: period ?? const Duration(milliseconds: 1500),
      direction: direction ?? ShimmerDirection.ltr,
      loop: loop ?? 0,
      enabled: enabled ?? true,
      child: child,
    );
  }
}

class SkeltonContent extends StatelessWidget {
  const SkeltonContent({
    Key? key,
    required this.height,
    this.width,
    this.radius,
  }) : super(key: key);

  final double height;
  final double? width;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        color: kColorWhite,
        borderRadius: BorderRadius.circular(radius ?? 8),
      ),
    );
  }
}
