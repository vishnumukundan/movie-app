// ignore_for_file: camel_case_types

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:movie_app/presentation/components/skelton.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';
import 'package:movie_app/presentation/themes/values.dart';

class UpcomingMoviesStackSkelton__widget extends StatelessWidget {
  const UpcomingMoviesStackSkelton__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Skelton__widget(
      child: SizedBox(
        width: ScreenConfig.screenWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SkeltonContent(height: 16.0, width: 150),
            const SizedBox(height: kDefaultPadding * 1.5),

            //
            SizedBox(
              child: Stack(
                clipBehavior: Clip.none,
                alignment: AlignmentDirectional.center,
                children: [
                  SizedBox(width: ScreenConfig.screenWidth),
                  Positioned(
                    left: -8,
                    child: Transform.scale(
                      scale: 0.8,
                      child: Transform.rotate(
                        angle: -pi / 15,
                        child: SkeltonContent(
                          height: getScreenWidthPercentage(70.0),
                          width: getScreenWidthPercentage(45.0),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: -8,
                    child: Transform.scale(
                      scale: 0.8,
                      child: Transform.rotate(
                        angle: pi / 15,
                        child: SkeltonContent(
                          height: getScreenWidthPercentage(70.0),
                          width: getScreenWidthPercentage(45.0),
                        ),
                      ),
                    ),
                  ),
                  SkeltonContent(
                    height: getScreenWidthPercentage(70.0),
                    width: getScreenWidthPercentage(45.0),
                  ),
                ],
              ),
            ),
            const SizedBox(height: kDefaultPadding),
            const SkeltonContent(height: 40, width: 100),
          ],
        ),
      ),
    );
  }
}
