// ignore_for_file: camel_case_types, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/services/navigator.dart';
import 'package:movie_app/core/utils/generics/custom_widget_builder.dart';
import 'package:movie_app/data/bloc/discover/discover_bloc.dart';
import 'package:movie_app/data/models/movie_details/movie_details_model.dart';
import 'package:movie_app/data/sources/dummy/dummy_data.dart';
import 'package:movie_app/presentation/components/person_image_and_name_card.dart';
import 'package:movie_app/presentation/pages/movies_result_grid/view/movies_result_grid_page.dart';
import 'package:movie_app/presentation/themes/values.dart';

class PersonsGrid__widget extends StatelessWidget {
  const PersonsGrid__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiscoverBloc, DiscoverState>(builder: (context, state) {
      return CustomGridViewBuilder(
        padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding * 2,
        ),
        crossAxisCount: 3,
        dataList: personDummyData,
        mainAxisSpacing: kDefaultPadding,
        crossAxisSpacing: kDefaultPadding,
        childAspectRatio: 3 / 4,
        shrinkWrap: true,
        itemCount: 15,
        builder: (context, index) {
//
          final dataList = state.personDataList;
          final List<Cast> newList = [];
          final List<Cast> _data = dataList.toList();

          for (var i = 0; i < _data.length; i++) {
            if (_data[i].profilePath == null) {
            } else {
              newList.add(_data[i]);
            }
          }

          if (state.hasError) {}
          if (state.isLoading) {}
          return PersonImageAndNameCard__widget(
            image: newList[index].profilePath!,
            name: newList[index].name!,
            isLoading: true,
            onTap: () {
              PageNav.push(
                context,
                MoviesResultGridPage(
                  id: newList[index].id.toString(),
                  title: '${newList[index].name} Movies',
                  navigateFrom: NavigateFrom.person,
                ),
              );
            },
          );
        },
      );
    });
  }
}
