// ignore_for_file: camel_case_types, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/services/navigator.dart';
import 'package:movie_app/core/utils/generics/custom_widget_builder.dart';
import 'package:movie_app/core/utils/generics/double_to_fractional_digit.dart';
import 'package:movie_app/data/models/home/movie_list/movie_list_model.dart';
import 'package:movie_app/presentation/components/button.dart';
import 'package:movie_app/presentation/components/image_container.dart';
import 'package:movie_app/presentation/components/rating_indicator.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/pages/movie_details/view/movie_details_page.dart';

import '../themes/values.dart';

class MovieListScroll__widget extends StatelessWidget {
  const MovieListScroll__widget({
    Key? key,
    required this.title,
    required this.dataList,
    this.itemCount,
    this.buttonVisibility = false,
    this.replaceScreen = false,
  }) : super(key: key);

  final String title;
  final List<Result> dataList;
  final bool buttonVisibility;
  final int? itemCount;
  final bool? replaceScreen;

  @override
  Widget build(BuildContext context) {
    //
    final List<Result> newList = [];
    final List<Result> _data = dataList.toList();

    for (var i = 0; i < _data.length; i++) {
      if (_data[i].posterPath == null || _data[i].voteAverage == 0.0) {
      } else {
        newList.add(_data[i]);
      }
    }
    // log(dataList.toString());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: kDefaultPadding * 3),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Medium__text(text: title, fontSize: 16.0),
              const Spacer(),
              if (buttonVisibility)
                Accent_Small__button(text: 'Today', onTap: () {}),
              const SizedBox(width: kDefaultPadding / 2),
              if (buttonVisibility)
                Primary_Small__button(text: 'This Week', onTap: () {}),
            ],
          ),
        ),
        CustomListViewBuilder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(
            vertical: kDefaultPadding,
            horizontal: kDefaultPadding * 2,
          ),
          itemCount: newList.length < 10 ? newList.length : 10,
          contentSpacing: kDefaultPadding,
          builder: (context, index) {
            return GestureDetector(
              onTap: () {
                if (replaceScreen == true) {
                  Get.close(2);
                }
                PageNav.push(
                  context,
                  MovieDetailsPage(
                    id: dataList[index].id,
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.only(bottom: 25),
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  clipBehavior: Clip.none,
                  children: [
                    ImageContainer__widget(
                      imageData: dataList[index].posterPath ?? '',
                      height: 200.0,
                      width: 130.0,
                      radius: 8.0,
                      boxshadow: kDefaultBoxShadow,
                    ),
                    Positioned(
                      bottom: -25,
                      child: RatingIndicator__widget(
                        ratingValue: doubleToFactionalDigit(
                            dataList[index].voteAverage!, 1),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
