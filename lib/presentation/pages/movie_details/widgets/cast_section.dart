// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/services/navigator.dart';
import 'package:movie_app/core/utils/generics/custom_widget_builder.dart';
import 'package:movie_app/data/bloc/movie_details/movie_details_bloc.dart';
import 'package:movie_app/data/models/movie_details/movie_details_model.dart';
import 'package:movie_app/presentation/components/person_image_and_name_card.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/pages/actor_profile/view/actor_profile_page.dart';
import 'package:movie_app/presentation/pages/movie_details/widgets/skelton/cast_section_skelton.dart';

import '../../../themes/values.dart';

class CastSection__widget extends StatelessWidget {
  const CastSection__widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
        builder: (context, state) {
      final dataList = state.movieDetailsData.casts!.cast;

      //
      final List<Cast> newList = [];
      final List<Cast> data = dataList!.toList();

      for (var i = 0; i < data.length; i++) {
        if (data[i].knownForDepartment == 'Acting') {
          newList.add(data[i]);
        }
      }
      //
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Medium__text(text: 'Cast', fontSize: 16.0),
          const SizedBox(height: kDefaultPadding),
          CustomListViewBuilder(
            clipBehavior: Clip.none,
            crossAxisAlignment: CrossAxisAlignment.start,
            itemCount: newList.length,
            contentSpacing: kDefaultPadding,
            scrollDirection: Axis.horizontal,
            builder: (context, index) {
              if (state.isLoading) {
                return CastSectionSkelton__widget();
              } else {
                return PersonImageAndNameCard__widget(
                    image: newList[index].profilePath,
                    name: newList[index].name!,
                    isLoading: state.isLoading,
                    onTap: () {
                      PageNav.push(
                        context,
                        ActorProfilePage(personId: newList[index].id),
                      );
                    });
              }
            },
          )
        ],
      );
    });
  }
}
