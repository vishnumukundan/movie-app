import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/generics/app_route/custom_scroll_behavior.dart';
import 'package:movie_app/core/utils/generics/custom_widget_builder.dart';
import 'package:movie_app/presentation/components/background.dart';
import 'package:movie_app/presentation/components/inner_appbars/appbar_with_back_button.dart';
import 'package:movie_app/presentation/pages/upcoming_movies/widgets/upcoming_list_item.dart';

import '../../../../core/services/sort_list_by.dart';
import '../../../../data/sources/dummy/dummy_data.dart';
import '../../../themes/screen_size_config.dart';

final List _dataList = SortListBy.desc(upcomingMoviesDummyData, 'release_date');

class UpcomingMoviesPage extends StatelessWidget {
  const UpcomingMoviesPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: ScrollConfiguration(
          behavior: CustomScroll(),
          child: Stack(
            children: [
              CustomListViewBuilder(
                padding: EdgeInsets.only(
                  left: 32,
                  top: getScreenHeightPercentage(8.0) + 64,
                  right: 32,
                ),
                itemCount: _dataList.length,
                builder: (context, index) {
                  return UpcomingListItem__widget(
                      index: index,
                      dataList: _dataList,
                      image: _dataList[index]["poster_path"],
                      date: _dataList[index]["release_date"],
                      title: _dataList[index]["title"],
                      overview: _dataList[index]["overview"]);
                },
              ),
              const AppbarWithBackButton__widget(text: 'Upcoming Movies'),
            ],
          ),
        ),
      ),
    );
  }
}
