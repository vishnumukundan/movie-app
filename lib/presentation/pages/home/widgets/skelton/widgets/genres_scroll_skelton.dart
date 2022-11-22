// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/generics/custom_widget_builder.dart';
import 'package:movie_app/presentation/components/skelton.dart';
import 'package:movie_app/presentation/themes/values.dart';

class GenresScrollSkelton__widget extends StatelessWidget {
  const GenresScrollSkelton__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Skelton__widget(
      child: CustomListViewBuilder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
        itemCount: 5,
        contentSpacing: kDefaultPadding,
        builder: (context, index) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: kSkeltonBaseColor,
            ),
            child: const Center(
              child: SkeltonContent(height: 14.0, width: 56.0),
            ),
          );
        },
      ),
    );
  }
}
