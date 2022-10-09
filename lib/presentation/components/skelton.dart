// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
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
