// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/services/navigator.dart';
import 'package:movie_app/core/utils/generics/custom_widget_builder.dart';
import 'package:movie_app/data/bloc/discover/discover_bloc.dart';
import 'package:movie_app/presentation/bloc/navigation_from/navigation_from_bloc.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/pages/movies_result_grid/view/movies_result_grid_page.dart';
import 'package:movie_app/presentation/themes/values.dart';

import '../../../themes/colors.dart';

// list of genre positions
List<int> _genrePositions = [0, 3, 4, 6, 13];

class GenresScroll__widget extends StatelessWidget {
  const GenresScroll__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiscoverBloc, DiscoverState>(builder: (context, state) {
      return CustomListViewBuilder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
        itemCount: _genrePositions.length,
        contentSpacing: kDefaultPadding,
        builder: (context, index) {
          final genreIndex = _genrePositions[index];

          return GestureDetector(
            onTap: () {
              context.read<NavigationFromBloc>().add(
                  const NavigationFromEvent.setNavigationFrom(
                      navigateFrom: NavigateFrom.posterGrid));
              PageNav.push(
                context,
                MoviesResultGridPage(
                  id: state.genresDataList[genreIndex].id.toString(),
                  navigateFrom: NavigateFrom.genre,
                  title: '${state.genresDataList[genreIndex].name} Movies',
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: kColorPrimary.withOpacity(0.5),
              ),
              child: Center(
                child: Regular__text(
                  text: state.genresDataList[genreIndex].name!,
                  fontSize: 18.0,
                ),
              ),
            ),
          );
        },
      );
    });
  }
}
