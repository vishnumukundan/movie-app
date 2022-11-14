import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/utils/generics/custom_scroll_behavior.dart';
import 'package:movie_app/data/bloc/search_result/search_result_bloc.dart';
import 'package:movie_app/presentation/bloc/components/inner_appbars/appbar_search/appbar_search_cubit.dart';
import 'package:movie_app/presentation/components/background.dart';
import 'package:movie_app/presentation/components/inner_appbars/appbar_search.dart';
import 'package:movie_app/presentation/pages/search_result/widgtes/movie_poster_grid.dart';
import 'package:movie_app/presentation/pages/search_result/widgtes/skelton/movie_poster_grid_skelton.dart';
import 'package:movie_app/presentation/pages/search_result/widgtes/top_searched_listview.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //
    final isFocused = context.watch<AppbarSearchCubit>().state.focusEnabled;
    //
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<SearchResultBloc>()
          .add(const SearchResultEvent.getPopularMovies());
    });
    return Scaffold(
      body: ScrollConfiguration(
        behavior: CustomScroll(),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            if (isFocused == true)
              BlocBuilder<SearchResultBloc, SearchResultState>(
                builder: (context, state) {
                  return Background(
                    child: state.isLoading
                        ? const MoviePosterGridSkelton__widget()
                        : MoviePosterGrid__widget(
                            dataList: state.searchedDataList,
                          ),
                  );
                },
              ),
            if (isFocused == false)
              const Background(child: TopSearchedListview__widget()),
            AppbarSearch__widget(),
          ],
        ),
      ),
    );
  }
}
