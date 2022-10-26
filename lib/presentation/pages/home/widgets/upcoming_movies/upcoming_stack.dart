// ignore_for_file: camel_case_types

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:movie_app/core/services/navigator.dart';
import 'package:movie_app/core/utils/generics/sort_list_by.dart';
import 'package:movie_app/data/sources/dummy/dummy_data.dart';
import 'package:movie_app/presentation/components/button.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/pages/home/widgets/upcoming_movies/upcoming_movies_single_poster.dart';
import 'package:movie_app/presentation/pages/upcoming_movies/view/upcoming_movies_page.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';

import '../../../../themes/values.dart';

final _dataList = SortListBy.desc(upcomingMoviesDummyData, 'release_date');

class UpcomingStack__widget extends StatelessWidget {
  const UpcomingStack__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenConfig.screenWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Medium__text(text: 'Upcoming Movies', fontSize: 16.0),
          const SizedBox(height: kDefaultPadding * 1.5),
          Stack(
            clipBehavior: Clip.none,
            alignment: AlignmentDirectional.center,
            children: [
              SizedBox(width: ScreenConfig.screenWidth),
              Positioned(
                left: -8,
                child: Transform.scale(
                  scale: 0.8,
                  child: Transform.rotate(
                    angle: -pi / 15,
                    child: UpcomingMoviesSinglePoster__widget(
                        dataList: _dataList, index: 1),
                  ),
                ),
              ),
              Positioned(
                right: -8,
                child: Transform.scale(
                  scale: 0.8,
                  child: Transform.rotate(
                    angle: pi / 15,
                    child: UpcomingMoviesSinglePoster__widget(
                        dataList: _dataList, index: 2),
                  ),
                ),
              ),
              UpcomingMoviesSinglePoster__widget(dataList: _dataList, index: 0),
            ],
          ),
          const SizedBox(height: kDefaultPadding),
          SizedBox(
            width: 100,
            child: Primary_Small__button(
              text: 'View All',
              onTap: () {
                PageNav.push(context, const UpcomingMoviesPage());
              },
            ),
          ),
        ],
      ),
    );
  }
}
