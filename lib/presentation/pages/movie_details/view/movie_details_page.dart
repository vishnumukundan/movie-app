// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:movie_app/core/services/sort_list_by.dart';
import 'package:movie_app/core/utils/generics/app_route/custom_scroll_behavior.dart';
import 'package:movie_app/core/utils/generics/navigator.dart';
import 'package:movie_app/data/sources/dummy/dummy_data.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/presentation/components/background.dart';
import 'package:movie_app/presentation/components/icon_button.dart';
import 'package:movie_app/presentation/components/image_container.dart';
import 'package:movie_app/presentation/pages/movie_details/widgets/button_group_section.dart';
import 'package:movie_app/presentation/pages/movie_details/widgets/cast_section.dart';
import 'package:movie_app/presentation/pages/movie_details/widgets/description_section.dart';
import 'package:movie_app/presentation/pages/movie_details/widgets/movie_title_section.dart';
import 'package:movie_app/presentation/pages/movie_details/widgets/review_section.dart';
import 'package:movie_app/presentation/pages/movie_details/widgets/video_section.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';
import 'package:movie_app/presentation/themes/values.dart';

import '../../../components/text.dart';

final List _dataList = movieDetailsDummyData;

class MovieDetailsPage__widget extends StatelessWidget {
  const MovieDetailsPage__widget({Key? key, required this.id})
      : super(key: key);

  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ScrollConfiguration(
            behavior: CustomScroll(),
            child: SingleChildScrollView(
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    top: 0,
                    child: ImageContainer__widget(
                      imageData: _dataList[0]["poster_path"],
                      height: getScreenHeightPercentage(80.0),
                      width: ScreenConfig.screenWidth,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: getScreenHeightPercentage(76.0),
                    ),
                    child: Background(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(kDefaultPadding * 2),
                        topRight: Radius.circular(kDefaultPadding * 2),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(kDefaultPadding * 2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            // movie title section
                            MovieTitleSection__widget(
                              title: _dataList[0]["title"],
                              tagline: _dataList[0]["tagline"],
                            ),
                            const SizedBox(height: kDefaultPadding),
                            // button group section
                            ButtonGroupSection__widget(dataList: _dataList),
                            const SizedBox(height: kDefaultPadding * 2),
                            // desctiption section
                            const DescriptionSection__widget(),
                            const SizedBox(height: kDefaultPadding * 2),
                            // overview section
                            const Medium__text(
                              text: 'Overview',
                              fontSize: 16.0,
                            ),
                            const SizedBox(height: kDefaultPadding / 2),
                            Medium__text(
                              text: _dataList[0]["overview"],
                              fontSize: 12.0,
                              height: 1.5,
                              color: kColorWhite80,
                            ),
                            const SizedBox(height: kDefaultPadding * 2),
                            // cast section
                            CastSection__widget(dataList: personDummyData),
                            const SizedBox(height: kDefaultPadding * 3),
                            // video section
                            VideoSection__widget(
                              dataList: SortListBy.asce(
                                  movieVideoDummyData, 'published_at'),
                            ),
                            const SizedBox(height: kDefaultPadding * 3),
                            const ReviewSection__widget(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: kDefaultPadding * 3,
            left: kDefaultPadding * 2,
            child: Primary_Medium__IconButton(
              icon: Assets.icons.arrowLeft,
              borderRadius: 60.0,
              bgColor: kColorPrimary.withOpacity(0.8),
              onTap: () => PageNav.pop(context),
            ),
          ),
        ],
      ),
    );
  }
}
