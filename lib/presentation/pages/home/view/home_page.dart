// ignore_for_file: unused_import, unused_element

import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/utils/generics/custom_scroll_behavior.dart';
import 'package:movie_app/core/utils/generics/custom_widget_builder.dart';
import 'package:movie_app/core/utils/generics/sort_list_by.dart';
import 'package:movie_app/data/bloc/discover/discover_bloc.dart';
import 'package:movie_app/data/bloc/home/home_data/home_data_bloc.dart';
import 'package:movie_app/data/bloc/home/image_slider/image_slider_bloc.dart';
import 'package:movie_app/data/bloc/upcoming_movies/upcoming_movies_bloc.dart';
import 'package:movie_app/data/sources/dummy/dummy_data.dart';
import 'package:movie_app/data/sources/remote_data_sources/api_end_points.dart';
import 'package:movie_app/presentation/bloc/components/widgets_functionality/widgets_functionality_bloc.dart';
import 'package:movie_app/presentation/bloc/main/appbar/appbar_bloc.dart';
import 'package:movie_app/presentation/bloc/navigation_from/navigation_from_bloc.dart';
import 'package:movie_app/presentation/components/error_widgets/no_internet_dialog.dart';
import 'package:movie_app/presentation/components/movie_list_scroll.dart';
import 'package:movie_app/presentation/pages/home/widgets/genres_scroll.dart';
import 'package:movie_app/presentation/pages/home/widgets/latest_trailers.dart';
import 'package:movie_app/presentation/pages/home/widgets/upcoming_movies/upcoming_stack.dart';
import 'package:movie_app/presentation/pages/movies_result_grid/view/movies_result_grid_page.dart';
import 'package:movie_app/presentation/themes/colors.dart';

import '../../../components/background.dart';
import '../../../components/text.dart';
import '../../../components/video_card_item.dart';
import '../../../themes/screen_size_config.dart';
import '../../../themes/values.dart';
import '../../main/widgets/appbar.dart';
import '../widgets/image_slider.dart';

late HomePageCurrentPage _currentPage;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    _currentPage = context.watch<AppbarBloc>().state.currentPage;

// getting data from button press state
    final trendingMoviesTimePeriod = context
        .watch<WidgetsFunctionalityBloc>()
        .state
        .movieListScrollButtonQuery;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<ImageSliderBloc>()
          .add(const ImageSliderEvent.getImageSliderData());

      context
          .read<UpcomingMoviesBloc>()
          .add(const UpcomingMoviesEvent.getUpcomingMovies());

      context.read<DiscoverBloc>().add(const DiscoverEvent.getMovieGenres());

      context.read<HomeDataBloc>().add(const HomeDataEvent.getTopRatedMovies());
      context.read<HomeDataBloc>().add(const HomeDataEvent.getTopHindiMovies());
      context
          .read<HomeDataBloc>()
          .add(const HomeDataEvent.getTopMalayalamMovies());
      context.read<HomeDataBloc>().add(const HomeDataEvent.getTopTamilMovies());
      //
      context.read<HomeDataBloc>().add(
          HomeDataEvent.getTrendingMovies(dayOrWeek: trendingMoviesTimePeriod));
    });

    //
    //
    context.read<NavigationFromBloc>().add(
        const NavigationFromEvent.setNavigationFrom(
            navigateFrom: NavigateFrom.posterScroll));

    return Stack(
      children: [
        SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 116),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageSlider__widget(),
              const SizedBox(height: 92.0),
              const GenresScroll__widget(),

              // Top Rated Movies
              BlocBuilder<HomeDataBloc, HomeDataState>(
                builder: (context, state) {
                  return MovieListScroll__widget(
                    title: 'Top Rated Movies',
                    itemCount: 10,
                    dataList: state.topRatedList,
                  );
                },
              ),

              const SizedBox(height: kDefaultPadding * 2),
              const UpcomingStack__widget(),

              // Trending
              BlocBuilder<HomeDataBloc, HomeDataState>(
                builder: (context, state) {
                  return MovieListScroll__widget(
                    title: 'Trending ',
                    dataList: state.trendingList,
                    buttonVisibility: true,
                  );
                },
              ),
              // const SizedBox(height: kDefaultPadding),

              // const LatestTrailers__widget(),
              const SizedBox(height: kDefaultPadding),

              // Top 10 Tamil Movies
              BlocBuilder<HomeDataBloc, HomeDataState>(
                builder: (context, state) {
                  return MovieListScroll__widget(
                    title: 'Top 10 Tamil Movies',
                    dataList: state.topTamilList,
                  );
                },
              ),

              // Top 10 Hindi Movies
              BlocBuilder<HomeDataBloc, HomeDataState>(
                builder: (context, state) {
                  return MovieListScroll__widget(
                    title: 'Top 10 Hindi Movies',
                    dataList: state.topHindiList,
                  );
                },
              ),

              // Top 10 Malayalam Movies
              BlocBuilder<HomeDataBloc, HomeDataState>(
                builder: (context, state) {
                  return MovieListScroll__widget(
                    title: 'Top 10 Malayalam Movies',
                    dataList: state.topMalayalamList,
                  );
                },
              ),
            ],
          ),
        ),
        const Appbar__widget(),
      ],
    );
  }
}
