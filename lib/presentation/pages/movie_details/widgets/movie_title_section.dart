// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../components/icon_button.dart';
import '../../../components/text.dart';
import '../../../themes/colors.dart';
import '../../../themes/values.dart';

class MovieTitleSection__widget extends StatelessWidget {
  const MovieTitleSection__widget({
    Key? key,
    required this.title,
    required this.tagline,
  }) : super(key: key);

  final String title;
  final String tagline;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Bold__text(
                text: title,
                fontSize: 20.0,
                height: 1.3,
              ),
              const SizedBox(height: kDefaultPadding / 2),
              Regular__text(
                text: tagline,
                fontSize: 14.0,
                color: kColorWhite80,
                height: 1.2,
              ),
            ],
          ),
        ),
        const SizedBox(width: kDefaultPadding / 2),
        Accent_Medium__IconButton(
          icon: Assets.icons.play,
          borderRadius: 60.0,
          onTap: () {},
        )
      ],
    );
  }
}
