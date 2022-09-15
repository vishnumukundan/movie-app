// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/generics/custom_widget_builder.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/components/video_card_item.dart';

import '../../../themes/values.dart';

class VideoSection__widget extends StatelessWidget {
  const VideoSection__widget({
    Key? key,
    required this.dataList,
  }) : super(key: key);

  final List dataList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Medium__text(text: 'Video', fontSize: 16.0),
        const SizedBox(height: kDefaultPadding),
        CustomListViewBuilder(
          clipBehavior: Clip.none,
          itemCount: dataList.length,
          contentSpacing: kDefaultPadding,
          scrollDirection: Axis.horizontal,
          builder: (context, index) => VideoCardItem__widget(
            youtubeKey: dataList[index]["key"],
            title: dataList[index]["name"],
            tagline: dataList[index]["type"],
          ),
        ),
      ],
    );
  }
}
