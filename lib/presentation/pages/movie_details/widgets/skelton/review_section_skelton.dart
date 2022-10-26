// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:movie_app/presentation/components/skelton.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';
import 'package:movie_app/presentation/themes/values.dart';

class ReviewSectionSkelton__widget extends StatelessWidget {
  const ReviewSectionSkelton__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Skelton__widget(
      child: Container(
        padding: const EdgeInsets.all(kDefaultPadding),
        decoration: BoxDecoration(
          color: kColorWhite50,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    color: kColorWhite,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: kDefaultPadding),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      SkeltonContent(height: 16),
                      SizedBox(height: kDefaultPadding / 3),
                      SkeltonContent(height: 10, width: 100),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: kDefaultPadding),
            const SkeltonContent(height: 10),
            const SizedBox(height: kDefaultPadding / 2),
            SkeltonContent(height: 10, width: getScreenWidthPercentage(70.0)),
            const SizedBox(height: kDefaultPadding / 2),
            SkeltonContent(height: 10, width: getScreenWidthPercentage(50.0)),
          ],
        ),
      ),
    );
  }
}
