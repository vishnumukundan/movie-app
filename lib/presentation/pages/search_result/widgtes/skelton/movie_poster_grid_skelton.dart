// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/generics/custom_widget_builder.dart';
import 'package:movie_app/presentation/components/skelton.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';
import 'package:movie_app/presentation/themes/values.dart';

class MoviePosterGridSkelton__widget extends StatelessWidget {
  const MoviePosterGridSkelton__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Skelton__widget(
      child: CustomGridViewBuilder(
          padding: EdgeInsets.only(
            left: kDefaultPadding * 2,
            top: getScreenHeightPercentage(16.0),
            right: kDefaultPadding * 2,
            bottom: kDefaultPadding * 2,
          ),
          crossAxisCount: 3,
          itemCount: 6 * 3,
          mainAxisSpacing: kDefaultPadding / 2,
          crossAxisSpacing: kDefaultPadding / 2,
          childAspectRatio: 6 / 10,
          builder: (context, index) {
            return Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8),
              ),
            );
          }),
    );
  }
}
