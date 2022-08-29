import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/generics/custom_widget_builder.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/themes/values.dart';

import '../../../../data/sources/dummy/dummy_data.dart';
import '../../../themes/colors.dart';

class GenresScroll__widget extends StatelessWidget {
  const GenresScroll__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomWidgetBuilder(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
      itemCount: 5,
      contentSpacing: kDefaultPadding,
      builder: (context, index) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: kColorPrimary.withOpacity(0.5),
          ),
          child: Center(
            child: Regular__text(
              text: '${genreDummyData[index]["genre"]}',
              fontSize: 18.0,
            ),
          ),
        );
      },
    );
  }
}
