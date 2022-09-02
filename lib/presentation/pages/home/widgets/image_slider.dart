// ignore_for_file: no_leading_underscores_for_local_identifiers, prefer_const_constructors_in_immutables, camel_case_types

import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/data/sources/dummy/dummy_data.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/presentation/bloc/home/image_slider/image_slider_cubit.dart';
import 'package:movie_app/presentation/components/icon_button.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';

import '../../../themes/values.dart';

PageController _pageController = PageController(initialPage: 0);

class ImageSlider__widget extends StatelessWidget {
  ImageSlider__widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _currentIndex = context.watch<ImageSliderCubit>().state.currentIndex;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        CarouselSlider.builder(
          itemCount: sliderDummyData.length,
          options: CarouselOptions(
            aspectRatio: 3 / 4,
            autoPlay: true,
            initialPage: 0,
            enableInfiniteScroll: true,
            viewportFraction: 1.0,
            onPageChanged: (index, reason) {
              context.read<ImageSliderCubit>().setIndex(index);
            },
          ),
          itemBuilder: (context, index, realIndex) {
            return Container(
              width: ScreenConfig.screenWidth,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: CachedNetworkImageProvider(
                      sliderDummyData[index]["image_url"]),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
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
                    text: sliderDummyData[_currentIndex]["title"],
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
                      sliderDummyData.length,
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
