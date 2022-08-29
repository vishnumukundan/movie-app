// ignore_for_file: unused_import

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/services/sort_list_by.dart';
import 'package:movie_app/core/utils/generics/app_route/custom_scroll_behavior.dart';
import 'package:movie_app/core/utils/generics/custom_widget_builder.dart';
import 'package:movie_app/data/sources/dummy/dummy_data.dart';
import 'package:movie_app/presentation/bloc/home/image_slider/image_slider_cubit.dart';
import 'package:movie_app/presentation/components/movie_list_scroll.dart';
import 'package:movie_app/presentation/pages/home/widgets/genres_scroll.dart';
import 'package:movie_app/presentation/pages/home/widgets/latest_trailers.dart';
import 'package:movie_app/presentation/pages/home/widgets/upcoming_movies/upcoming_stack.dart';
import 'package:movie_app/presentation/themes/colors.dart';

import '../../../components/text.dart';
import '../../../components/background.dart';
import '../../../components/video_card_item.dart';
import '../../../themes/screen_size_config.dart';
import '../../../themes/values.dart';
import '../../main/widgets/appbar.dart';
import '../widgets/image_slider.dart';

final _data = moviePosterDummyData;

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ImageSliderCubit(),
        )
      ],
      child: Stack(
        children: [
          ScrollConfiguration(
            behavior: CustomScroll(),
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 100),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageSlider__widget(),
                  const SizedBox(height: 92.0),
                  const GenresScroll__widget(),
                  MovieListScroll__widget(
                      title: 'Popular Movies', dataList: moviePosterDummyData),
                  const SizedBox(height: kDefaultPadding * 2),
                  const UpcomingStack__widget(),
                  MovieListScroll__widget(
                    title: 'Trending ',
                    dataList: moviePosterDummyData,
                    buttonVisibility: true,
                  ),
                  const SizedBox(height: kDefaultPadding),
                  const LatestTrailers__widget(),
                  const SizedBox(height: kDefaultPadding),
                  MovieListScroll__widget(
                      title: 'Top 10 Action Movies',
                      dataList: moviePosterDummyData),
                  MovieListScroll__widget(
                      title: 'Top 10 Romantic Movies',
                      dataList: moviePosterDummyData),
                  MovieListScroll__widget(
                      title: 'Top 10 Drama Movies',
                      dataList: moviePosterDummyData),
                ],
              ),
            ),
          ),
          const Appbar__widget(),
        ],
      ),
    );
  }
}
