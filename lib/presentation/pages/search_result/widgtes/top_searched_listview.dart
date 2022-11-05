// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/utils/generics/custom_widget_builder.dart';
import 'package:movie_app/data/bloc/search_result/search_result_bloc.dart';
import 'package:movie_app/presentation/components/movie_horizontal_card_with_playbutton.dart';
import 'package:movie_app/presentation/components/text.dart';

import '../../../themes/screen_size_config.dart';
import '../../../themes/values.dart';

class TopSearchedListview__widget extends StatelessWidget {
  const TopSearchedListview__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        top: getScreenHeightPercentage(16.0),
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding * 2,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Medium__text(text: 'Top Searched', fontSize: 16.0),
          const SizedBox(height: kDefaultPadding),
          BlocBuilder<SearchResultBloc, SearchResultState>(
            builder: (context, state) {
              return CustomListViewBuilder(
                itemCount: 10,
                builder: (context, index) =>
                    MovieHorizontalCardWithPlaybutton__widget(
                  id: state.popularDataList.results[index].id,
                  title: state.popularDataList.results[index].title!,
                  image: state.popularDataList.results[index].posterPath!,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
