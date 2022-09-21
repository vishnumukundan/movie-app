import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/generics/app_route/custom_scroll_behavior.dart';
import 'package:movie_app/presentation/components/background.dart';
import 'package:movie_app/presentation/components/inner_appbars/appbar_search.dart';
import 'package:movie_app/presentation/components/inner_appbars/appbar_with_back_button.dart';
import 'package:movie_app/presentation/pages/search_result/widgtes/movie_poster_grid.dart';
import 'package:movie_app/presentation/pages/search_result/widgtes/top_searched_listview.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: CustomScroll(),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            // Background(child: MoviePosterGrid__widget()),
            Background(child: TopSearchedListview__widget()),
            AppbarSearch__widget(),
          ],
        ),
      ),
    );
  }
}
