// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/services/navigator.dart';
import 'package:movie_app/core/utils/generics/custom_widget_builder.dart';
import 'package:movie_app/core/utils/generics/string_manipulation.dart';
import 'package:movie_app/data/bloc/discover/discover_bloc.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/pages/movies_result_grid/view/movies_result_grid_page.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/values.dart';

class GenresGrid__widget extends StatelessWidget {
  const GenresGrid__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiscoverBloc, DiscoverState>(builder: (context, state) {
      return CustomGridViewBuilder(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        crossAxisCount: 2,
        mainAxisSpacing: kDefaultPadding,
        crossAxisSpacing: kDefaultPadding,
        childAspectRatio: 7 / 3,
        itemCount: state.genresDataList.length,
        shrinkWrap: true,
        builder: (context, index) {
          return GestureDetector(
            onTap: () {
              PageNav.push(
                context,
                MoviesResultGridPage(
                  id: state.genresDataList[index].id.toString(),
                  navigateFrom: NavigateFrom.genre,
                  title:
                      '${getFirstWord(state.genresDataList[index].name!)} Movies',
                ),
              );
            },
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                color: kColorWhite20,
                borderRadius: BorderRadius.circular(kDefaultPadding / 2),
              ),
              child: Center(
                child: SemiBold__text(
                  text: state.genresDataList[index].name!,
                  fontSize: 16.0,
                ),
              ),
            ),
          );
        },
      );
    });
  }
}
