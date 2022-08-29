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
      width: ScreenConfig.screenWidth,
      decoration: const BoxDecoration(
        color: kColorSecondary,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: kDefaultPadding * 2),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
            child: Medium__text(text: 'Latest Trailers', fontSize: 16.0),
          ),
          SizedBox(
            height: 222,
            width: ScreenConfig.screenWidth,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              itemCount: 3,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      VideoCardItem__widget(dataList: _dataList, index: index),
                );
              }),
            ),
          ),
          const SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
