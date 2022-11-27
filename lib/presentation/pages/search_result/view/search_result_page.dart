import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/utils/generics/custom_scroll_behavior.dart';
import 'package:movie_app/data/bloc/search_result/search_result_bloc.dart';
import 'package:movie_app/presentation/bloc/components/inner_appbars/bloc/appbar_search_bloc.dart';
import 'package:movie_app/presentation/bloc/navigation_from/navigation_from_bloc.dart';
import 'package:movie_app/presentation/components/background.dart';
import 'package:movie_app/presentation/components/inner_appbars/appbar_search.dart';
import 'package:movie_app/presentation/pages/movies_result_grid/view/movies_result_grid_page.dart';
import 'package:movie_app/presentation/pages/search_result/widgtes/movie_poster_grid.dart';
import 'package:movie_app/presentation/pages/search_result/widgtes/skelton/movie_poster_grid_skelton.dart';
import 'package:movie_app/presentation/pages/search_result/widgtes/top_searched_listview.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //
    //

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<SearchResultBloc>()
          .add(const SearchResultEvent.getPopularMovies());
    });
    return Scaffold(
      body: ScrollConfiguration(
        behavior: CustomScroll(),
        child: BlocBuilder<AppbarSearchBloc, AppbarSearchState>(
          builder: (context, state) {
            //
            if (state.isTextFieldFocused) {
              context
                  .read<NavigationFromBloc>()
                  .add(const NavigationFromEvent.setNavigationFrom(
                    navigateFrom: NavigateFrom.searchPage,
                  ));
            } else {
              context
                  .read<NavigationFromBloc>()
                  .add(const NavigationFromEvent.setNavigationFrom(
                    navigateFrom: NavigateFrom.searchPage,
                  ));
            }

            return SizedBox(
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  // Padding(
                  //   padding:
                  //       EdgeInsets.only(top: getScreenHeightPercentage(20)),
                  //   child: Bold__text(
                  //     text: state.isTextFieldFocused.toString(),
                  //     fontSize: 64.0,
                  //     color:
                  //         state.isTextFieldFocused ? kColorGreen : kColorAccent,
                  //   ),
                  // ),
                  if (state.isTextFieldFocused == true)
                    BlocBuilder<SearchResultBloc, SearchResultState>(
                      builder: (context, state) {
                        return Background(
                          height: ScreenConfig.screenHeight,
                          child: state.isLoading
                              ? const MoviePosterGridSkelton__widget()
                              : MoviePosterGrid__widget(
                                  dataList: state.searchedDataList,
                                ),
                        );
                      },
                    ),
                  if (state.isTextFieldFocused == false)
                    const Background(child: TopSearchedListview__widget()),
                  AppbarSearch__widget(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
