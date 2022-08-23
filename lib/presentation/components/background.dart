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
  }) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: ScreenConfig.screenWidth,
          height: ScreenConfig.screenHeight,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.images.bgImage.path),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  kColorPrimary.withOpacity(0.5), BlendMode.multiply),
            ),
          ),
          child: kDefaultBlur,
        ),
        SafeArea(
          child: child,
        ),
      ],
    );
  }
}
