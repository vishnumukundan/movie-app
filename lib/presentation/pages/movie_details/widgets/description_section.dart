// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:movie_app/presentation/themes/colors.dart';

import '../../../../gen/assets.gen.dart';
import '../../../components/text.dart';
import '../../../themes/values.dart';

class DescriptionSection__widget extends StatelessWidget {
  const DescriptionSection__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Medium__text(
          text: 'Description',
          fontSize: 16.0,
        ),
        const SizedBox(height: kDefaultPadding / 2),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Assets.icons.time.svg(height: 16),
            const SizedBox(width: kDefaultPadding / 3),
            const Regular__text(
              text: '*2h 6m',
              fontSize: 14.0,
              height: 1.5,
              color: kColorWhite80,
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Assets.icons.film.svg(height: 16),
            const SizedBox(width: kDefaultPadding / 3),
            const Regular__text(
              text: '*Fantasy, Action, Adventure',
              fontSize: 14.0,
              height: 1.5,
              color: kColorWhite80,
            ),
          ],
        ),
      ],
    );
  }
}
