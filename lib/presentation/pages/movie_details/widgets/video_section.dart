// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/utils/generics/custom_widget_builder.dart';
import 'package:movie_app/data/bloc/movie_details/movie_details_bloc.dart';
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
            final List dataList = state.movieDetailsData.videos.results;

            if (state.isLoading) const VideoSectionSkelton__widget();

            if (state.isError ||
                state.movieDetailsData.videos.results.isEmpty) {}
            return CustomListViewBuilder(
              clipBehavior: Clip.none,
              itemCount: dataList.length,
              contentSpacing: kDefaultPadding,
              scrollDirection: Axis.horizontal,
              reverseList: true,
              builder: (context, index) {
                return VideoCardItem__widget(
                  youtubeKey: dataList[index].key,
                  title: dataList[index].name,
                  tagline: dataList[index].type,
                );
              },
            );
          },
        )
      ],
    );
  }
}
