// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:movie_app/presentation/components/skelton.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';
import 'package:movie_app/presentation/themes/values.dart';

class PosterImageSkelton__widget extends StatelessWidget {
  const PosterImageSkelton__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Skelton__widget(
        child: Container(
      height: getScreenHeightPercentage(80.0),
      width: ScreenConfig.screenWidth,
      color: kSkeltonColor,
    ));
  }
}
