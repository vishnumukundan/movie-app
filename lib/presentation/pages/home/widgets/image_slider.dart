// ignore_for_file: no_leading_underscores_for_local_identifiers, prefer_const_constructors_in_immutables, camel_case_types

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/presentation/bloc/home/image_slider/image_slider_cubit.dart';
import 'package:movie_app/presentation/components/icon_button.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';

import '../../../themes/values.dart';

List _sliderData = [
  {
    "id": 1,
    "image_url":
        "https://image.tmdb.org/t/p/w500/hJfI6AGrmr4uSHRccfJuSsapvOb.jpg",
    "title": "She-Hulk: Attorney at Law"
  },
  {
    "id": 2,
    "image_url":
        "https://image.tmdb.org/t/p/w500/49WJfeN0moxb9IPfGn8AIqMGskD.jpg",
    "title": "Stranger Things"
  },
  {
    "id": 3,
    "image_url":
        "https://image.tmdb.org/t/p/w500/clAMlA3DcwKMJIYeAFGGN0vyJQp.jpg",
    "title": "Purple Hearts"
  },
  {
    "id": 4,
    "image_url":
        "https://image.tmdb.org/t/p/w500/r7XifzvtezNt31ypvsmb6Oqxw49.jpg",
    "title": "DC League of Super-Pets"
  },
];

PageController _pageController = PageController(initialPage: 0);

class ImageSlider__widget extends StatelessWidget {
  ImageSlider__widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _currentIndex = context.watch<ImageSliderCubit>().state.currentIndex;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        AspectRatio(
          aspectRatio: 3 / 4,
          child: GlowingOverscrollIndicator(
            color: kColorWhite,
            axisDirection: AxisDirection.right,
            child: PageView.builder(
                allowImplicitScrolling: true,
                controller: _pageController,
                itemCount: _sliderData.length,
                onPageChanged: (value) {
                  context.read<ImageSliderCubit>().setIndex(value);
                  _pageController.animateToPage(
                    value,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.linear,
                  );
                },
                itemBuilder: (context, index) =>
                    BlocBuilder<ImageSliderCubit, ImageSliderState>(
                      builder: (context, state) {
                        return Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  NetworkImage(_sliderData[index]["image_url"]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    )),
          ),
        ),
        Positioned(
          bottom: -150,
          child: Container(
            height: 300,
            width: ScreenConfig.screenWidth,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  kColorPrimary.withOpacity(0.0),
                  kColorPrimary,
                  kColorPrimary.withOpacity(0.0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Bold__text(
                    text: '${_sliderData[_currentIndex]["title"]}',
                    fontSize: 24.0,
                    maxLines: 2,
                    textOverFlow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: kDefaultPadding / 2),
                  const Regular__text(
                    text: 'Watch Now',
                    fontSize: 14.0,
                  ),
                  const SizedBox(height: kDefaultPadding * 2),
                  Row(
                    children: List.generate(
                      _sliderData.length,
                      (int index) {
                        if (index == _currentIndex) {
                          return const SingleIndicator(isActive: true);
                        } else {
                          return const SingleIndicator(isActive: false);
                        }
                      },
                    ),
                  ),
                  const SizedBox(height: kDefaultPadding * 2.5),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -35,
          right: 32,
          child: Accent_Large__IconButton(
            icon: Assets.icons.play,
            borderRadius: 60.0,
            onTap: () {},
          ),
        ),
      ],
    );
  }
}

class SingleIndicator extends StatelessWidget {
  const SingleIndicator({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeInOut,
        height: 4,
        width: 20,
        decoration: BoxDecoration(
          color: isActive ? kColorWhite : kColorWhite.withOpacity(0.2),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
