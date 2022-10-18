// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/generics/custom_widget_builder.dart';
import 'package:movie_app/presentation/components/skelton.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';
import 'package:movie_app/presentation/themes/values.dart';

class CastSectionSkelton__widget extends StatelessWidget {
  CastSectionSkelton__widget({Key? key}) : super(key: key);

  final double _width = getScreenWidthPercentage(20.0);

  @override
  Widget build(BuildContext context) {
    return Skelton__widget(
      child: CustomListViewBuilder(
          clipBehavior: Clip.none,
          crossAxisAlignment: CrossAxisAlignment.start,
          itemCount: 10,
          contentSpacing: kDefaultPadding,
          scrollDirection: Axis.horizontal,
          builder: (context, index) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                ClipOval(
                  child: Container(
                    height: _width,
                    width: _width,
                    decoration: const BoxDecoration(
                      color: kColorWhite,
                    ),
                  ),
                ),
                const SizedBox(height: kDefaultPadding / 2),
                Container(
                  height: 14,
                  width: _width - 16,
                  decoration: BoxDecoration(
                    color: kColorWhite,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
