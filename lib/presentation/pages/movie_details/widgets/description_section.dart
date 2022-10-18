// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/utils/generics/minute_to_hour_convertion.dart';
import 'package:movie_app/data/bloc/movie_details/movie_details_bloc.dart';
import 'package:movie_app/data/models/movie_details/movie_details_model.dart';
import 'package:movie_app/presentation/themes/colors.dart';

import '../../../../gen/assets.gen.dart';
import '../../../components/text.dart';
import '../../../themes/values.dart';

class DescriptionSection__widget extends StatelessWidget {
  const DescriptionSection__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
      builder: (context, state) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Medium__text(
            text: 'Description',
            fontSize: 16.0,
          ),
          const SizedBox(height: kDefaultPadding / 2),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Assets.icons.time.svg(height: 16),
              const SizedBox(width: kDefaultPadding / 3),
              Regular__text(
                text: state.isLoading ||
                        state.isError ||
                        state.movieDetailsData.runtime == null
                    ? '00h 00m'
                    : minToHourConvertion(state.movieDetailsData.runtime),
                fontSize: 14.0,
                height: 1.5,
                color: kColorWhite80,
              ),
            ],
          ),
          const SizedBox(height: kDefaultPadding / 2),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 3),
                child: Assets.icons.film.svg(height: 16),
              ),
              const SizedBox(width: kDefaultPadding / 3),
              if (state.isLoading ||
                  state.isError ||
                  state.movieDetailsData.genres.isEmpty)
                const Expanded(
                  child: Regular__text(
                    text: 'No Genres',
                    fontSize: 14.0,
                    height: 1.5,
                    color: kColorWhite80,
                  ),
                ),
              if (state.movieDetailsData.genres.isNotEmpty)
                Expanded(
                  child: Regular__text(
                    text: genresList(state.movieDetailsData.genres),
                    fontSize: 14.0,
                    height: 1.5,
                    color: kColorWhite80,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  String genresList(List<Genre> list) {
    final nameList = list.map((e) => e.name).toList();
    return nameList.join(', ');
  }
}
