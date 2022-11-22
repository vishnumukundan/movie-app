// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:movie_app/presentation/pages/home/widgets/image_slider.dart';
import 'package:movie_app/presentation/pages/home/widgets/skelton/widgets/genres_scroll_skelton.dart';
import 'package:movie_app/presentation/pages/home/widgets/skelton/widgets/movie_list_scroll.skelton.dart';
import 'package:movie_app/presentation/pages/home/widgets/skelton/widgets/upcoming_movies_stack_skelton.dart';
import 'package:movie_app/presentation/themes/values.dart';

class HomePageSkelton__widget extends StatelessWidget {
  const HomePageSkelton__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ImageSlider__widget(),
        const SizedBox(height: 92.0),
        const GenresScrollSkelton__widget(),
        const SizedBox(height: kDefaultPadding * 2),
        // Top Rated Movies
        const MovieListScrollSkelton__widget(),

        const SizedBox(height: kDefaultPadding * 2),
        const UpcomingMoviesStackSkelton__widget(),

        // Trending
        const SizedBox(height: kDefaultPadding * 2),
        const MovieListScrollSkelton__widget(),

        // const SizedBox(height: kDefaultPadding),
        // const LatestTrailers__widget(),

        // Top 10 Tamil Movies
        const SizedBox(height: kDefaultPadding * 2),
        const MovieListScrollSkelton__widget(),

        // Top 10 Hindi Movies
        const SizedBox(height: kDefaultPadding * 2),
        const MovieListScrollSkelton__widget(),

        // Top 10 Malayalam Movies
        const SizedBox(height: kDefaultPadding * 2),
        const MovieListScrollSkelton__widget(),
      ],
    );
  }
}
