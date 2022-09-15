// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/generics/custom_widget_builder.dart';
import 'package:movie_app/presentation/components/basic_bottomsheet.dart';
import 'package:movie_app/presentation/components/review_card.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/pages/movie_details/widgets/review_bottom_sheet.dart';

import '../../../../data/sources/dummy/dummy_data.dart';
import '../../../themes/colors.dart';
import '../../../themes/values.dart';

final List _dataList = movieReviewDummyData;

class ReviewSection__widget extends StatelessWidget {
  const ReviewSection__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Medium__text(text: 'Reviews', fontSize: 16.0),
        const SizedBox(height: kDefaultPadding),
        CustomListViewBuilder(
          itemCount: _dataList.length < 10 ? _dataList.length : 10,
          builder: (context, index) => ReviewCard__widget(
            user: _dataList[index]["author"],
            date: _dataList[index]["created_at"],
            rating: _dataList[index]["author_details"]["rating"] ?? 0,
            content: _dataList[index]["content"],
            onTap: () {
              showModalBottomSheet(
                context: context,
                backgroundColor: Colors.transparent,
                barrierColor: kColorPrimary.withOpacity(0.5),
                builder: (context) {
                  return ReviewBottomSheet__widget(
                    user: _dataList[index]["author"],
                    date: _dataList[index]["created_at"],
                    rating: _dataList[index]["author_details"]["rating"] ?? 0,
                    content: _dataList[index]["content"],
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
