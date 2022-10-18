// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/generics/app_route/custom_scroll_behavior.dart';
import 'package:movie_app/data/sources/dummy/dummy_data.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/presentation/components/background.dart';
import 'package:movie_app/presentation/components/button.dart';
import 'package:movie_app/presentation/components/image_container.dart';
import 'package:movie_app/presentation/components/movie_list_scroll.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/pages/actor_profile/widgets/biogarphy_bottomsheet.dart';
import 'package:movie_app/presentation/pages/actor_profile/widgets/title_and_data.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';
import 'package:movie_app/presentation/themes/values.dart';

import '../../../components/inner_appbars/appbar_with_back_button.dart';

final List _dataList = personDetailsDummyData;

class ActorProfilePage extends StatelessWidget {
  const ActorProfilePage({
    Key? key,
    required this.personId,
  }) : super(key: key);

  final int personId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Stack(
          children: [
            ScrollConfiguration(
              behavior: CustomScroll(),
              child: SingleChildScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: getScreenHeightPercentage(18.0),
                        bottom: kDefaultPadding / 2,
                        left: kDefaultPadding * 2,
                        right: kDefaultPadding * 2,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ImageContainer__widget(
                            radius: 8,
                            imageData: _dataList[0]["profile_path"],
                            height: getScreenWidthPercentage(45.0),
                            width: getScreenWidthPercentage(30.0),
                            boxshadow: const [
                              BoxShadow(
                                color: kColorPrimary,
                                offset: Offset(10, 10),
                                blurRadius: 20,
                              )
                            ],
                          ),
                          const SizedBox(width: kDefaultPadding * 1.5),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: kDefaultPadding * 1.33),
                                Medium__text(
                                  text: _dataList[0]["name"],
                                  fontSize: 18.0,
                                  maxLines: 2,
                                  textOverFlow: TextOverflow.ellipsis,
                                  height: 1.2,
                                ),
                                TitleAndData__widget(
                                    title: 'Known For',
                                    data: _dataList[0]["known_for_department"]),
                                TitleAndData__widget(
                                    title: 'Films',
                                    data: creditDummyData.length.toString()),
                                TitleAndData__widget(
                                    title: 'Birthday',
                                    data: _dataList[0]["birthday"]),
                                TitleAndData__widget(
                                    title: 'Place of Birth',
                                    data: _dataList[0]["place_of_birth"]),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: kDefaultPadding * 3),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Medium__text(text: 'Biography', fontSize: 16.0),
                          const SizedBox(height: kDefaultPadding / 2),
                          Medium__text(
                            text: _dataList[0]["biography"],
                            fontSize: 12.0,
                            height: 1.4,
                            letterSpacing: 0.9,
                            color: kColorWhite60,
                            maxLines: 10,
                            textOverFlow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: kDefaultPadding / 2),
                          Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  backgroundColor: Colors.transparent,
                                  barrierColor: kColorPrimary.withOpacity(0.5),
                                  builder: (context) {
                                    return BiogarphyBottomsheet__widget(
                                      text: _dataList[0]["biography"],
                                    );
                                  },
                                );
                              },
                              child: Medium__text(
                                text: 'Read More',
                                fontSize: 14.0,
                                color: kColorWhite.withOpacity(0.8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    MovieListScroll__widget(
                      title: 'Top 10 Movies',
                      dataList: moviePosterDummyData,
                    ),
                    const SizedBox(height: kDefaultPadding),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Accent_Large__button(
                          text: 'View All Movies',
                          cornerRadius: 60.0,
                          rightIcon: Assets.icons.arrowRight,
                          onTap: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: kDefaultPadding * 2),
                  ],
                ),
              ),
            ),
            const AppbarWithBackButton__widget(text: 'Actor Profile'),
          ],
        ),
      ),
    );
  }
}
