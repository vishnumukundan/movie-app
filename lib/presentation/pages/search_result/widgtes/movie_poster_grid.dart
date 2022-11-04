// ignore_for_file: camel_case_types, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/services/navigator.dart';
import 'package:movie_app/core/utils/generics/custom_widget_builder.dart';
import 'package:movie_app/data/models/home/movie_list/movie_list_model.dart';
import 'package:movie_app/data/sources/remote_data_sources/api_end_points.dart';
import 'package:movie_app/presentation/bloc/navigation_from/navigation_from_bloc.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/pages/movie_details/view/movie_details_page.dart';
import 'package:movie_app/presentation/pages/movies_result_grid/view/movies_result_grid_page.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';
import 'package:movie_app/presentation/themes/values.dart';

import '../../../../data/sources/dummy/dummy_data.dart';
import '../../../bloc/components/inner_appbars/appbar_search/appbar_search_cubit.dart';

class MoviePosterGrid__widget extends StatelessWidget {
  const MoviePosterGrid__widget({
    Key? key,
    required this.id,
    required this.dataList,
  }) : super(key: key);

  final dynamic id;
  final MovieList dataList;

  @override
  Widget build(BuildContext context) {
    //
    //
    final navigateFromState =
        context.watch<NavigationFromBloc>().state.navigateFrom;
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
      itemCount: dataList.results.length,
      mainAxisSpacing: kDefaultPadding / 2,
      crossAxisSpacing: kDefaultPadding / 2,
      childAspectRatio: 6 / 10,
      builder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (navigateFromState == NavigateFrom.posterScroll) {
              Get.close(3);
            }
            PageNav.push(
                context, MovieDetailsPage(id: dataList.results[index].id));
          },
          child: dataList.results[index].posterPath != null
              ? Container(
                  decoration: BoxDecoration(
                    color: kColorWhite50,
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        image: NetworkImage(
                          ApiDataFetching.image(
                            dataList.results[index].posterPath!,
                            ImageWidth.w154,
                          ),
                        ),
                        fit: BoxFit.cover),
                  ),
                )
              : Container(
                  decoration: BoxDecoration(
                    color: kColorWhite50,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.info_outline_rounded,
                        color: kColorWhite50,
                        size: 64,
                      ),
                      SizedBox(height: kDefaultPadding / 2),
                      Medium__text(
                        text: 'Image not found !',
                        color: kColorWhite,
                        fontSize: 12.0,
                        height: 1.4,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
        );
      },
    );
  }
}
