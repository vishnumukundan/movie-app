// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/generics/custom_widget_builder.dart';
import 'package:movie_app/presentation/components/person_image_and_name_card.dart';
import 'package:movie_app/presentation/components/text.dart';

import '../../../themes/values.dart';

class CastSection__widget extends StatelessWidget {
  const CastSection__widget({
    Key? key,
    required this.dataList,
  }) : super(key: key);

  final List dataList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Medium__text(text: 'Cast', fontSize: 16.0),
        const SizedBox(height: kDefaultPadding),
        CustomListViewBuilder(
          clipBehavior: Clip.none,
          crossAxisAlignment: CrossAxisAlignment.start,
          itemCount: 6,
          contentSpacing: kDefaultPadding,
          scrollDirection: Axis.horizontal,
          builder: (context, index) => PersonImageAndNameCard__widget(
            image: dataList[index]["profile_path"],
            name: dataList[index]["name"],
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
