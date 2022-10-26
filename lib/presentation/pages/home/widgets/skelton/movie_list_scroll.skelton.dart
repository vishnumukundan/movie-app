// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/generics/custom_widget_builder.dart';
import 'package:movie_app/presentation/components/skelton.dart';
import 'package:movie_app/presentation/themes/values.dart';

class MovieListScrollSkelton__widget extends StatelessWidget {
  const MovieListScrollSkelton__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Skelton__widget(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SkeltonContent(height: 16.0, width: 150.0),
            const SizedBox(height: kDefaultPadding),
            CustomListViewBuilder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              contentSpacing: kDefaultPadding,
              builder: (context, index) =>
                  const SkeltonContent(height: 200.0, width: 130.0),
            )
          ],
        ),
      ),
    );
  }
}
