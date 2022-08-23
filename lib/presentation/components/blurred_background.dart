import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_app/presentation/themes/colors.dart';

class BlurredBackground__widget extends StatelessWidget {
  const BlurredBackground__widget({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: kColorBlack.withOpacity(0.1),
          ),
          child: child,
        ),
      ),
    );
  }
}
