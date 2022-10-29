import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/utils/generics/custom_scroll_behavior.dart';
import 'package:movie_app/core/utils/generics/custom_widget_builder.dart';
import 'package:movie_app/data/bloc/upcoming_movies/upcoming_movies_bloc.dart';
import 'package:movie_app/presentation/components/background.dart';
import 'package:movie_app/presentation/components/inner_appbars/appbar_with_back_button.dart';
import 'package:movie_app/presentation/pages/upcoming_movies/widgets/upcoming_list_item.dart';

import '../../../themes/screen_size_config.dart';

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
                itemCount: 20,
                builder: (context, index) {
                  return BlocBuilder<UpcomingMoviesBloc, UpcomingMoviesState>(
                      builder: (context, state) {
                    final dataList = state.dataList;
                    return UpcomingListItem__widget(
                        image: dataList[index].posterPath!,
                        date: dataList[index].releaseDate!,
                        title: dataList[index].title!,
                        overview: dataList[index].overview!);
                  });
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
