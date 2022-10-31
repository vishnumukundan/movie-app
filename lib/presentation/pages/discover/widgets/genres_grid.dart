// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/utils/generics/custom_widget_builder.dart';
import 'package:movie_app/data/bloc/discover/discover_bloc.dart';
import 'package:movie_app/data/sources/dummy/dummy_data.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/values.dart';

class GenresGrid__widget extends StatelessWidget {
  const GenresGrid__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiscoverBloc, DiscoverState>(builder: (context, state) {
      return CustomGridViewBuilder(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        dataList: genresDataList,
        crossAxisCount: 2,
        mainAxisSpacing: kDefaultPadding,
        crossAxisSpacing: kDefaultPadding,
        childAspectRatio: 7 / 3,
        itemCount: state.genresDataList.length,
        shrinkWrap: true,
        builder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                color: kColorWhite20,
                borderRadius: BorderRadius.circular(kDefaultPadding / 2),
              ),
              child: Center(
                child: SemiBold__text(
                  text: state.genresDataList[index].name!,
                  fontSize: 16.0,
                ),
              ),
            ),
          );
        },
      );
    });
  }
}
