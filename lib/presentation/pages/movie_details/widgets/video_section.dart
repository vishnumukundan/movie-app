// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/utils/generics/custom_widget_builder.dart';
import 'package:movie_app/data/bloc/movie_details/movie_details_bloc.dart';
import 'package:movie_app/data/models/movie_details/movie_details_model.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/components/video_card_item.dart';
import 'package:movie_app/presentation/pages/movie_details/widgets/skelton/video_section_skelton.dart';

import '../../../themes/values.dart';

class VideoSection__widget extends StatelessWidget {
  const VideoSection__widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Medium__text(text: 'Video', fontSize: 16.0),
        const SizedBox(height: kDefaultPadding),
        BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
          builder: (context, state) {
            final List<VideosResult> dataList =
                state.movieDetailsData.videos!.results!;

            if (state.isLoading) const VideoSectionSkelton__widget();

            if (state.hasError ||
                state.movieDetailsData.videos!.results!.isEmpty) {}
            return CustomListViewBuilder(
              clipBehavior: Clip.none,
              itemCount: dataList.length,
              contentSpacing: kDefaultPadding,
              scrollDirection: Axis.horizontal,
              builder: (context, index) {
                final List<VideosResult> newList = dataList.reversed.toList();
                return VideoCardItem__widget(
                  youtubeKey: newList[index].key!,
                  title: newList[index].name!,
                  tagline: newList[index].type!,
                );
              },
            );
          },
        )
      ],
    );
  }
}
