// ignore_for_file: camel_case_types, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/utils/generics/custom_widget_builder.dart';
import 'package:movie_app/core/utils/generics/navigator.dart';
import 'package:movie_app/data/sources/remote_data_sources/api_end_points.dart';
import 'package:movie_app/presentation/pages/movie_details/view/movie_details_page.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';
import 'package:movie_app/presentation/themes/values.dart';

import '../../../../data/sources/dummy/dummy_data.dart';
import '../../../bloc/components/inner_appbars/appbar_search/appbar_search_cubit.dart';

class MoviePosterGrid__widget extends StatelessWidget {
  const MoviePosterGrid__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final int _iconIndex = context.watch<AppbarSearchCubit>().state.iconIndex;
    return CustomGridViewBuilder(
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        top: getScreenHeightPercentage(16.0),
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding * 2,
      ),
      crossAxisCount: _iconIndex == 0 ? 3 : 2,
      dataList: upcomingMoviesDummyData,
      itemCount: upcomingMoviesDummyData.length,
      mainAxisSpacing: kDefaultPadding / 2,
      crossAxisSpacing: kDefaultPadding / 2,
      childAspectRatio: 6 / 10,
      builder: (context, index) {
        return GestureDetector(
          onTap: () => PageNav.push(
            context,
            MovieDetailsPage(
              id: upcomingMoviesDummyData[index]["id"],
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: kColorWhite50,
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  image: NetworkImage(
                    ApiDataFetching.image(
                      upcomingMoviesDummyData[index]["poster_path"],
                    ),
                  ),
                  fit: BoxFit.cover),
            ),
          ),
        );
      },
    );
  }
}
