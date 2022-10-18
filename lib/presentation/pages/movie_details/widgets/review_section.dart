// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/utils/generics/custom_widget_builder.dart';
import 'package:movie_app/data/bloc/movie_details/movie_details_bloc.dart';
import 'package:movie_app/presentation/components/review_card.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/pages/movie_details/widgets/review_bottom_sheet.dart';
import 'package:movie_app/presentation/pages/movie_details/widgets/skelton/review_section_skelton.dart';

import '../../../../data/sources/dummy/dummy_data.dart';
import '../../../themes/colors.dart';
import '../../../themes/values.dart';

final List _dataList = movieReviewDummyData;

class ReviewSection__widget extends StatelessWidget {
  const ReviewSection__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Medium__text(text: 'Reviews', fontSize: 16.0),
              const SizedBox(height: kDefaultPadding),
              CustomListViewBuilder(
                  itemCount: 3,
                  contentSpacing: kDefaultPadding,
                  builder: (context, index) =>
                      const ReviewSectionSkelton__widget()),
            ],
          );
        }
        // if (state.isError || state.movieDetailsData.reviews.results.isEmpty) {
        //   return Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       const Medium__text(text: 'Reviews', fontSize: 16.0),
        //       const SizedBox(height: kDefaultPadding),
        //       Container(
        //         height: 150,
        //         padding: const EdgeInsets.all(kDefaultPadding),
        //         decoration: BoxDecoration(
        //           color: kColorWhite20,
        //           borderRadius: BorderRadius.circular(8),
        //         ),
        //         child: const Center(
        //           child: Medium__text(
        //             text: 'No reviews',
        //             fontSize: 16.0,
        //           ),
        //         ),
        //       ),
        //     ],
        //   );
        // }

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
                        rating:
                            _dataList[index]["author_details"]["rating"] ?? 0,
                        content: _dataList[index]["content"],
                      );
                    },
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
