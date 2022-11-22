// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/presentation/components/button.dart';
import 'package:movie_app/presentation/components/skelton.dart';
import 'package:movie_app/presentation/pages/home/widgets/skelton/widgets/movie_list_scroll_skelton.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';
import 'package:movie_app/presentation/themes/values.dart';

class ActorProfileSkelton__widget extends StatelessWidget {
  const ActorProfileSkelton__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: getScreenHeightPercentage(18.0),
            bottom: kDefaultPadding / 2,
            left: kDefaultPadding * 2,
            right: kDefaultPadding * 2,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Skelton__widget(
                child: Container(
                  height: getScreenWidthPercentage(45.0),
                  width: getScreenWidthPercentage(30.0),
                  decoration: BoxDecoration(
                    // color: kColorPrimaryTint_3,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Assets.icons.person
                      .svg(width: getScreenWidthPercentage(15.0)),
                ),
              ),
              const SizedBox(width: kDefaultPadding * 1.5),
              Expanded(
                child: Skelton__widget(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: kDefaultPadding * 1.33),
                      SkeltonContent(height: 18.0, width: 150),
                      SizedBox(height: kDefaultPadding),
                      SkeltonContent(height: 14.0, width: 100),
                      SizedBox(height: kDefaultPadding / 2),
                      SkeltonContent(height: 10.0, width: 120),
                      SizedBox(height: kDefaultPadding),
                      SkeltonContent(height: 14.0, width: 60),
                      SizedBox(height: kDefaultPadding / 2),
                      SkeltonContent(height: 10.0, width: 80),
                      SizedBox(height: kDefaultPadding),
                      SkeltonContent(height: 14.0, width: 120),
                      SizedBox(height: kDefaultPadding / 2),
                      SkeltonContent(height: 10.0, width: 100),
                      SizedBox(height: kDefaultPadding),
                      SkeltonContent(height: 14.0, width: 75),
                      SizedBox(height: kDefaultPadding / 2),
                      SkeltonContent(height: 10.0, width: 40),
                      SizedBox(height: kDefaultPadding),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: kDefaultPadding * 3),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Skelton__widget(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SkeltonContent(height: 16.0, width: 150),
                const SizedBox(height: kDefaultPadding),
                const SkeltonContent(height: 10.0),
                const SizedBox(height: kDefaultPadding / 2),
                const SkeltonContent(height: 10.0),
                const SizedBox(height: kDefaultPadding / 2),
                const SkeltonContent(height: 10.0),
                const SizedBox(height: kDefaultPadding / 2),
                const SkeltonContent(height: 10.0),
                const SizedBox(height: kDefaultPadding / 2),
                const SkeltonContent(height: 10.0),
                const SizedBox(height: kDefaultPadding / 2),
                SkeltonContent(
                    height: 10.0, width: getScreenWidthPercentage(60.0)),
                const SizedBox(height: kDefaultPadding / 2),
              ],
            ),
          ),
        ),
        const SizedBox(height: kDefaultPadding * 2),
        const MovieListScrollSkelton__widget(),
        const SizedBox(height: kDefaultPadding),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Accent_Large__button(
              text: 'View All Movies',
              cornerRadius: 60.0,
              rightIcon: Assets.icons.arrowRight,
              onTap: () {},
            ),
          ],
        ),
        const SizedBox(height: kDefaultPadding * 2),
      ],
    );
  }
}
