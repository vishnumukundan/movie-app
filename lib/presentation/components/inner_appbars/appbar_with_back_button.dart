// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:movie_app/core/services/navigator.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';

import '../../themes/values.dart';
import '../blurred_background.dart';

class AppbarWithBackButton__widget extends StatelessWidget {
  const AppbarWithBackButton__widget({
    Key? key,
    required this.text,
    this.trailingIcon = false,
  }) : super(key: key);

  final String text;
  final bool trailingIcon;

  @override
  Widget build(BuildContext context) {
    return BlurredBackground__widget(
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.only(
          left: kDefaultPadding * 2,
          top: getScreenHeightPercentage(8.0),
          right: kDefaultPadding * 2,
          bottom: kDefaultPadding / 8,
        ),
        child: Row(
          children: <Widget>[
            GestureDetector(
              onTap: () => PageNav.pop(context),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Assets.icons.arrowLeft.svg(),
              ),
            ),
            const SizedBox(width: kDefaultPadding),
            Expanded(
                child: Regular__text(
              text: text,
              fontSize: 18.0,
              height: 1.4,
            )),
            Visibility(
              visible: trailingIcon,
              child: Assets.icons.column2
                  .svg(width: 32, height: 32, color: kColorWhite50),
            ),
          ],
        ),
      ),
    );
  }
}
