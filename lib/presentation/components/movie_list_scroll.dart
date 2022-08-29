import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/generics/custom_widget_builder.dart';
import 'package:movie_app/presentation/components/button.dart';
import 'package:movie_app/presentation/components/image_container.dart';
import 'package:movie_app/presentation/components/rating_indicator.dart';
import 'package:movie_app/presentation/components/text.dart';

import '../../data/sources/dummy/dummy_data.dart';
import '../themes/values.dart';

class MovieListScroll__widget extends StatelessWidget {
  const MovieListScroll__widget({
    Key? key,
    required this.title,
    required this.dataList,
    this.buttonVisibility = false,
  }) : super(key: key);

  final String title;
  final dynamic dataList;
  final bool buttonVisibility;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: kDefaultPadding * 3),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Medium__text(text: title, fontSize: 16.0),
              const Spacer(),
              if (buttonVisibility)
                Accent_Small__button(text: 'Today', onTap: () {}),
              const SizedBox(width: kDefaultPadding / 2),
              if (buttonVisibility)
                Primary_Small__button(text: 'This Week', onTap: () {}),
            ],
          ),
        ),
        CustomWidgetBuilder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(
            vertical: kDefaultPadding,
            horizontal: kDefaultPadding * 2,
          ),
          itemCount: 10,
          contentSpacing: kDefaultPadding,
          builder: (context, index) {
            return Container(
              padding: const EdgeInsets.only(bottom: 25),
              child: Stack(
                alignment: AlignmentDirectional.topCenter,
                clipBehavior: Clip.none,
                children: [
                  ImageContainer__widget(
                    imageData: dataList,
                    index: index,
                    height: 200.0,
                    width: 130.0,
                    radius: 8.0,
                    boxshadow: kDefaultBoxShadow,
                  ),
                  Positioned(
                    bottom: -25,
                    child: RatingIndicator__widget(
                      ratingValue: moviePosterDummyData[index]["vote_average"],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
