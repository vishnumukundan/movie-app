// ignore_for_file: camel_case_types, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/utils/generics/navigator.dart';
import 'package:movie_app/presentation/bloc/main/appbar/appbar_bloc.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/pages/search_result/view/search_result_page.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/values.dart';

import '../../../../gen/assets.gen.dart';
import '../../../components/blurred_background.dart';

class Appbar__widget extends StatelessWidget {
  const Appbar__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    return BlurredBackground__widget(
      child: Padding(
        padding: const EdgeInsets.only(
          top: kDefaultPadding * 2.5,
          bottom: kDefaultPadding / 1.5,
          left: kDefaultPadding * 2,
          right: kDefaultPadding * 2,
        ),
        child: Row(
          children: <Widget>[
            GestureDetector(
              onTap: () => PageNav.push(context, const SearchResultPage()),
              child: Assets.icons.search.svg(
                height: 32,
                width: 32,
                color: kColorWhite,
              ),
            ),
            const SizedBox(width: kDefaultPadding * 2),
            GestureDetector(
              onTap: () {
                context
                    .read<AppbarBloc>()
                    .add(const AppbarEvent.moviesSelected());
              },
              child: BlocBuilder<AppbarBloc, AppbarState>(
                  builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Regular__text(
                    text: 'Movies',
                    fontSize: 16.0,
                    fontWeight: state.currentPage == HomePageCurrentPage.movies
                        ? FontWeight.bold
                        : FontWeight.normal,
                    color: state.currentPage == HomePageCurrentPage.movies
                        ? kColorWhite
                        : kColorWhite.withOpacity(0.7),
                  ),
                );
              }),
            ),
            const SizedBox(width: kDefaultPadding * 2),
            GestureDetector(
              onTap: () {
                context
                    .read<AppbarBloc>()
                    .add(const AppbarEvent.tvShowsSelected());
              },
              child: BlocBuilder<AppbarBloc, AppbarState>(
                builder: (context, state) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Regular__text(
                      text: 'Tv Shows',
                      fontSize: 16.0,
                      fontWeight:
                          state.currentPage == HomePageCurrentPage.tvShows
                              ? FontWeight.bold
                              : FontWeight.normal,
                      color: state.currentPage == HomePageCurrentPage.tvShows
                          ? kColorWhite
                          : kColorWhite.withOpacity(0.7),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
