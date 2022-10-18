// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:movie_app/presentation/components/skelton.dart';
import 'package:movie_app/presentation/themes/values.dart';

import '../../../themes/screen_size_config.dart';

class ImageStackSkelton__widget extends StatelessWidget {
  const ImageStackSkelton__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Skelton__widget(
      child: Container(
        height: getScreenHeightPercentage(30.0),
        width: getScreenHeightPercentage(20.0),
        decoration: BoxDecoration(
          color: kSkeltonColor,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
