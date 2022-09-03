import 'package:flutter/material.dart';
import 'package:movie_app/presentation/components/image_container.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/pages/upcoming_movies/widgets/upcoming_movie_date.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';
import 'package:movie_app/presentation/themes/values.dart';

class UpcomingListItem__widget extends StatelessWidget {
  const UpcomingListItem__widget({
    Key? key,
    required this.image,
    required this.date,
    required this.title,
    required this.overview,
    required this.index,
    required this.dataList,
  }) : super(key: key);

  final int index;
  final dynamic dataList;
  final String image;
  final String date;
  final String title;
  final String overview;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ImageContainer__widget(
              radius: 8,
              imageData: dataList,
              index: index,
              height: getScreenWidthPercentage(45.0),
              width: getScreenWidthPercentage(30.0),
              boxshadow: const [
                BoxShadow(
                  color: kColorPrimary,
                  offset: Offset(10, 10),
                  blurRadius: 20,
                )
              ],
            ),
            const SizedBox(width: kDefaultPadding * 1.5),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: kDefaultPadding * 1.33),
                  UpcomingMovieDate__widget(date: date),
                  // const SizedBox(height: kDefaultPadding / 1.5),
                  Medium__text(
                    text: title.toUpperCase(),
                    fontSize: 18.0,
                    maxLines: 2,
                    textOverFlow: TextOverflow.ellipsis,
                    height: 1.2,
                  ),
                  const SizedBox(height: kDefaultPadding / 2),
                  Medium__text(
                    text: overview,
                    fontSize: 12.0,
                    color: kColorWhite.withOpacity(0.6),
                    height: 1.3,
                    maxLines: 4,
                    textOverFlow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
