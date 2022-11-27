// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/services/app_default_preferences.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/presentation/bloc/components/inner_appbars/bloc/appbar_search_bloc.dart';
import 'package:movie_app/presentation/themes/colors.dart';

class MovieGridLayoutButton__widget extends StatelessWidget {
  const MovieGridLayoutButton__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppbarSearchBloc, AppbarSearchState>(
      builder: (context, state) {
        return IndexedStack(
          index: state.columnIconIndex,
          children: [
            GestureDetector(
              onTap: () {
                context.read<AppbarSearchBloc>().add(
                    const AppbarSearchEvent.columnButtonPress(
                        columnIconIndex: 1));
                setIconIndex(1);
              },
              child: Assets.icons.column2
                  .svg(width: 32, height: 32, color: kColorWhite50),
            ),
            GestureDetector(
              onTap: () {
                context.read<AppbarSearchBloc>().add(
                    const AppbarSearchEvent.columnButtonPress(
                        columnIconIndex: 0));
                setIconIndex(0);
              },
              child: Assets.icons.column3
                  .svg(width: 32, height: 32, color: kColorWhite50),
            ),
          ],
        );
      },
    );
  }
}
