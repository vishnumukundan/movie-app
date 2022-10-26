// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../components/icon_button.dart';
import '../../../components/rating_indicator.dart';
import '../../../themes/colors.dart';
import '../../../themes/values.dart';

class ButtonGroupSection__widget extends StatelessWidget {
  const ButtonGroupSection__widget({Key? key, required this.ratingValue})
      : super(key: key);

  final ratingValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RatingIndicator__widget(
          ratingValue: ratingValue,
        ),
        const SizedBox(width: kDefaultPadding / 2),
        Primary_Medium__IconButton(
          icon: Assets.icons.heartFill,
          borderRadius: 60.0,
          bgColor: kColorPrimary80,
          onTap: () {},
        ),
        const SizedBox(width: kDefaultPadding / 2),
        Primary_Medium__IconButton(
          icon: Assets.icons.download,
          borderRadius: 60.0,
          bgColor: kColorPrimary80,
          onTap: () {},
        ),
        const SizedBox(width: kDefaultPadding / 2),
        Primary_Medium__IconButton(
          icon: Assets.icons.share,
          borderRadius: 60.0,
          bgColor: kColorPrimary80,
          onTap: () {},
        ),
      ],
    );
  }
}
