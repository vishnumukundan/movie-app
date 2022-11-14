// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/presentation/components/icon_button.dart';
import 'package:movie_app/presentation/components/skelton.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';
import 'package:movie_app/presentation/themes/values.dart';

class TopSearchedListviewSkelton__widget extends StatelessWidget {
  const TopSearchedListviewSkelton__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Skelton__widget(
      child: Container(
        padding: const EdgeInsets.all(kDefaultPadding),
        width: double.infinity,
        decoration: BoxDecoration(
          color: kColorWhite50,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 54,
                    width: 54,
                    decoration: BoxDecoration(
                      color: kColorWhite,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  const SizedBox(width: kDefaultPadding / 2),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SkeltonContent(height: 10.0),
                        const SizedBox(height: kDefaultPadding / 2),
                        SkeltonContent(
                            height: 10.0,
                            width: getScreenWidthPercentage(30.0)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: kDefaultPadding / 2),
            Primary_Large__IconButton(
              icon: Assets.icons.play,
              padding: 8.0,
              borderRadius: 60.0,
              iconColor: kColorWhite,
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
