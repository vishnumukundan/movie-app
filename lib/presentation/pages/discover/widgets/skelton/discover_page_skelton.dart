// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/generics/custom_widget_builder.dart';
import 'package:movie_app/presentation/components/blurred_background.dart';
import 'package:movie_app/presentation/components/skelton.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';
import 'package:movie_app/presentation/themes/values.dart';

//
final double _width = getScreenWidthPercentage(20.0);
//

class DiscoverPageSkelton__widget extends StatelessWidget {
  const DiscoverPageSkelton__widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Skelton__widget(
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: const [
                SizedBox(height: 56),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
                  child: SkeltonContent(height: 16, width: 150),
                ),
                SizedBox(height: kDefaultPadding),
                //
                // genres grid skelton
                GenresGridSkelton(),
                SizedBox(height: kDefaultPadding * 3),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
                  child: SkeltonContent(height: 16, width: 150),
                ),
                SizedBox(height: kDefaultPadding),
                //
                // person grid skelton
                PersonGridSkelton(),
                SizedBox(height: 116),
              ],
            ),
          ),
          BlurredBackground__widget(
            color: kColorWhite.withOpacity(0.0),
            child: Container(height: 35),
          ),
        ],
      ),
    );
  }
}

class PersonGridSkelton extends StatelessWidget {
  const PersonGridSkelton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomGridViewBuilder(
        padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding * 2,
        ),
        crossAxisCount: 3,
        mainAxisSpacing: kDefaultPadding,
        crossAxisSpacing: kDefaultPadding,
        childAspectRatio: 3 / 4,
        shrinkWrap: true,
        itemCount: 15,
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
              const SkeltonContent(height: 12, width: 80),
            ],
          );
        });
  }
}

class GenresGridSkelton extends StatelessWidget {
  const GenresGridSkelton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomGridViewBuilder(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        crossAxisCount: 2,
        mainAxisSpacing: kDefaultPadding,
        crossAxisSpacing: kDefaultPadding,
        childAspectRatio: 7 / 3,
        itemCount: 16,
        shrinkWrap: true,
        builder: (context, index) {
          return Container(
            height: 100,
            decoration: BoxDecoration(
              color: kColorWhite,
              borderRadius: BorderRadius.circular(kDefaultPadding / 2),
            ),
          );
        });
  }
}
