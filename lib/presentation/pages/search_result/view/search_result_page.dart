import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/utils/generics/custom_scroll_behavior.dart';
import 'package:movie_app/data/bloc/search_result/search_result_bloc.dart';
import 'package:movie_app/presentation/components/background.dart';
import 'package:movie_app/presentation/components/inner_appbars/appbar_search.dart';
import 'package:movie_app/presentation/pages/search_result/widgtes/top_searched_listview.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
            // const Background(child: MoviePosterGrid__widget()),
            const Background(child: TopSearchedListview__widget()),
            AppbarSearch__widget(),
          ],
        ),
      ),
    );
  }
}
