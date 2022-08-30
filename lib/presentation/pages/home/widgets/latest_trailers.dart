import 'package:flutter/material.dart';
import 'package:movie_app/data/sources/dummy/dummy_data.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/components/video_card_item.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';
import 'package:movie_app/presentation/themes/values.dart';

import '../../../../core/utils/generics/custom_widget_builder.dart';

final _dataList = latestTrailersDummyData;

class LatestTrailers__widget extends StatelessWidget {
  const LatestTrailers__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: kDefaultPadding * 2,
        bottom: kDefaultPadding,
      ),
      width: ScreenConfig.screenWidth,
      decoration: const BoxDecoration(
        color: kColorSecondary,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
            child: Medium__text(text: 'Latest Trailers', fontSize: 16.0),
          ),
          CustomListViewBuilder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(
              vertical: kDefaultPadding,
              horizontal: kDefaultPadding * 2,
            ),
            itemCount: 10,
            contentSpacing: kDefaultPadding,
            builder: (context, index) =>
                VideoCardItem__widget(dataList: _dataList, index: index),
          )
        ],
      ),
    );
  }
}
