// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:movie_app/data/models/upcoming_movies/upcoming_movies_model.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';

import '../../../../components/blurred_background.dart';
import '../../../../components/image_container.dart';
import '../../../../components/text.dart';
import '../../../../themes/colors.dart';
import '../../../../themes/values.dart';

class UpcomingMoviesSinglePoster__widget extends StatelessWidget {
  const UpcomingMoviesSinglePoster__widget({
    Key? key,
    required this.dataList,
    required this.index,
  }) : super(key: key);

  final List<UpcomingMovies> dataList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getScreenWidthPercentage(45.0),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          ImageContainer__widget(
            imageData: dataList[index].posterPath!,
            height: getScreenWidthPercentage(70.0),
            width: double.infinity,
            radius: 8.0,
            boxshadow: kDefaultBoxShadow,
          ),
          BlurredBackground__widget(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
            // blur: 5.0,
            color: kColorPrimary.withOpacity(0.1),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SemiBold__text(
                    text: dataList[index].title!,
                    fontSize: 12.0,
                    maxLines: 1,
                    textOverFlow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: kDefaultPadding / 4),
                  Regular__text(
                    text: dataList[index].releaseDate!,
                    fontSize: 10.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
