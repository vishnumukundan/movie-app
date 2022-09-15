import 'package:flutter/material.dart';

import '../../../../core/utils/generics/string_date_manipulation.dart';
import '../../../components/basic_bottomsheet.dart';
import '../../../components/rating_indicator.dart';
import '../../../components/text.dart';
import '../../../themes/colors.dart';
import '../../../themes/values.dart';

class ReviewBottomSheet__widget extends StatelessWidget {
  const ReviewBottomSheet__widget({
    Key? key,
    required this.user,
    required this.date,
    required this.rating,
    required this.content,
  }) : super(key: key);

  final String user;
  final String date;
  final int rating;
  final String content;
  @override
  Widget build(BuildContext context) {
    final String day = StringExtraction.toDay(date);
    final String month = StringExtraction.toMonthText(date);
    final String year = StringExtraction.toYear(date);
    return BasicBottomsheet__widget(
      title: 'Review',
      children: [
        Row(
          children: <Widget>[
            RatingIndicator__widget(ratingValue: rating.toDouble()),
            const SizedBox(width: kDefaultPadding),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Medium__text(
                    text: user,
                    fontSize: 16.0,
                    maxLines: 1,
                    textOverFlow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: kDefaultPadding / 4),
                  Regular__text(
                    text: "$day $month $year",
                    fontSize: 12.0,
                    color: kColorWhite80,
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: kDefaultPadding),
        Medium__text(
          text: content,
          fontSize: 12.0,
          color: kColorWhite80,
          height: 1.4,
        ),
      ],
    );
  }
}
