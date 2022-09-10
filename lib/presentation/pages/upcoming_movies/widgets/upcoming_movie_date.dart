// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/generics/string_date_manipulation.dart';

import '../../../components/text.dart';
import '../../../themes/colors.dart';
import '../../../themes/values.dart';

class UpcomingMovieDate__widget extends StatelessWidget {
  const UpcomingMovieDate__widget({Key? key, required this.date})
      : super(key: key);

  final String date;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Regular__text(
          text: StringExtraction.toDay(date),
          fontSize: 64.0,
          color: kColorWhite60,
        ),
        const SizedBox(width: kDefaultPadding / 2),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Regular__text(
              text: StringExtraction.toMonthText(date),
              fontSize: 20.0,
              color: kColorWhite60,
            ),
            const SizedBox(height: kDefaultPadding / 2),
            Regular__text(
              text: StringExtraction.toYear(date),
              fontSize: 20.0,
              color: kColorWhite60,
            ),
          ],
        )
      ],
    );
  }
}
