// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/utils/generics/custom_scroll_behavior.dart';
import 'package:movie_app/data/bloc/actor_profile/person_details_bloc.dart';
import 'package:movie_app/data/models/home/movie_list/movie_list_model.dart';
import 'package:movie_app/presentation/components/background.dart';
import 'package:movie_app/presentation/components/inner_appbars/appbar_with_back_button.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/pages/search_result/widgtes/movie_poster_grid.dart';

enum NavigateFrom { person, genre, searchPage }

class MoviesResultGridPage extends StatelessWidget {
  const MoviesResultGridPage({
    Key? key,
    required this.id,
    required this.navigateFrom,
    required this.title,
  }) : super(key: key);

  final int id;
  final NavigateFrom navigateFrom;
  final String title;
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        if (navigateFrom == NavigateFrom.person) {
          context
              .read<PersonDetailsBloc>()
              .add(PersonDetailsEvent.getMovieList(personId: id));
        }
      },
    );

    if (navigateFrom == NavigateFrom.person) {
      return BlocBuilder<PersonDetailsBloc, PersonDetailsState>(
        builder: (context, state) {
          return pageWidget(
              id: id, title: title, dataList: state.movieDataList!);
        },
      );
    } else {
      return Scaffold(
        body: ScrollConfiguration(
          behavior: CustomScroll(),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              const Background(
                child: Center(
                  child: Medium__text(text: 'No data ', fontSize: 32.0),
                ),
              ),
              AppbarWithBackButton__widget(text: title),
            ],
          ),
        ),
      );
    }
  }
}

class pageWidget extends StatelessWidget {
  const pageWidget({
    Key? key,
    required this.id,
    required this.title,
    required this.dataList,
  }) : super(key: key);

  final int id;
  final String title;
  final MovieList dataList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: CustomScroll(),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Background(
              child: MoviePosterGrid__widget(id: id, dataList: dataList),
            ),
            AppbarWithBackButton__widget(text: title),
          ],
        ),
      ),
    );
  }
}
