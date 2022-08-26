import 'package:flutter/material.dart';
import 'package:movie_app/presentation/components/image_container.dart';
import 'package:movie_app/presentation/components/rating_indicator.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';

import '../../data/sources/dummy/dummy_data.dart';
import '../themes/values.dart';

class MovieListScroll__widget extends StatelessWidget {
  const MovieListScroll__widget({
    Key? key,
    required this.title,
    required this.dataList,
  }) : super(key: key);

  final String title;
  final dynamic dataList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: kDefaultPadding * 3),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Medium__text(text: title, fontSize: 16.0),
        ),
        const SizedBox(height: kDefaultPadding / 2),
        SizedBox(
          height: 250,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            itemCount: 10,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
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
                      bottom: 12,
                      right: 0,
                      left: 0,
                      child: RatingIndicator__widget(
                        ratingValue: moviePosterDummyData[index]
                            ["vote_average"],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
