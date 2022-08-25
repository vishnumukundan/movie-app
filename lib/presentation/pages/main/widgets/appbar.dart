import 'package:flutter/material.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/values.dart';

import '../../../../gen/assets.gen.dart';
import '../../../components/blurred_background.dart';

class Appbar__widget extends StatelessWidget {
  const Appbar__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlurredBackground__widget(
      child: Padding(
        padding: const EdgeInsets.only(
          top: kDefaultPadding * 2.5,
          bottom: kDefaultPadding / 1.5,
          left: kDefaultPadding * 2,
          right: kDefaultPadding * 2,
        ),
        child: Row(
          children: <Widget>[
            GestureDetector(
              onTap: () {},
              child: Assets.icons.search.svg(
                height: 32,
                width: 32,
                color: kColorWhite,
              ),
            ),
            const SizedBox(width: kDefaultPadding * 2),
            GestureDetector(
              onTap: () {},
              child: const SemiBold__text(text: 'Movies', fontSize: 16.0),
            ),
            const SizedBox(width: kDefaultPadding * 3),
            GestureDetector(
              onTap: () {},
              child: Regular__text(
                text: 'Tv Shows',
                fontSize: 16.0,
                color: kColorWhite.withOpacity(0.7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
