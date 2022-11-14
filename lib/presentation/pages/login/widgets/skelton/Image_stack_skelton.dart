// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:movie_app/presentation/components/skelton.dart';
import 'package:movie_app/presentation/themes/values.dart';

import '../../../../themes/screen_size_config.dart';

class ImageStackSkelton__widget extends StatelessWidget {
  const ImageStackSkelton__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Skelton__widget(
      child: SizedBox(
        width: double.infinity,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Positioned(
              left: 0,
              child: Transform.scale(
                scale: 0.8,
                child: Container(
                  height: getScreenHeightPercentage(30.0),
                  width: getScreenHeightPercentage(20.0),
                  decoration: BoxDecoration(
                    color: kSkeltonColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              child: Transform.scale(
                scale: 0.8,
                child: Container(
                  height: getScreenHeightPercentage(30.0),
                  width: getScreenHeightPercentage(20.0),
                  decoration: BoxDecoration(
                    color: kSkeltonColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            Container(
              height: getScreenHeightPercentage(30.0),
              width: getScreenHeightPercentage(20.0),
              decoration: BoxDecoration(
                color: kSkeltonColor,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
