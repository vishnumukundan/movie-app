// ignore_for_file: camel_case_types, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:movie_app/presentation/components/text.dart';

import '../themes/colors.dart';

class RatingIndicator__widget extends StatelessWidget {
  const RatingIndicator__widget({Key? key, required this.ratingValue})
      : super(key: key);

  final double ratingValue;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        color: kColorPrimary,
        height: 50,
        width: 50,
        child: Stack(
          children: [
            Center(
              child: CircularProgressIndicator(
                backgroundColor: kColorWhite50,
                color: getColor(ratingValue),
                strokeWidth: 3,
                value: ratingValue != null ? ratingValue / 10 : 0.0,
              ),
            ),
            Center(
              child: SemiBold__text(
                text: ratingValue != null ? ratingValue.toString() : '0.0',
                fontSize: 16.0,
              ),
            )
          ],
        ),
      ),
    );
  }

  getColor(double rating) {
    if (rating >= 6) {
      return kColorGreen;
    }
    if (rating >= 4) {
      return kColorYellow;
    } else {
      return kColorAccent;
    }
  }
}
