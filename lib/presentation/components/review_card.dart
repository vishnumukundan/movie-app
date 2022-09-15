// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/generics/string_date_manipulation.dart';
import 'package:movie_app/presentation/components/rating_indicator.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/values.dart';

class ReviewCard__widget extends StatelessWidget {
  const ReviewCard__widget({
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
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(kDefaultPadding),
          decoration: BoxDecoration(
            color: kColorWhite20,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                maxLines: 9,
                textOverFlow: TextOverflow.ellipsis,
                color: kColorWhite80,
                height: 1.4,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
